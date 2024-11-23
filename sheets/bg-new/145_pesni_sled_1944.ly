\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \tocAct \markup"Песни, мелодии и теми, непубликувани до 1944 г."
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
    print-all-headers = ##f
    print-page-number = ##f
      first-page-number = #129

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

  \markup \abs-fontsize #20 { \fill-line {"Песни, мелодии и теми, "} }
  \markup { {  \vspace #0.5 } }
  \markup \abs-fontsize #20 { \fill-line {"непубликувани до 1944 г."} }

  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%