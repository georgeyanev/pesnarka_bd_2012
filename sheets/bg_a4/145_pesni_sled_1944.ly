\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref145
  \tocAct \markup { "Песни, мелодии и теми, непубликувани до 1944 г."}
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

  \markup { {  \vspace #13.2 } }

  \markup \fontsize  #+7 { \fill-line \bold {"ПЕСНИ, МЕЛОДИИ И"} }
  \markup { {  \vspace #0.3 } }
  \markup \fontsize  #+7 { \fill-line \bold {"ТЕМИ ОТ УЧИТЕЛЯ,"} }
  \markup { {  \vspace #0.3 } }
  \markup \fontsize  #+7 { \fill-line \bold {"непубликувани до 1944 г."} }



  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%