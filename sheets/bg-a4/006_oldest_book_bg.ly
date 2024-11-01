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
      \if \should-print-page-number \abs-fontsize #9 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #9 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 2.5\cm
    right-margin = 2.5\cm
    top-margin = 1.5\cm
    bottom-margin = 2.5\cm
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

  \header {
    tagline = ##f
  }

  \markup \abs-fontsize #12  { {  \vspace #14.5 } }

  \markup \abs-fontsize #12 { \vspace #19.5 \italic{Когато природата се обновява, птичките пеят.}}

  \markup \abs-fontsize #12 { \vspace #1.0 \italic{В началото на всяка Божествена култура хората пеят.}}

  \markup \abs-fontsize #12 { \vspace #1.0 \italic{Когато светът се пресъздава, ангелите пеят.}}

  \markup \abs-fontsize #12 { \vspace #1.0 \hspace #30.0 \italic{(Из най-старата книга на света)}}

  \markup \abs-fontsize #12 { \vspace #2.5 \italic{ \justify-string " Път, Истина и живот – това са трите основни тона на идеалната хармония, която съществува във вселената. Върху нея се гради разумният живот."}}

  \markup \abs-fontsize #12 { \vspace #2.5 \italic{\justify-string "Мелодията е музикалният идеен зов на човешката душа към Бога. Хармонията е отговорът на Бога." }}





} % bookpart

% Più mosso
%