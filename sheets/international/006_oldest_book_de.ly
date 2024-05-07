\version "2.24.3"

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
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


  }

  \markup {  \vspace #13.5 }

  \markup \abs-fontsize #10 { \vspace #19.5 \italic{Wenn die Natur sich erneuert,  singen die Vögel.}}

  \markup \abs-fontsize #10 { \vspace #1.5 \italic{Am Anfang jeder göttlicher Kultur singen die Menschen.}}

  \markup \abs-fontsize #10 { \vspace #1.5 \italic{Wenn die Welt wieder erschaffen wird, dann singen die Engel.}}


  \markup \abs-fontsize #10 { \vspace #1.5 \hspace #30.0 \italic{(Aus dem ältesten Buch der Welt)}}

  \markup \abs-fontsize #10 { \vspace #3.5 \italic{ \justify-string " Der Weg, die Wahrheit und das Leben – das sind die ersten Grundtöne der ideellen Harmonie, die im Kosmos existiert. Auf sie gründet das vernünftige Leben."}}

  \markup \abs-fontsize #10 { \vspace #3.5 \italic{\justify-string " Die Melodie ist der musikalische, ideelle Ruf der menschlichen Seele zu Gott. Die Harmonie ist die Antwort Gottes." }}





} % bookpart

% Più mosso
%
