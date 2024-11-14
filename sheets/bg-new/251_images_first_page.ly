\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##t


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }


  \label #'ref251
  \tocItem \markup "Архивни снимки"
  \markup \abs-fontsize #16 { \fill-line {"Архивни снимки"} }

  \markup { {  \vspace #1 } }


  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #65 #"../../img/music_5.eps"
    }
  }
  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Архивна снимка „Песен на светлия път“"} }

  \markup { {  \vspace #1.5 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #65 #"../../img/music_2.eps"
    }
  }
  \markup { {  \vspace #0.4 } }

  \markup \abs-fontsize #11 { \fill-line  {"Архивна снимка с песента „На Учителя покорен“"} }


} % bookpart

% Più mosso
%