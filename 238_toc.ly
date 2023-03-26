\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##f
    print-page-number = ##f
    print-first-page-number = ##f

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  
    tocTitleMarkup = \markup \fontsize  #+6.5 \bold \column {
      \fill-line { \null "Съдържание" \null }
      \null
    }

    tocItemMarkup = \markup \fontsize  #+3.5 \fill-line {
      \fromproperty #'toc:text \tocItemWithDotsMarkup \fromproperty #'toc:page 
    }  

    tocActMarkup = \markup \large \column {
      \hspace #1
      \fill-line { \null \italic \fromproperty #'toc:text \null }
      \hspace #1
    }    
  }


  \label #'markA
  \tocItem \markup "Alabala"
  \markup \fontsize #+5 Alabala
  
  \pageBreak
  
  \tocItem \markup "Niica"
  \markup \fontsize #+5 Niica
  
  \pageBreak 
  
  \tocItem \markup "Turska paniica"
  \markup \fontsize #+5 "Turska paniica"

  \tocAct \markup "Vtora Chast"

  \tocItem \markup "Ai giti vancho"
  \markup \fontsize #+5 "Ai giti vancho"
  \tocItem \markup "Nash kapitancho"
  \markup \fontsize #+5 "Nash kapitancho"

  \markup { Mark A is on page \page-ref #'markA "0" "?" }

  \pageBreak
  \markuplist \table-of-contents

} % bookpart

