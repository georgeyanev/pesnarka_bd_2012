\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##f
    % page-number-type = #'roman-upper


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
    top-markup-spacing.basic-distance = 8\mm
    top-system-spacing.basic-distance = 10\mm

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  
  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      В Школата на Бялото Братство музиката е едно от най-могъщите средства за духовна работа.
      Затова всяко от предлаганите упражнения със своята мелодия и ритъм оказва въздействие върху
      слушателя. То докосва определени струни в душата и поощрява
      духовната дейност в определена посока.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Както всичко, което Учителя дава в работата си със своите
      ученици, така и тези песни имат характерна окраска на голяма,
      неподдаваща се на анализ самобитност, подходяща за високите
      задачи на Новото учение – кълн от предвечната Истина –, което тук,
      у нас, в лицето на Учителя е намерило оригинално превъплъщение.
      Неговият стожер е святата Христова дума \italic"Любов."
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Песните в този сборник имат и друго интимно и загадъчно
      съдържание, което още по-малко подлежи на обикновена
      музикална преценка, защото предназначението им съществено се
      различава от това на останалите песни.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Четците и любителите на тоя вид музика, присъствали при
      раждането на тези песни (а те не са малко, защото Учителя, както
      бе споменато по-горе, пееше или свиреше на своята цигулка
      по време на някоя утринна беседа), са доловили най-добре
      вътрешната психологична причина за тяхното появяване и прякото
      им въздействие върху себе си. Те са свидетели как Словото става
      песен, приобщило всички, които съзнателно вървят по пътя на
      ученичеството към изобилния Живот.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Известно е, че хората по различен начин разбират и оценяват
      дадена творба, но онези, които познават кротката радост на Духа,
      са оценили песните на Учителя най-дълбоко и ги носят като скъп
      дар в своите сърца.


    }
  }



  \markup \abs-fontsize #11 \raise #0 \override #'(baseline-skip . 3.4) {
    \column {
      \line {"  "}
      \fill-line { "" ""  \italic {"София, 1949 г.  "} }
    }
  }



} % bookpart



% Più mosso
% „Weiße Bruderschaft“