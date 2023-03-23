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

  
  }


  \markup \fontsize  #+2.5  {\bold {  \hspace #25  \vspace #3.5 BEINSA DUNO} }



  \markup \fontsize  #+8.5  {\bold {  \hspace #19  \vspace #1.5 LIEDERBUCH} }

  \markup \fontsize  #+2.5  { {  \hspace #25  \vspace #1.5 Bulgarisch-Deutsch} }


  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%