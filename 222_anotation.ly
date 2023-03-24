\version "2.24.0"

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

 \markup \fontsize  #+3.5  {\bold {  \hspace #27  \vspace #8.5 Petar Danov} }


 
 \markup \fontsize  #+5.0  {\bold {  \hspace #27  \vspace #1.0 Liederbuch} }


 \markup \fontsize  #+2.0  {{  \hspace #22 \vspace #1.0 Originaltitel:  Песни от Учителя} }
   \markup \fontsize  #+2.0  {{  \hspace #26 \vspace #0.5  Erste deutsche Ausgabe} }
  \markup \fontsize  #+2.0  {{  \hspace #15 \vspace #0.5  auf der Grundlage der bulgarischen Ausgabe von 2012} }
  \markup \fontsize  #+2.0  {{  \hspace #25 \vspace #0.5 Veröffentlicht in Bulgarien} }

   \markup \fontsize  #+4.0  {\bold {  \hspace #27  \vspace #3.0 Redaktion} }
      \markup \fontsize  #+3.0  { {  \hspace #27  \vspace #0.8 Peter Ganev} }

   \markup \fontsize  #+4.0  {\bold {  \hspace #23  \vspace #2.0 Zusammengestellt von} }
    \markup \fontsize  #+3.0  { {  \hspace #15  \vspace #0.8 Georgi Stratev, Ioana Strateva, Stanka Zheleva} }
     \markup \fontsize  #+3.0  { {  \hspace #22  \vspace #0.5 Penka Kadieva und Peter Ganev} }

     


  \markup \fontsize  #+3.0  {\bold {  \hspace #18  \vspace #2.0 Übersetzung aus dem Bulgarischen: }}
  
  
  \markup \fontsize  #+3.0  { {  \hspace #18  \vspace #0.5   Mariya Kireva, Klaudia Wittich-Harz}}
  
    \markup \fontsize  #+3.0  {\bold {  \hspace #28  \vspace #2.0   Layout: }}
  
  
  \markup \fontsize  #+3.0  { {  \hspace #26  \vspace #0.5   George Yanev}}
  
  \markup \fontsize  #+3.5  {\bold{  \hspace #20   \vspace #1.5 ISBN: } place the isbn later}




  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%