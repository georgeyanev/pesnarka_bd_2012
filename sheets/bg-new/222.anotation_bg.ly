\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
    print-all-headers = ##f
    print-page-number = ##f
      first-page-number = #225

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

  \markup { {  \vspace #3.0 } }

  \markup \fontsize  #+5 { \fill-line  {"Петър Дънов"} }

  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+7 { \fill-line  {"Песни от Учителя"} }
  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+2.5 { \fill-line \italic {"Четвърто преработено и допълнено издание"} }

  \markup { {  \vspace #3.0 } }

  \markup \fontsize  #+4.0 { \fill-line  {"Редактори" }}
  \markup \fontsize  #+3.5 { \hspace #26 {"Петър Ганев" \concat { \raise #-0.9 \fontsize #6 "·" } "Мария Кирева" } }
  \markup { {  \vspace #0.1 } }
  %\markup \fontsize  #+3.5 { \fill-line {"" } }
  \markup { {  \vspace #2.5 } }
  \markup \fontsize  #+3 { \fill-line  {"Консултанти"} }
  \markup \fontsize  #+2.5 { \fill-line  {"Иоана Стратева, Иво Бонев, Надежда Атанасова"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+3 { \fill-line  {"Набор на нотния текст и дизайн"} }
  \markup \fontsize  #+2.5 { \fill-line  {"Мария Кирева, Георги Янев"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+3 { \fill-line  {"Коректор на нотния текст"} }
  \markup \fontsize  #+2.5 { \fill-line  {"Райнхард Риддер"} }
  % \markup { {  \vspace #0.5 } }
  % \markup \fontsize  #+3 { \fill-line  {"Коректор на лиричния текст"} }
  % \markup \fontsize  #+2.5 { \fill-line  {"Стела Рускова"} }
  % \markup { {  \vspace #0.5 } }
  % \markup \fontsize  #+3 { \fill-line  {"Дизайн на корицата"} }
  % \markup \fontsize  #+2.5 { \fill-line  {"Стоил Вътев"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+3 { \fill-line  {"Издателство „Домисол“"} }

  %\markup \fontsize  #+2.5 { \fill-line  {"izdatelstvo.bratstvo@gmail.com"} }
  %\markup \fontsize  #+2.5 { \fill-line  {"www.bialobratstvo.bg"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2.5 { \fill-line  {"www.beinsasongs.eu"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2.5 { \fill-line {"София 2024"} }
  \markup { {  \vspace #2.5 } }
  \markup \fontsize  #+2.5 { \fill-line {"ISMN 979-0-9016674-5-7"}}
} % bookpart

% Più mosso
%