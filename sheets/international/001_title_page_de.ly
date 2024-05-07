\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    #(set-paper-size "a5")
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






  \markup \fontsize  #+4.6  {\hspace #43 \bold {"Petar Danov"} }

  \markup {  \vspace #9.5 }
  \markup {
    \hspace #43
    \column {
      \override #'(thickness . 1.5)
      \override #'(span-factor . 2/5)
      \draw-hline

    }
  }

  \markup \fontsize  #+2  { {  \vspace #0.2 } }


  \markup \fontsize  #+8.3 { \hspace #43 \bold {"LIEDERBUCH"} }

  \markup \fontsize  #+2  { {  \vspace #2.8 } }

  \markup {
    \hspace #43
    \column {
      \vspace #5.5
      \override #'(thickness . 1.5)
      \override #'(span-factor . 2/5)
      \draw-hline

    }
  }

  \markup \fontsize  #+2  { {  \vspace #.5 } }
  \markup \fontsize  #+2.8 {\hspace #43 {"Herausgegeben von"} }
  \markup \fontsize  #+2  { {  \vspace #0.1 } }
  \markup \fontsize  #+1.7 { \hspace #43 {"Maria Kireva" \concat { \raise #-1.1 \fontsize #6 "·" } "Reihard Ridder" } }



  \markup \fontsize  #+2  { {  \vspace #16 } }

  \markup \fontsize  #+3.5 {\hspace #43 {"Verlag „Bjalo Bratstvo“ "} }
  \markup \fontsize  #+2.5  { {  \vspace #0.5 } }
  \markup {
    \hspace #-1
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #9 #"../../img/logo_large.eps"
    }
    \hspace #0.1
  }



  \markup {
    \hspace #43
    \column {
      \override #'(thickness . 1.5)
      \override #'(span-factor . 2/5)
      \draw-hline

    }
  }





} % bookpart

% Più mosso
%