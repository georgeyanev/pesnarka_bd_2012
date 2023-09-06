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

  \markup { {  \vspace #1.5 } }
  \markup \fontsize  #+2.5 { \fill-line \bold {"PETAR DANOV"} }

  \markup { {  \vspace #0.5 } }

  \markup \fontsize  #+6 { \fill-line \bold {"LIEDERBUCH"} }
  \markup  { {  \vspace #0.2 } }
  \markup \fontsize  #1.5 { \fill-line {"Bulgarisch-Deutsch"} }
  \markup { {  \vspace #4.5 } }
  \markup {
    \vspace #21.5
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #13 #"./img/logo_large.eps"
    }
  }
  \markup { {  \vspace #0.5 } }

  \markup \fontsize  #+2.5  { \fill-line {"Verlag Bjalo Bratstvo"} }
  \markup { {  \vspace #0.2 } }
  \markup \fontsize  #+2.5  { \fill-line {"Sofia 2023"} }


  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%