\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \tocItem \markup "Азбучен показател"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
    print-all-headers = ##t
    print-page-number = ##f
      first-page-number = #228


    % put page numbers on the bottom
    oddHeaderMarkup = \markup {

      \fill-line {
        ""
        \if \should-print-page-number  \abs-fontsize #10 {
          \bold \fromproperty #'page:page-number-string

        }
      }
    }
    evenHeaderMarkup = \markup {

      \fill-line {
        \if \should-print-page-number \abs-fontsize #10 {
          \bold  \fromproperty #'page:page-number-string
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

  \markup \large \column {
    \fill-line { \null \abs-fontsize #16 "Азбучен показател" \null }
    \hspace #1
  }

  \markup \override #'(line-width . 42) \abs-fontsize #10 {
    \override #'(baseline-skip . 3) \column {
      \with-link #'ref137 \fill-with-pattern #1 #RIGHT . "А бре, синко" \page-ref #'ref137 "000" "?"
      \with-link #'ref171_2 \fill-with-pattern #1 #RIGHT . "Аз мога да дишам" \page-ref #'ref171_2 "000" "?"
      \with-link #'ref109 \fill-with-pattern #1 #RIGHT . "Аз смея да кажа" \page-ref #'ref109 "000" "?"
      \with-link #'ref047 \fill-with-pattern #1 #RIGHT . "Аз съм бялото кокиче" \page-ref #'ref047 "000" "?"
      \with-link #'ref135 \fill-with-pattern #1 #RIGHT . "Аин фаси" \page-ref #'ref135 "000" "?"
      \with-link #'ref064 \fill-with-pattern #1 #RIGHT . "Ангел вопияше" \page-ref #'ref064 "000" "?"
      \with-link #'ref075 \fill-with-pattern #1 #RIGHT . "Аум" \page-ref #'ref075 "000" "?"
      \with-link #'ref300 \fill-with-pattern #1 #RIGHT . "Бащина песен – Добрият момък" \page-ref #'ref300 "000" "?"
      \with-link #'ref138 \fill-with-pattern #1 #RIGHT . "Бащина песен – Угледна мома" \page-ref #'ref138 "000" "?"
      \with-link #'ref163 \fill-with-pattern #1 #RIGHT . "Берхан-Ази" \page-ref #'ref163 "000" "?"
      \with-link #'ref098 \fill-with-pattern #1 #RIGHT . "Бершид Ба" \page-ref #'ref098 "000" "?"
      \with-link #'ref074 \fill-with-pattern #1 #RIGHT . "Блага дума" \page-ref #'ref074 "000" "?"
      \with-link #'ref086_2 \fill-with-pattern #1 #RIGHT . "Благата песен" \page-ref #'ref086_2 "000" "?"
      \with-link #'ref024 \fill-with-pattern #1 #RIGHT . "Благославяй" \page-ref #'ref024 "000" "?"
      \with-link #'ref040 \fill-with-pattern #1 #RIGHT . "Благословен Господ" \page-ref #'ref040 "000" "?"
      \with-link #'ref072 \fill-with-pattern #1 #RIGHT . "Благост" \page-ref #'ref072 "000" "?"
      \with-link #'ref082 \fill-with-pattern #1 #RIGHT . "Бог е Любов" \page-ref #'ref082 "000" "?"
      \with-link #'ref166 \fill-with-pattern #1 #RIGHT . "Бог е Любов II" \page-ref #'ref166 "000" "?"
      \with-link #'ref206 \fill-with-pattern #1 #RIGHT . "Божията Любов ме озари" \page-ref #'ref206 "000" "?"
      \with-link #'ref020 \fill-with-pattern #1 #RIGHT . "Братство, единство" \page-ref #'ref020 "000" "?"
      \with-link #'ref120 \fill-with-pattern #1 #RIGHT . "Буря" \page-ref #'ref120 "000" "?"
      \with-link #'ref150 \fill-with-pattern #1 #RIGHT . "Българска идилия" \page-ref #'ref150 "000" "?"
      \with-link #'ref146 \fill-with-pattern #1 #RIGHT . "Българска рапсодия" \page-ref #'ref146 "000" "?"
      \with-link #'ref081 \fill-with-pattern #1 #RIGHT . "В зорите на живота" \page-ref #'ref081 "000" "?"
      \with-link #'ref080_1 \fill-with-pattern #1 #RIGHT . "В мрак тъмнота" \page-ref #'ref080_1 "000" "?"
      \with-link #'ref094 \fill-with-pattern #1 #RIGHT . "В начало бе Словото" \page-ref #'ref094 "000" "?"
      \with-link #'ref110_2 \fill-with-pattern #1 #RIGHT . "В пустинята на живота" \page-ref #'ref110_2 "000" "?"
      \with-link #'ref183 \fill-with-pattern #1 #RIGHT . "Вариации" \page-ref #'ref183 "000" "?"
      \with-link #'ref095 \fill-with-pattern #1 #RIGHT . "Вдъхновение" \page-ref #'ref095 "000" "?"
      \with-link #'ref076 \fill-with-pattern #1 #RIGHT . "Венир Бенир" \page-ref #'ref076 "000" "?"
      \with-link #'ref096 \fill-with-pattern #1 #RIGHT . "Весел ти бъди" \page-ref #'ref096 "000" "?"
      \with-link #'ref083_1 \fill-with-pattern #1 #RIGHT . "Вехади" \page-ref #'ref083_1 "000" "?"
      \with-link #'ref083_2 \fill-with-pattern #1 #RIGHT . "Вечер сутрин" \page-ref #'ref083_2 "000" "?"
      \with-link #'ref042 \fill-with-pattern #1 #RIGHT . "Време е да вървим" \page-ref #'ref042 "000" "?"
      \with-link #'ref100 \fill-with-pattern #1 #RIGHT . "Всичко в живота е постижимо" \page-ref #'ref100 "000" "?"
      \with-link #'ref200 \fill-with-pattern #1 #RIGHT . "Вътрешният глас на Бога" \page-ref #'ref200 "000" "?"
      \with-link #'ref170_1 \fill-with-pattern #1 #RIGHT . "Вяра светла I" \page-ref #'ref170_1 "000" "?"
      \with-link #'ref170_2 \fill-with-pattern #1 #RIGHT . "Вяра светла II" \page-ref #'ref170_2 "000" "?"
      \with-link #'ref190 \fill-with-pattern #1 #RIGHT . "Гласът на Живия Господ" \page-ref #'ref190 "000" "?"
      \with-link #'ref210 \fill-with-pattern #1 #RIGHT . "Господи, колко Те обичам" \page-ref #'ref210 "000" "?"
      \with-link #'ref078 \fill-with-pattern #1 #RIGHT . "Грее, грее" \page-ref #'ref078 "000" "?"
      \with-link #'ref174_1 \fill-with-pattern #1 #RIGHT . "Да бих Тe слушал" \page-ref #'ref174_1 "000" "?"
      \with-link #'ref110_1 \fill-with-pattern #1 #RIGHT . "Да имаш вяра" \page-ref #'ref110_1 "000" "?"
      \with-link #'ref092_2 \fill-with-pattern #1 #RIGHT . "Давай, давай" \page-ref #'ref092_2 "000" "?"

    }
    \hspace #2.6
    \override #'(baseline-skip . 3) \column {
      \with-link #'ref118_1 \fill-with-pattern #1 #RIGHT . "Денят иде" \page-ref #'ref118_1 "000" "?"
      \with-link #'ref182 \fill-with-pattern #1 #RIGHT . "Десет теми" \page-ref #'ref182 "000" "?"
      \with-link #'ref063 \fill-with-pattern #1 #RIGHT . "Дишай дълбоко" \page-ref #'ref063 "000" "?"
      \with-link #'ref253 \fill-with-pattern #1 #RIGHT . "Добрата молитва" \page-ref #'ref253 "000" "?"
      \with-link #'ref095_2 \fill-with-pattern #1 #RIGHT . "Добър ден" \page-ref #'ref095_2 "000" "?"
      \with-link #'ref116 \fill-with-pattern #1 #RIGHT . "До ще ден" \page-ref #'ref116 "000" "?"
      \with-link #'ref136 \fill-with-pattern #1 #RIGHT . "Духай, ветре" \page-ref #'ref136 "000" "?"
      \with-link #'ref161 \fill-with-pattern #1 #RIGHT . "Духай, ветре II" \page-ref #'ref161 "000" "?"
      \with-link #'ref079 \fill-with-pattern #1 #RIGHT . "Духът Божи" \page-ref #'ref079 "000" "?"
      \with-link #'ref101_2 \fill-with-pattern #1 #RIGHT . "Духът ми шепне това" \page-ref #'ref101_2 "000" "?"
      \with-link #'ref052 \fill-with-pattern #1 #RIGHT . "Дързост в Христа" \page-ref #'ref052 "000" "?"
      \with-link #'ref201 \fill-with-pattern #1 #RIGHT . "Една вечна Истина" \page-ref #'ref201 "000" "?"
      \with-link #'ref130 \fill-with-pattern #1 #RIGHT . "Езикът на живата природа" \page-ref #'ref130 "000" "?"
      \with-link #'ref176 \fill-with-pattern #1 #RIGHT . "Житно зърно" \page-ref #'ref176 "000" "?"
      \with-link #'ref041 \fill-with-pattern #1 #RIGHT . "За Небесния Цар" \page-ref #'ref041 "000" "?"
      \with-link #'ref097 \fill-with-pattern #1 #RIGHT . "Запали се огънят" \page-ref #'ref097 "000" "?"
      \with-link #'ref112_2 \fill-with-pattern #1 #RIGHT . "Зов на планината" \page-ref #'ref112_2 "000" "?"
      \with-link #'ref215 \fill-with-pattern #1 #RIGHT . "Зора на новия живот" \page-ref #'ref215 "000" "?"
      \with-link #'ref016 \fill-with-pattern #1 #RIGHT . "Зората на новия живот" \page-ref #'ref016 "000" "?"
      \with-link #'ref172 \fill-with-pattern #1 #RIGHT . "Играта на поточето" \page-ref #'ref172 "000" "?"
      \with-link #'ref056_1 \fill-with-pattern #1 #RIGHT . "Идват дни на радост" \page-ref #'ref056_1 "000" "?"
      \with-link #'ref177 \fill-with-pattern #1 #RIGHT . "Изворче" \page-ref #'ref177 "000" "?"
      \with-link #'ref030 \fill-with-pattern #1 #RIGHT . "Изгрей ти, мое слънце" \page-ref #'ref030 "000" "?"
      \with-link #'ref022 \fill-with-pattern #1 #RIGHT . "Изгрява вече ден тържествен" \page-ref #'ref022 "000" "?"
      \with-link #'ref071_1 \fill-with-pattern #1 #RIGHT . "Изгрява слънцето" \page-ref #'ref071_1 "000" "?"
      \with-link #'ref018 \fill-with-pattern #1 #RIGHT . "Излязъл е сеяч" \page-ref #'ref018 "000" "?"
      \with-link #'ref083_3 \fill-with-pattern #1 #RIGHT . "Имаше человек" \page-ref #'ref083_3 "000" "?"
      \with-link #'ref167_2 \fill-with-pattern #1 #RIGHT . "Кажи ми, светли Божи лъч" \page-ref #'ref167_2 "000" "?"
      \with-link #'ref211 \fill-with-pattern #1 #RIGHT . "Кажи ми, светли Божи лъч II" \page-ref #'ref211 "000" "?"
      \with-link #'ref086_1 \fill-with-pattern #1 #RIGHT . "Кажи ми Ти Истината" \page-ref #'ref086_1 "000" "?"
      \with-link #'ref168 \fill-with-pattern #1 #RIGHT . "Кажи ми Ти Истината II" \page-ref #'ref168 "000" "?"
      \with-link #'ref169_1 \fill-with-pattern #1 #RIGHT . "Кажи ми Ти Истината III" \page-ref #'ref169_1 "000" "?"
      \with-link #'ref092_1 \fill-with-pattern #1 #RIGHT . "Киамет Зену" \page-ref #'ref092_1 "000" "?"
      \with-link #'ref103 \fill-with-pattern #1 #RIGHT . "Красив е животът" \page-ref #'ref103 "000" "?"
      \with-link #'ref056_2 \fill-with-pattern #1 #RIGHT . "Към Рила" \page-ref #'ref056_2 "000" "?"
      \with-link #'ref054 \fill-with-pattern #1 #RIGHT . "Към Сион" \page-ref #'ref054 "000" "?"
      \with-link #'ref167 \fill-with-pattern #1 #RIGHT . "Към „Фир-фюр-фен“" \page-ref #'ref167 "000" "?"
      \with-link #'ref026 \fill-with-pattern #1 #RIGHT . "Любовта е извор" \page-ref #'ref026 "000" "?"
      \with-link #'ref173 \fill-with-pattern #1 #RIGHT . "Малката буболечица" \page-ref #'ref173 "000" "?"
      \with-link #'ref099 \fill-with-pattern #1 #RIGHT . "Малкият извор (Светъл лъч)" \page-ref #'ref099 "000" "?"
      \with-link #'ref165 \fill-with-pattern #1 #RIGHT . "Малкият планински извор" \page-ref #'ref165 "000" "?"
      \with-link #'ref162 \fill-with-pattern #1 #RIGHT . "Марш на светлите сили" \page-ref #'ref162 "000" "?"
      \with-link #'ref254 \fill-with-pattern #1 #RIGHT . "Марш на светлите сили II" \page-ref #'ref254 "000" "?"
      \with-link #'ref080 \fill-with-pattern #1 #RIGHT . "Махар Бену Аба" \page-ref #'ref080 "000" "?"
    }
  }



} % bookpart

