\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \tocItem \markup "Азбучен показател"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t


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
      \with-link #'ref138 \fill-with-pattern #1 #RIGHT . "Бащина песен – Добрият момък" \page-ref #'ref138 "000" "?"
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

  \markup \override #'(line-width . 42) \abs-fontsize #10 {
    \override #'(baseline-skip . 3) \column {
      \with-link #'ref175_2 \fill-with-pattern #1 #RIGHT . "Ме-хейн" \page-ref #'ref175_2 "000" "?"
      \with-link #'ref175_2 \fill-with-pattern #1 #RIGHT . "Ме-хейн II" \page-ref #'ref175_2_2 "000" "?"
      \with-link #'ref185 \fill-with-pattern #1 #RIGHT . "Мелодия 1 – Красив живот" \page-ref #'ref185 "000" "?"
      \with-link #'ref186 \fill-with-pattern #1 #RIGHT . "Мелодия 2" \page-ref #'ref186 "000" "?"
      \with-link #'ref251_1 \fill-with-pattern #1 #RIGHT . "Мелодия 2 – В радостта" \page-ref #'ref251_1 "000" "?"
      \with-link #'ref188 \fill-with-pattern #1 #RIGHT . "Мелодия 3 – Когато се денят" \page-ref #'ref188 "000" "?"
      \with-link #'ref189 \fill-with-pattern #1 #RIGHT . "Мелодия 4" \page-ref #'ref189 "000" "?"
      \with-link #'ref251_2 \fill-with-pattern #1 #RIGHT . "Мелодия 4 – Озарение" \page-ref #'ref251_2 "000" "?"
      \with-link #'ref171_1 \fill-with-pattern #1 #RIGHT . "Милост, благост" \page-ref #'ref171_1 "000" "?"
      \with-link #'ref038 \fill-with-pattern #1 #RIGHT . "Милосърдието" \page-ref #'ref038 "000" "?"
      \with-link #'ref155_2 \fill-with-pattern #1 #RIGHT . "Мирът иде вече" \page-ref #'ref155_2 "000" "?"
      \with-link #'ref156 \fill-with-pattern #1 #RIGHT . "Мирът иде" \page-ref #'ref156 "000" "?"
      \with-link #'ref158 \fill-with-pattern #1 #RIGHT . "Мирът иде II" \page-ref #'ref158 "000" "?"
      \with-link #'ref093 \fill-with-pattern #1 #RIGHT . "Мисли, право мисли" \page-ref #'ref093 "000" "?"
      \with-link #'ref108 \fill-with-pattern #1 #RIGHT . "Мога да кажа" \page-ref #'ref108 "000" "?"
      \with-link #'ref111 \fill-with-pattern #1 #RIGHT . "Мога да любя" \page-ref #'ref111 "000" "?"
      \with-link #'ref212 \fill-with-pattern #1 #RIGHT . "Моето слънце днес ще изгрее" \page-ref #'ref212 "000" "?"
      \with-link #'ref204 \fill-with-pattern #1 #RIGHT . "Молитва (Вярвам в теб)" \page-ref #'ref204 "000" "?"
      \with-link #'ref252 \fill-with-pattern #1 #RIGHT . "Молитва (Господи, Ти Си)" \page-ref #'ref252 "000" "?"
      \with-link #'ref178 \fill-with-pattern #1 #RIGHT . "Молитва (Чуй, Господи)" \page-ref #'ref178 "000" "?"
      \with-link #'ref087 \fill-with-pattern #1 #RIGHT . "Мусала" \page-ref #'ref087 "000" "?"
      \with-link #'ref058 \fill-with-pattern #1 #RIGHT . "На белия цвят" \page-ref #'ref058 "000" "?"
      \with-link #'ref037 \fill-with-pattern #1 #RIGHT . "На Учителя" \page-ref #'ref037 "000" "?"
      \with-link #'ref060 \fill-with-pattern #1 #RIGHT . "На Христа запейте" \page-ref #'ref060 "000" "?"
      \with-link #'ref036 \fill-with-pattern #1 #RIGHT . "Напред да ходим" \page-ref #'ref036 "000" "?"
      \with-link #'ref048 \fill-with-pattern #1 #RIGHT . "Напред, чада, напред" \page-ref #'ref048 "000" "?"
      \with-link #'ref154 \fill-with-pattern #1 #RIGHT . "Не ли думах" \page-ref #'ref154 "000" "?"
      \with-link #'ref050 \fill-with-pattern #1 #RIGHT . "Небето се отваря" \page-ref #'ref050 "000" "?"
      \with-link #'ref091 \fill-with-pattern #1 #RIGHT . "Нева санзу" \page-ref #'ref091 "000" "?"
      \with-link #'ref062 \fill-with-pattern #1 #RIGHT . "Нови дрехи" \page-ref #'ref062 "000" "?"
      \with-link #'ref191 \fill-with-pattern #1 #RIGHT . "Новото Битие" \page-ref #'ref191 "000" "?"
      \with-link #'ref051 \fill-with-pattern #1 #RIGHT . "О, Учителю благати" \page-ref #'ref051 "000" "?"
      \with-link #'ref134 \fill-with-pattern #1 #RIGHT . "Обетована земя" \page-ref #'ref134 "000" "?"
      \with-link #'ref216 \fill-with-pattern #1 #RIGHT . "Отче наш" \page-ref #'ref216 "000" "?"
      \with-link #'ref180 \fill-with-pattern #1 #RIGHT . "Песен за двете сестри" \page-ref #'ref180 "000" "?"
      \with-link #'ref067 \fill-with-pattern #1 #RIGHT . "Песен на гласните букви" \page-ref #'ref067 "000" "?"
      \with-link #'ref164 \fill-with-pattern #1 #RIGHT . "Песен на детето" \page-ref #'ref164 "000" "?"
      \with-link #'ref106 \fill-with-pattern #1 #RIGHT . "Песен на зората" \page-ref #'ref106 "000" "?"
      \with-link #'ref115 \fill-with-pattern #1 #RIGHT . "Песен на светлия път" \page-ref #'ref115 "000" "?"
      \with-link #'ref207 \fill-with-pattern #1 #RIGHT . "Песента на ангелите" \page-ref #'ref207 "000" "?"
      \with-link #'ref175 \fill-with-pattern #1 #RIGHT . "Писмото" \page-ref #'ref175 "000" "?"
      \with-link #'ref119 \fill-with-pattern #1 #RIGHT . "Подмладяване" \page-ref #'ref119 "000" "?"
      \with-link #'ref044 \fill-with-pattern #1 #RIGHT . "Поздрав на Учителя" \page-ref #'ref044 "000" "?"
      \with-link #'ref132 \fill-with-pattern #1 #RIGHT . "Правда" \page-ref #'ref132 "000" "?"
      \with-link #'ref107 \fill-with-pattern #1 #RIGHT . "При всичките условия" \page-ref #'ref107 "000" "?"
      \with-link #'ref118_2 \fill-with-pattern #1 #RIGHT . "Пролет" \page-ref #'ref118_2 "000" "?"
    }

    \hspace #2.6
    \override #'(baseline-skip . 3) \column {
      \with-link #'ref181 \fill-with-pattern #1 #RIGHT . "Пролетна песен (Ето пристига)" \page-ref #'ref181 "000" "?"
      \with-link #'ref124 \fill-with-pattern #1 #RIGHT . "Пролетна песен (Мили Боже)" \page-ref #'ref124 "000" "?"
      \with-link #'ref057 \fill-with-pattern #1 #RIGHT . "Псалом 91" \page-ref #'ref057 "000" "?"
      \with-link #'ref174_3 \fill-with-pattern #1 #RIGHT . "Радост" \page-ref #'ref174_3 "000" "?"
      \with-link #'ref122 \fill-with-pattern #1 #RIGHT . "Радост и скръб" \page-ref #'ref122 "000" "?"
      \with-link #'ref155_1 \fill-with-pattern #1 #RIGHT . "Радост, радост за душата" \page-ref #'ref155_1 "000" "?"
      \with-link #'ref121 \fill-with-pattern #1 #RIGHT . "Ранен час" \page-ref #'ref121 "000" "?"
      \with-link #'ref046 \fill-with-pattern #1 #RIGHT . "Росна капка" \page-ref #'ref046 "000" "?"
      \with-link #'ref090 \fill-with-pattern #1 #RIGHT . "Светъл ден" \page-ref #'ref090 "000" "?"
      \with-link #'ref169_2 \fill-with-pattern #1 #RIGHT . "Свобода е потребна за душата" \page-ref #'ref169_2 "000" "?"
      \with-link #'ref076_2 \fill-with-pattern #1 #RIGHT . "Сила жива" \page-ref #'ref076_2 "000" "?"
      \with-link #'ref071_2 \fill-with-pattern #1 #RIGHT . "Сила жива, изворна" \page-ref #'ref071_2 "000" "?"
      \with-link #'ref102 \fill-with-pattern #1 #RIGHT . "Сила, живот, здраве" \page-ref #'ref102 "000" "?"
      \with-link #'ref112_1 \fill-with-pattern #1 #RIGHT . "Сила, здраве е богатство" \page-ref #'ref112_1 "000" "?"
      \with-link #'ref045 \fill-with-pattern #1 #RIGHT . "Сине мой, пази живота" \page-ref #'ref045 "000" "?"
      \with-link #'ref133 \fill-with-pattern #1 #RIGHT . "Скитах се по гори и планини" \page-ref #'ref133 "000" "?"
      \with-link #'ref077 \fill-with-pattern #1 #RIGHT . "Скръбта си ти кажи" \page-ref #'ref077 "000" "?"
      \with-link #'ref053 \fill-with-pattern #1 #RIGHT . "Слава Божия" \page-ref #'ref053 "000" "?"
      \with-link #'ref049 \fill-with-pattern #1 #RIGHT . "Славейчета горски" \page-ref #'ref049 "000" "?"
      \with-link #'ref073 \fill-with-pattern #1 #RIGHT . "Сладко, медено" \page-ref #'ref073 "000" "?"
      \with-link #'ref174_2 \fill-with-pattern #1 #RIGHT . "Слушам" \page-ref #'ref174_2 "000" "?"
      \with-link #'ref055_1 \fill-with-pattern #1 #RIGHT . "Слънцето на Любовта" \page-ref #'ref055_1 "000" "?"
      \with-link #'ref125 \fill-with-pattern #1 #RIGHT . "Слънчева песен" \page-ref #'ref125 "000" "?"
      \with-link #'ref142 \fill-with-pattern #1 #RIGHT . "Ставай, дъще!" \page-ref #'ref142 "000" "?"
      \with-link #'ref028 \fill-with-pattern #1 #RIGHT . "Стани, стани" \page-ref #'ref028 "000" "?"
      \with-link #'ref029 \fill-with-pattern #1 #RIGHT . "Страдна душо" \page-ref #'ref029 "000" "?"
      \with-link #'ref217 \fill-with-pattern #1 #RIGHT . "Странник съм в този свят" \page-ref #'ref217 "000" "?"
      \with-link #'ref126 \fill-with-pattern #1 #RIGHT . "Студът всичко дава" \page-ref #'ref126 "000" "?"
      \with-link #'ref025 \fill-with-pattern #1 #RIGHT . "Събуди се, братко мили" \page-ref #'ref025 "000" "?"
      \with-link #'ref039 \fill-with-pattern #1 #RIGHT . "Сърдечен зов" \page-ref #'ref039 "000" "?"
      \with-link #'ref066_1 \fill-with-pattern #1 #RIGHT . "Тайната вечеря" \page-ref #'ref066_1 "000" "?"
      \with-link #'ref117 \fill-with-pattern #1 #RIGHT . "Там далече" \page-ref #'ref117 "000" "?"
      \with-link #'ref066_2 \fill-with-pattern #1 #RIGHT . "Тебе поем" \page-ref #'ref066_2 "000" "?"
      \with-link #'ref055_2 \fill-with-pattern #1 #RIGHT . "Ти си проявената Любов" \page-ref #'ref055_2 "000" "?"
      \with-link #'ref214 \fill-with-pattern #1 #RIGHT . "Ти ще сполучиш в живота" \page-ref #'ref214 "000" "?"
      \with-link #'ref114 \fill-with-pattern #1 #RIGHT . "Той иде" \page-ref #'ref114 "000" "?"
      \with-link #'ref089 \fill-with-pattern #1 #RIGHT . "Тъги, скърби" \page-ref #'ref089 "000" "?"
      \with-link #'ref101_1 \fill-with-pattern #1 #RIGHT . "Тъги, скърби са богатство" \page-ref #'ref101_1 "000" "?"
      \with-link #'ref070 \fill-with-pattern #1 #RIGHT . "Фир-фюр-фен – Благославяй" \page-ref #'ref070 "000" "?"
      \with-link #'ref104 \fill-with-pattern #1 #RIGHT . "Химн на Великата душа" \page-ref #'ref104 "000" "?"
      \with-link #'ref202 \fill-with-pattern #1 #RIGHT . "Химн на Слънцето" \page-ref #'ref202 "000" "?"
      \with-link #'ref088 \fill-with-pattern #1 #RIGHT . "Ходи, ходи" \page-ref #'ref088 "000" "?"
      \with-link #'ref113 \fill-with-pattern #1 #RIGHT . "Цветята цъфтяха" \page-ref #'ref113 "000" "?"
      \with-link #'ref032 \fill-with-pattern #1 #RIGHT . "Шуми" \page-ref #'ref032 "000" "?"
      \with-link #'ref021 \fill-with-pattern #1 #RIGHT . "Ще се развеселя" \page-ref #'ref021 "000" "?"
      \with-link #'ref068 \fill-with-pattern #1 #RIGHT . "Що е същността" \page-ref #'ref068 "000" "?"
    }
  }

} % bookpart

