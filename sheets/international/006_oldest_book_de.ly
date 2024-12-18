\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##f


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }


  \markup {  \vspace #18 }

  \markup \abs-fontsize #11 { \vspace #19.5 \italic{Wenn die Natur sich erneuert,  singen die Vögel.}}

  \markup \abs-fontsize #11 { \vspace #1.5 \italic{Am Anfang jeder göttlicher Kultur singen die Menschen.}}

  \markup \abs-fontsize #11 { \vspace #1.5 \italic{Wenn die Welt wieder erschaffen wird, dann singen die Engel.}}


  \markup \abs-fontsize #11 { \vspace #1.5 \hspace #30.0 \italic{(Aus dem ältesten Buch der Welt)}}

  \markup \abs-fontsize #11 { \vspace #3.5 \italic{ \justify-string " Der Weg, die Wahrheit und das Leben – das sind die ersten Grundtöne der ideellen Harmonie, die im Kosmos existiert. Auf sie gründet das vernünftige Leben."}}

  \markup \abs-fontsize #11 { \vspace #3.5 \italic{\justify-string " Die Melodie ist der musikalische, ideelle Ruf der menschlichen Seele zu Gott. Die Harmonie ist die Antwort Gottes." }}





} % bookpart

% Più mosso
%
