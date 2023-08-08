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


  \markup { {  \vspace #10.0 } }

  \markup \fontsize  #+3.5 { \fill-line \bold {"Petar Danov"} }


  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+5.5 { \fill-line \bold {"Liederbuch"} }
  \markup { {  \vspace #0.1 } }

  \markup \fontsize  #+2.0 { \fill-line {"Originaltitel:  Песни от Учителя"} }
  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+2.0 { \fill-line {" Erste deutsche Ausgabe"} }

  \markup \fontsize  #+2.0 { \fill-line {" auf der Grundlage der bulgarischen Ausgabe von 2012"} }
  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+2.0 { \fill-line {"Veröffentlicht in Bulgarien"} }
  \markup { {  \vspace #2.0 } }
  \markup \fontsize  #+3.5 { \fill-line \bold {" Redaktion"} }
  \markup \fontsize  #+3.0 { \fill-line {" Peter Ganev"} }

  \markup \fontsize  #+3.5 { \fill-line \bold {"Zusammengestellt von"} }
  \markup \fontsize  #+2.5 { \fill-line  {"Georgi Stratev, Ioana Strateva, Stanka Zheleva"} }
  \markup \fontsize  #+2.5 { \fill-line  {"Penka Kadieva und Peter Ganev"} }




  \markup \fontsize  #+3.0 { \fill-line \bold {"  Übersetzung aus dem Bulgarischen:" }}


  \markup \fontsize  #+1.5 { \fill-line  {" Mariya Kireva, Klaudia Wittich-Harz"}}

    \markup \fontsize  #+3.0 { \fill-line \bold {"  Deutsches Lektorat:" }}

   \markup \fontsize  #+3.0 { \fill-line \bold  {"  Layout:" }}


  \markup \fontsize  #+1.5 { \fill-line {"   George Yanev"}}

  \markup \fontsize  #+3.5  {\bold{  \hspace #20   \vspace #1.5 ISBN: } place the isbn later}




  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%