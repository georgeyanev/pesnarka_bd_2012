\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  
   \tocAct \markup"ANHANG"
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
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  }

  \markup { {  \vspace #16.2 } }

 \markup \abs-fontsize #15 { \fill-line \bold {"ANHANG"} }

  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%