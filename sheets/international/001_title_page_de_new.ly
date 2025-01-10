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






  \markup \abs-fontsize #15   {  \fill-line {\bold {"Petar Danov"} }}



  \markup \fontsize  #+2  { {  \vspace #0.8 } }


  \markup \abs-fontsize #24  {  \fill-line {\bold {"Lieder"} }}

  \markup \fontsize  #+2  { {  \vspace #12 } }


  \markup \fontsize  #+2  { {  \vspace #.5 } }
  \markup \abs-fontsize #11 {  \fill-line {"Übersetzt, herausgegeben"} }
  \markup \fontsize  #+2  { {  \vspace #0.1 } }
  \markup \abs-fontsize #11 {  \fill-line {"und mit einem Vorwort versehen von"} }
  \markup \fontsize  #+2  { {  \vspace #0.1 } }
  \markup \abs-fontsize #11 { \fill-line {"Maria Kireva"} }
  \markup \fontsize  #+2  { {  \vspace #3.1 } }
  \markup \abs-fontsize #11 {  \fill-line {"Buglarisch – Deutsch"} }



  \markup \fontsize  #+2  { {  \vspace #17 } }

  \markup \abs-fontsize #13 {  \fill-line {"Verlag „Domisol“ "} }
  \markup \fontsize  #+2.5  { {  \vspace #0.5 } }
  \markup {
    \hspace #-1
    \fill-line
    \general-align #Y #DOWN {
      \epsfile #X #9 #"../../img/logowi.eps"
    }
    \hspace #0.1
  }






} % bookpart

% Più mosso
%