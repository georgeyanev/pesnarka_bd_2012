#!/usr/bin/env python3
import os
import re
import subprocess
from pathlib import Path

def get_pdf_page_count(pdf_path):
    """Get the number of pages in a PDF file using pdfinfo."""
    try:
        result = subprocess.run(['pdfinfo', pdf_path], capture_output=True, text=True)
        match = re.search(r'Pages:\s+(\d+)', result.stdout)
        if match:
            return int(match.group(1))
    except Exception as e:
        print(f"Error getting page count for {pdf_path}: {e}")
    return 0

def update_ly_file(ly_path, start_page):
    """Update the first-page-number in a Lilypond file."""
    with open(ly_path, 'r') as f:
        lines = f.readlines()

    paper_block_start = -1
    paper_block_end = -1
    has_first_page_number = False
    has_print_page_number = False
    has_print_first_page_number = False
    has_bookpart_level = False
    
    # Find the paper block
    for i, line in enumerate(lines):
        if '\\paper' in line and '{' in line:
            paper_block_start = i
        elif paper_block_start >= 0 and '}' in line:
            paper_block_end = i
            break
    
    if paper_block_start >= 0:
        # Paper block exists, update or add settings
        for i in range(paper_block_start, paper_block_end + 1):
            line = lines[i]
            if 'first-page-number' in line:
                lines[i] = f'      first-page-number = #{start_page}\n'
                has_first_page_number = True
            elif 'print-page-number' in line:
                has_print_page_number = True
            elif 'print-first-page-number' in line:
                has_print_first_page_number = True
            elif 'bookpart-level-page-numbering' in line:
                has_bookpart_level = True
                # Remove any duplicate entries
                if line.strip() != 'bookpart-level-page-numbering = ##t':
                    lines[i] = '      bookpart-level-page-numbering = ##t\n'
        
        # Add any missing settings right after \paper {
        new_lines = []
        if not has_first_page_number:
            new_lines.append(f'      first-page-number = #{start_page}\n')
        if not has_print_page_number:
            new_lines.append('      print-page-number = ##t\n')
        if not has_print_first_page_number:
            new_lines.append('      print-first-page-number = ##t\n')
        if not has_bookpart_level:
            new_lines.append('      bookpart-level-page-numbering = ##t\n')
        
        if new_lines:
            lines.insert(paper_block_start + 1, ''.join(new_lines))
    else:
        # No paper block found, add one before the first score
        paper_block = f'''\\paper {{
      first-page-number = #{start_page}
      print-page-number = ##t
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
}}

'''
        score_pos = -1
        for i, line in enumerate(lines):
            if '\\score' in line:
                score_pos = i
                break
        
        if score_pos >= 0:
            lines.insert(score_pos, paper_block)
        else:
            # If no score found, add at the beginning
            lines.insert(0, paper_block)
    
    # Clean up any duplicate settings
    i = 0
    while i < len(lines):
        if i > 0 and 'bookpart-level-page-numbering' in lines[i] and 'bookpart-level-page-numbering' in lines[i-1]:
            lines.pop(i)
        elif i > 0 and 'first-page-number' in lines[i] and 'first-page-number' in lines[i-1]:
            lines.pop(i)
        else:
            i += 1
    
    with open(ly_path, 'w') as f:
        f.writelines(lines)

def compile_and_get_pages(ly_file, script_dir):
    """Compile a LilyPond file and get its page count."""
    try:
        # Clean up any existing PDF
        pdf_file = ly_file.with_suffix('.pdf')
        if pdf_file.exists():
            pdf_file.unlink()
        
        # Compile the file
        result = subprocess.run(['lilypond', ly_file.name], 
                              cwd=script_dir, 
                              capture_output=True,
                              text=True)
        
        if result.returncode != 0:
            print(f"Error compiling {ly_file.name}:")
            print(result.stderr)
            return 0
        
        # Get page count
        pages = get_pdf_page_count(pdf_file)
        if pages == 0:
            print(f"Warning: Got 0 pages for {ly_file.name}")
        return pages
    except Exception as e:
        print(f"Error processing {ly_file.name}: {e}")
        return 0

def main():
    # Get the directory containing this script
    script_dir = Path(__file__).parent
    
    # Get all .ly files in the directory
    ly_files = sorted([f for f in script_dir.glob('*.ly') 
                      if not f.name.startswith('include') and
                         f.name >= '016_zorata_na_noviya_zhivot.ly'])
    
    current_page = 2  # Start at page 2 for 016_zorata_na_noviya_zhivot.ly
    
    for ly_file in ly_files:
        print(f"\nProcessing {ly_file.name}...")
        print(f"Setting start page to {current_page}")
        
        # Update the Lilypond file with the current page number
        update_ly_file(ly_file, current_page)
        
        # Compile and get page count
        pages = compile_and_get_pages(ly_file, script_dir)
        print(f"{ly_file.name}: starts at page {current_page}, has {pages} pages")
        
        # Update the current page number for the next file
        if pages > 0:
            current_page += pages
        else:
            print(f"Warning: Skipping page count update for {ly_file.name} due to compilation error")

if __name__ == '__main__':
    main()
