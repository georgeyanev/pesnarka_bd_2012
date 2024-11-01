\version "2.24.4"

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
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


  }


  \label #'ref251
  \tocItem \markup "Архивни снимки"
  \markup \abs-fontsize #16 { \fill-line {"Архивни снимки"} }

  \markup { {  \vspace #1 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #85 #"../../img/music_7.eps"
    }
  }
  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Учителя Петър Дънов с цигулка в ръка"} }


  \markup { {  \vspace #1.5 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #80 #"../../img/music_3.eps"
    }
  }

  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Учителя Петър Дънов обяснава"} }

  \pageBreak

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #70 #"../../img/music_5.eps"
    }
  }
  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Архивна снимка „Песен на светлия път“"} }

  \markup { {  \vspace #1.5 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #75 #"../../img/music_1.eps"
    }
  }
  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Архивна снимка с музикално упражнение"} }

  \pageBreak



  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #85 #"../../img/music_2.eps"
    }
  }
  \markup { {  \vspace #0.4 } }

  \markup \abs-fontsize #11 { \fill-line  {"Архивна снимка с песента „На Учителя покорен“"} }


  \markup { {  \vspace #1.5 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #85 #"../../img/music_6.eps"
    }
  }



  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Ръкопис на Пеньо Ганев на песента „Песен на житното зърно“"} }

  \pageBreak




  %   \pageBreak
  %  \markup { {  \vspace #5 } }
  %   \markup {
  %     \fill-line
  %     \general-align #Y #DOWN {
  %       \epsfile #X #85 #"../../img/liliana3.eps"
  %     }
  %   }

  %   \markup { {  \vspace #0.1 } }

  %   \markup \abs-fontsize #11 { \fill-line  {"Учителя Петър Дънов на Изгрева с"} }
  %   \markup { {  \vspace #0.1 } }

  %   \markup \abs-fontsize #11 { \fill-line  {"Лилиана Табакова и Кръстьо Христов"} }


  %   \pageBreak

  %   \markup { {  \vspace #8 } }

  %   \markup {
  %     \fill-line
  %     \general-align #Y #DOWN {
  %       \epsfile #X #85 #"../../img/music-pen.eps"
  %     }
  %   }

  %   \markup { {  \vspace #0.1 } }

  %   \markup \abs-fontsize #11 { \fill-line  {"Музикален пентаграм, даден на Лилиана Табакова"} }


  % include foreign translation(s) of the song
  %


} % bookpart

% Più mosso
%