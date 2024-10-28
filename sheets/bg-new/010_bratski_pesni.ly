\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \tocAct \markup"Братски песни"
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

  \markup { {  \vspace #18 } }

  \markup \abs-fontsize #20 { \fill-line {"Братски песни"} }

  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%