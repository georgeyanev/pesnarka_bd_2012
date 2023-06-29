\version "2.24.1"

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


  \markup \fontsize  #+2.5  {\bold {  \hspace #26  \vspace #3.5 PETAR DANOV} }



  \markup \fontsize  #+7.5  {\bold {  \hspace #23  \vspace #1.5 LIEDERBUCH} }

  \markup \fontsize  #+2.5  { {  \hspace #26  \vspace #1.5 Bulgarisch-Deutsch} }

    \markup {   
      \vspace #21.5
      \hspace #26
      \general-align #Y #DOWN { 
        \epsfile #X #13 #"./img/logo_large.eps"
      }
    }

     \markup \fontsize  #+2.5  { {  \hspace #24  \vspace #1.5 Verlag Bjalo Bratstvo} }
     \markup \fontsize  #+2.5  { {  \hspace #28  \vspace #0.7 Sofia 2023} }


  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%