\version "2.24.2"

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






  \markup \fontsize  #+5.5 {\hspace #25 \bold {"Петър Дънов"} }

  \markup {  \vspace #5.5 }
  \markup {
    \column {
      \override #'(thickness . 2)
      \override #'(span-factor . 1/2)
      {\hspace #20 {\draw-hline }}

    }
  }

  \markup \fontsize  #+2  { {  \vspace #0.2 } }


  \markup \fontsize  #+7 { \hspace #25 \bold {"Песни от Учителя"} }
  \markup \fontsize  #+2.5  { {  \vspace #0.5 } }
  \markup \fontsize  #+2 {\hspace #25 {"Издадени от"} }
  \markup \fontsize  #+2  { {  \vspace #0.1 } }
  \markup \fontsize  #+2 { \hspace #25  {"Петър Ганев"} }
  \markup \fontsize  #+2  { {  } }

  \markup {
     \column {}
    \column {
      \override #'(thickness . 2)
      \override #'(span-factor . 1/2)
       \draw-hline 

    }
  }


  \markup {
    \vspace #14.5
    \hspace #1
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #8 #"../../img/logo_large.eps"
    }
  }

  \markup \fontsize  #+2.5  { {  \vspace #1.5 } }
  \markup \fontsize  #+2 {\hspace #25 {"Издателство Бяло Братство"} }



  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%