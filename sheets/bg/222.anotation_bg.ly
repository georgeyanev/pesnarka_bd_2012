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
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


  }

  \markup { {  \vspace #7.0 } }

  \markup \fontsize  #+4.5 { \fill-line \bold {"Учителя Петър Дънов"} }

  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+6.5 { \fill-line \bold {"Песни от Учителя"} }
  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+2.0 { \fill-line \italic {"Четвърто преработено и допълнено издание"} }

  \markup { {  \vspace #1.5 } }

  \markup \fontsize  #+3.5 { \fill-line \bold {"Редактор" }}
  \markup \fontsize  #+3.0 { \fill-line {"Петър Ганев"} }
  \markup { {  \vspace #2.0 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Консултант"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Иоана Стратева"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Коректор на нотния текст"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Райнхард Риддер"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Коректор на лиричния текст"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Стела Рускова"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Набор на нотния текст и дизайн"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Мария Кирева, Георги Янев"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+1.5 { \fill-line \bold {"Издателство „Бяло Братство“"} }

  \markup \fontsize  #+1.5 { \fill-line  {"izdatelstvo.bratstvo@gmail.com"} }
  \markup \fontsize  #+1.5 { \fill-line  {"www.bialobratstvo.bg"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+1.5 { \fill-line {"София 2024"} }
  \markup { {  \vspace #3.5 } }
  \markup \fontsize  #+2 { \fill-line  {"ISBN-10 954-744-076-4"}}



  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%