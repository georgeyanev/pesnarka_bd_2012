\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \paper {
    print-all-headers = ##t
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

  \markup \abs-fontsize #11  { {  \vspace #10.5 } }

  \markup \abs-fontsize #11 { \vspace #19.5 \italic{Когато природата се обновява, птичките пеят.}}

  \markup \abs-fontsize #11 { \vspace #1.0 \italic{В началото на всяка Божествена култура хората пеят.}}

  \markup \abs-fontsize #11 { \vspace #1.0 \italic{Когато светът се пресъздава, ангелите пеят.}}

  \markup \abs-fontsize #11 { \vspace #1.0 \hspace #30.0 \italic{(Из най-старата книга на света)}}

  \markup \abs-fontsize #11 { \vspace #2.5 \italic{ \justify-string " Път, Истина и живот – това са трите основни тона на идеалната хармония, която съществува във вселената. Върху нея се гради разумният живот."}}

  \markup \abs-fontsize #11 { \vspace #2.5 \italic{\justify-string "Мелодията е музикалният идеен зов на човешката душа към Бога. Хармонията е отговорът на Бога." }}





} % bookpart

% Più mosso
%