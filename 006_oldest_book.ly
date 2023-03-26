\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
    \label #'ref006
  \tocItem \markup "Aus dem ältesten Buch"
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


  \markup \fontsize  #+2.5 { \vspace #19.5 \italic{Wenn die Natur sich erneuert,  singen die Vögel.}}

  \markup \fontsize  #+2.5 { \vspace #1.0 \italic{Am Anfang jeder göttlicher Kultur singen die Menschen.}}

  \markup \fontsize  #+2.5 { \vspace #1.0 \italic{Wenn die Welt wieder erschaffen wird, dann singen die Engel.}}

  \markup \fontsize  #+2.5 { \vspace #2.5 \italic{ \justify-string " Der Weg, die Wahrheit und das Leben – das sind die ersten Grundtöne der ideellen Harmonie, die im Kosmos existiert. Auf sie gründet das vernünftige Leben."}}

  \markup \fontsize  #+2.5 { \vspace #2.5 \italic{\justify-string " Die Melodie ist der musikalische, ideelle Ruf der menschlichen Seele zu Gott. Die Harmonie ist die Antwort Gottes." }}

  \pageBreak

  

} % bookpart

% Più mosso
%
