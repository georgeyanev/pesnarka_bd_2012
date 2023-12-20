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


  \markup \fontsize  #+4  {\bold {  \hspace #3  \vspace #19.8 Песни от Учителя} }

  \markup \fontsize  #+2  { {  \hspace #3  \vspace #0.6 \italic"Четвърто преработено и допълнено издание"} }

  \markup \fontsize  #+3.5  { \bold{  \hspace #3  \vspace #1.5 Редактор:} Петър Ганев }

  \markup \fontsize  #+3.5  { \bold{  \hspace #3  \vspace #1.5  Съставители:} }


  \markup \fontsize  #+2  { \hspace #5  \vspace #0.7 Георги Стратев}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.7 Иоана Стратева}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.6 Станка Желева}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.7 Пенка Кадиева}
  \markup \fontsize  #+2  { \hspace #5  \vspace #0.7 Петър Ганев}

   \markup \fontsize  #+3.5  {  \hspace #3  \vspace #1.5 ©  Издателство Бяло Братство, София 2024 }

  \markup \fontsize  #+2.5  { \hspace #3  \vspace #1.5  ISBN-10 954-744-076-4}




  % include foreign translation(s) of the song
  %

} % bookpart

% Più mosso
%