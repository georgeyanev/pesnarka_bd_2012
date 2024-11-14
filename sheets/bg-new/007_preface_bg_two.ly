\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##f
    page-number-type = #'roman-upper


    % put page numbers on the bottom
    oddHeaderMarkup = \markup {

      \fill-line {
        """"
        \if \should-print-page-number  \abs-fontsize #9 {
          \fromproperty #'page:page-number-string

        }
      }
    }
    evenHeaderMarkup = \markup {

      \fill-line {
        \if \should-print-page-number \abs-fontsize #9 {
          \fromproperty #'page:page-number-string
          ""
        }
      }
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

  \tocItem \markup "Предговор към второто издание"
  \markup \abs-fontsize #15  { \fill-line {"Предговор към второто издание"} }

  \markup \abs-fontsize #11 {
    \vspace #1.5  \override #'(baseline-skip . 3.4)
    \justify {

      Настоящият сборник съдържа песни и инструментални
      творби от духов- ния учител Петър Константинов Дънов – Беинса
      Дуно (1864 – 1944), основоположник на Духовно общество Бяло
      Братство в България, и от негови ученици.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      За база на това издание служи сборникът \italic"Песни" \italic"от" \italic"Учителя,"
      отпечатан през 1949 г. в София под редакцията на Мария
      Тодорова. Използвани са още и сборниците: \italic"Песни" \italic"на" \italic"Всемирното"
      \italic"Братство" (1921–1922),  \italic"Песни" \italic"от" \italic"Учителя," (1938, 1944) и \italic"Братски"
      \italic"песни" (1941).
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      За първи път се публикуват шестнадесет творби от Учителя
      и шест текста към негови мелодии и теми. Включени са и десет
      песни на негови ученици, непубликувани в изданието от 1949
      г., но имащи присъствие в музикалния живот на Общество Бяло
      Братство.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Направени са необходимите корекции на метроритмичната
      органи- зация, съответстващи на строежа на музикалната мисъл.
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



  \markup \abs-fontsize #11 \raise #0 \override #'(baseline-skip . 3.4) {
    \column {
      \line {"  "}
      \line {"  "}
      \fill-line { "" ""  \italic {"Благовест Жеков  "} }
      \fill-line { "" ""  \italic {"София, 1999 г.       "} }
    }
  }


} % bookpart



% Più mosso
% „Weiße Bruderschaft“
