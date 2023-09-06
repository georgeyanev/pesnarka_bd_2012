\version "2.24.2"

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

  \markup \fontsize  #+3.5 { \fill-line \bold {"Учителя Петър Дънов"} }


  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+5.5 { \fill-line \bold {"Песни от Учителя"} }
  \markup { {  \vspace #0.1 } }
  \markup \fontsize  #+2.0 { \fill-line \italic {"Четвърто преработено и допълнено издание"} }

  \markup { {  \vspace #2.0 } }


  \markup \fontsize  #+3.5 { \fill-line \bold {"Редактор" }}
  \markup \fontsize  #+3.0 { \fill-line {"Петър Ганев"} }
  \markup { {  \vspace #1.0 } }
  \markup \fontsize  #+3.5 { \fill-line \bold {"Съставители"} }
  \markup \fontsize  #+2.5 { \fill-line  {"Георги Стратев, Йоанна Стратева, Станка Желева,"} }
  \markup \fontsize  #+2.5 { \fill-line {"Пенка Кадиева и Петър Ганев"} }
  \markup { {  \vspace #1.0 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Коректор на нотния текст"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Райнхард Риддер"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Редактор на лиричния текст"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Н.Н."} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+2 { \fill-line \bold {"Компютърен дизайн"} }
  \markup \fontsize  #+1.5 { \fill-line  {"Мария Кирева, Георги Янев"} }
  \markup { {  \vspace #0.5 } }
  \markup \fontsize  #+1.5 { \fill-line \bold {"Издателство Бяло Братство"} }
  \markup \fontsize  #+1.5 { \fill-line  {"izdatelstvo.bratstvo@gmail.com"} }
  \markup \fontsize  #+1.5 { \fill-line  {"www.bialobratstvo.bg"} }



  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%