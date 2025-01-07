\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
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



  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #75 #"../../img/music_6.eps"
    }
  }
  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Ръкопис на Пеньо Ганев на песента „Песен на житното зърно“"} }


  \markup { {  \vspace #1 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #70 #"../../img/mpenta.eps"
    }
  }

  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Грфика на музикалния пентаграм, направена от Лилиана Табакова"} }
  \pageBreak
  \markup { {  \vspace #3 } }

  \markup {
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #75 #"../../img/liliana3.eps"
    }
  }

  \markup { {  \vspace #0.1 } }

  \markup \abs-fontsize #11 { \fill-line  {"Учителя Петър Дънов, Цветана-Лилиана Табакова, Кръстьо Христов"} }




  % include foreign translation(s) of the song
  %


} % bookpart

% Più mosso
%