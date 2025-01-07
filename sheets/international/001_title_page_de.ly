\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    #(set-paper-size "c5")
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

  \markup {  \vspace #2.5 }






  \markup \abs-fontsize #15   {\hspace #35 \bold {"Petar Danov"} }

  \markup {  \vspace #9.5 }
  \markup {
    \hspace #35
    \column {
      \override #'(thickness . 1.5)
      \override #'(span-factor . 2/3)
      \draw-hline

    }
  }

  \markup \fontsize  #+2  { {  \vspace #0.5 } }


  \markup \abs-fontsize #22  { \hspace #35 \bold {"Lieder"} }

  \markup \fontsize  #+2  { {  \vspace #2.8 } }

  \markup {
    \hspace #35
    \column {
      \vspace #5.5
      \override #'(thickness . 1.5)
      \override #'(span-factor . 2/3)
      \draw-hline

    }
  }

  \markup \fontsize  #+2  { {  \vspace #.5 } }
  \markup \abs-fontsize #12 {\hspace #35 {"Herausgegeben von"} }
  \markup \fontsize  #+2  { {  \vspace #0.1 } }
  \markup \abs-fontsize #11 { \hspace #35 {"Maria Kireva" \concat { \raise #-1.1 \fontsize #6 "·" } "Reinhard Ridder" } }



  \markup \fontsize  #+2  { {  \vspace #19 } }

  \markup \abs-fontsize #13 {\hspace #35 {"Verlag „Domisol“ "} }
  \markup \fontsize  #+2.5  { {  \vspace #0.5 } }
  \markup {
    \hspace #-1
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #9 #"../../img/logowi.eps"
    }
    \hspace #0.1
  }



  \markup {
    \hspace #35
    \column {
      \override #'(thickness . 1.5)
      \override #'(span-factor . 2/3)
      \draw-hline

    }
  }





} % bookpart

% Più mosso
%