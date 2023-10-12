\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##f
    print-page-number = ##t
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

  \tocItem \markup "Предговор към второто издание"
  \markup \fontsize  #+3.0 { \fill-line \bold {"ПРЕДГОВОР КЪМ ВТОРОТО ИЗДАНИЕ"} }

  \markup \fontsize #+2.5 {
    \vspace #1.5 \override #'(baseline-skip . 2.7)
    \justify {

      Настоящият сборник съдържа песни и инструментални
      творби от духовния учител Петър Константинов Дънов – Беинса
      Дуно (1864–1944), основоположник на Духовно общество Бяло
      Братство в България, и от негови ученици.
    }
  }
  \markup \fontsize #+2.5 {
    \vspace #0.9  \override #'(baseline-skip . 2.7)
    \justify {

      За база на това издание служи сборникът \italic"Песни" \italic"от" \italic"Учителя,"
      отпечатан през 1949 г. в София под редакцията на Мария
      Тодорова. Използвани са още и сборниците: \italic"Песни" \italic"на" \italic"Всемирното"
      \italic"Братство" (1921–22),  \italic"Песни" \italic"от" \italic"Учителя," (1938, 1944) и \italic"Братски"
      \italic"песни" (1941).
    }
  }

  \markup \fontsize #+2.5 {
    \vspace #0.9  \override #'(baseline-skip . 2.7)
    \justify {

      За първи път се публикуват шестнадесет творби от Учителя
      и шест текста към негови мелодии и теми. Включени са и десет
      песни на негови ученици, непубликувани в изданието от 1949
      г., но имащи присъствие в музикалния живот на Общество Бяло
      Братство.
    }
  }
  \markup \fontsize #+2.5 {
    \vspace #0.9  \override #'(baseline-skip . 2.7)
    \justify {

      Направени са необходимите корекции на метроритмичната
      организация, съответстващи на строежа на музикалната мисъл.
      Редакцията е осъществена с възможното максимално спазване на
      принципа на класическата прозодия (рrоs – според, оdе – напев)
      за съвпадане на силно музикално време със силна (тежка) сричка
      от текста. Поставени са метрономни темпа, като са използвани
      сведения от изтъкнати братски музиканти – Филип Стоицев,
      Ирина Кисьова, Мария Златева, Катя Грива. Коментарът към
      песните следва изданието от 1949 г., но е съответно коригиран и
      допълнен с нова информация.
    }
  }



  \markup \fontsize #+3 \raise #0 \override #'(baseline-skip . 2.7) {
    \column {

      \fill-line { "" ""  \italic {"Благовест Жеков  "} }
      \fill-line { "" ""  \italic {"София, 1999 г.  "} }
    }
  }


} % bookpart



% Più mosso
% „Weiße Bruderschaft“

