\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref145
  \tocAct \markup { "NACH 1944 VERÖFFENTLICHTE LIEDER"}
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

  \markup { {  \vspace #11.2 } }

  \markup \fontsize  #+6 { \fill-line \bold {"NACH 1944"} }

  \markup { {  \vspace #0.2 } }

  \markup \fontsize  #+6 { \fill-line \bold {"VERÖFFENTLICHTE LIEDER"} }



  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%