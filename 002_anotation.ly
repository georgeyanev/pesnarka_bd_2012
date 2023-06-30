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


  \markup \fontsize  #+3  {\bold {  \hspace #3  \vspace #15.8 LIEDERBUCH} }



  \markup \fontsize  #+2  { {  \hspace #3  \vspace #0.8 Originaltitel: Песни от Учителя} }
  \markup \fontsize  #+2 { {  \hspace #3  \vspace #0.8 Erste deutsche Ausgabe} }
  \markup \fontsize  #+2  { {  \hspace #3  \vspace #0.5 auf der Grundlage der bulgarischen Ausgabe von 2012} }
  \markup \fontsize  #+2 { {  \hspace #3  \vspace #0.5 Veröffentlicht in Bulgarien} }

  \markup \fontsize  #+3.5  { \bold{  \hspace #3  \vspace #1.5 Redaktion:} Peter Ganev }

  \markup \fontsize  #+2  { \bold{  \hspace #3  \vspace #1.5  Zusammengestellt von:} }

  \markup \fontsize  #+2  { \hspace #5  \vspace #0.5 Georgi Stratev}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.5 Ioana Strateva}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.5 Stanka Zheleva}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.5 Penka Kadieva}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.5 Peter Ganev}
  \markup \fontsize  #+2  {  \bold{  \hspace #3  \vspace #1.5  Übersetzung aus dem Bulgarischen: } Mariya Kireva}
  \markup \fontsize  #+2  {  \bold{  \hspace #3 \hspace #0.8 Deutsches Lektorat: } Klaudia Wittich-Harz}

  \markup \fontsize  #+2  {  \bold{  \hspace #3  \vspace #1.5  Layout: } George Yanev}
  \markup \fontsize  #+4.5  {\bold{  \hspace #3  \vspace #2.5 ISBN: } place the isbn later}




  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%