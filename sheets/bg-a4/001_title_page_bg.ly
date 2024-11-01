\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##f


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #9 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #9 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 2.5\cm
    right-margin = 2.5\cm
    top-margin = 1.5\cm
    bottom-margin = 2.5\cm
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

  \header {
    tagline = ##f
  }

  \markup {  \vspace #2.5 }






  \markup \fontsize  #+5 {\hspace #30 \bold {"Петър Дънов"} }

  \markup {  \vspace #6.5 }
  \markup {
    \hspace #30
    \column {
      \override #'(thickness . 1.5)
      \override #'(span-factor . 1/2)
      \draw-hline

    }
  }

  \markup \fontsize  #+2  { {  \vspace #0.2 } }


  \markup \fontsize  #+7.3 { \hspace #30 \bold {"Песни от Учителя"} }

  \markup {
    \hspace #30
    \column {
      \vspace #7
      \override #'(thickness . 1.5)
      \override #'(span-factor . 1/2)
      \draw-hline

    }
  }

  \markup \fontsize  #+2  { {  \vspace #.5 } }
  \markup \fontsize  #+2.5 {\hspace #30 {"Издадени от"} }
  \markup \fontsize  #+2  { {  \vspace #0.1 } }
  \markup \fontsize  #+1.5 { \hspace #30 {"Петър Ганев" \concat { \raise #-1.3 \fontsize #6 "·" } "Мария Кирева" } }



  \markup \fontsize  #+2  { {  \vspace #17 } }

  \markup \fontsize  #+3 {\hspace #30 {"Издателство „Домисол“ "} }
  \markup \fontsize  #+2.5  { {  \vspace #0.5 } }
  % \markup {
  %   \hspace #-1
  %   \fill-line
  %   \general-align #Y #DOWN {
  %     \epsfile #X #16 #"../../img/domisol.eps"
  %   }
  %   \hspace #0.5
  % }





  \markup {
    \hspace #30
    \column {
      \override #'(thickness . 1.5)
      \override #'(span-factor . 1/2)
      \draw-hline

    }
  }





} % bookpart

% Più mosso
%
