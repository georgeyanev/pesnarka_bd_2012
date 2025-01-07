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
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


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

  \markup {
    \hspace #-1
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #9 #"../../img/logowi.eps"
    }
    \hspace #0.5
  }





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
