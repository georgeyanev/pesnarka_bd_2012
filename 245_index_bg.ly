\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \tocItem \markup "Alphabetischer Index"
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

  \markup \large \column {
    \fill-line { \null \fontsize #+2.5 \bold "ALPHABETISCHER INDEX" \null }
    \hspace #1
  }

  \markup \override #'(baseline-skip . 2.5)
  \column  \fontsize  #+2.5 {
    \fill-with-pattern #1 #RIGHT . "А бре, синко" \page-ref #'ref137 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Аз мога да дишам" \page-ref #'ref171_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Аз смея да кажа" \page-ref #'ref109 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Аз съм бялото кокиче" \page-ref #'ref047 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Аин фаси" \page-ref #'ref135 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ангел вопияше" \page-ref #'ref064 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Аум" \page-ref #'ref075 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Бащина песен" \page-ref #'ref138 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Берхан Ази" \page-ref #'ref163 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Бершид ба" \page-ref #'ref098 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Блага дума" \page-ref #'ref074 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Благата песен" \page-ref #'ref086_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Благославяй" \page-ref #'ref024 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Благословен Господ" \page-ref #'ref040 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Бог е Любов" \page-ref #'ref082 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Бог е Любов II" \page-ref #'ref166 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Божията Любов ме озари" \page-ref #'ref206 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Братство, единство" \page-ref #'ref020 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Буря" \page-ref #'ref120 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Българска идилия" \page-ref #'ref150 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Българска рапсодия" \page-ref #'ref145 "000" "?"
    \fill-with-pattern #1 #RIGHT . "В зорите на Живота" \page-ref #'ref081 "000" "?"
    \fill-with-pattern #1 #RIGHT . "В мрак тъмнота" \page-ref #'ref080_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "В начало бе Словото" \page-ref #'ref094 "000" "?"
    \fill-with-pattern #1 #RIGHT . "В пустинята на живота" \page-ref #'ref095 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вдъхновение" \page-ref #'ref094 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Венир Бенир" \page-ref #'ref076 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Весел ти бъди" \page-ref #'ref096 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вехади" \page-ref #'ref083_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вечер сутрин" \page-ref #'ref083_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Време е да вървим" \page-ref #'ref042 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Всичко в живота е постижимо" \page-ref #'ref100 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вътрешният глас на Бога" \page-ref #'ref200 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вяра светла I" \page-ref #'ref170_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вяра светла II" \page-ref #'ref170_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Вяра светла III" \page-ref #'ref170_3 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Гласът на Живия Господ" \page-ref #'ref190 "000" "?"
  }

  \markup \override #'(baseline-skip . 2.5)
  \column \fontsize  #+2.5 {
    \fill-with-pattern #1 #RIGHT . "Господи, колко те обичам" \page-ref #'ref210 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Грее, грее" \page-ref #'ref078 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Да бих Тe слушал" \page-ref #'ref174_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Да имаш вяра" \page-ref #'ref110_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Давай, давай" \page-ref #'ref092_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Денят иде" \page-ref #'ref118_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Десет теми" \page-ref #'ref182 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Дишай дълбоко" \page-ref #'ref063 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Добър ден" \page-ref #'ref095_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Доще ден" \page-ref #'ref116 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Духай ветре" \page-ref #'ref136 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Духай ветре II" \page-ref #'ref161 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Духът ми шепне това" \page-ref #'ref101_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Дързост в Христа" \page-ref #'ref052 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Една вечна истина, която е Бог на Любовта" \page-ref #'ref201 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Езикът на живата природа" \page-ref #'ref130 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Житно зърно" \page-ref #'ref176 "000" "?"
    \fill-with-pattern #1 #RIGHT . "За Небесния цар" \page-ref #'ref041 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Запали се огънят" \page-ref #'ref097 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Зов на планината" \page-ref #'ref112_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Зора на Новия живот" \page-ref #'ref215 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Зората на Новия живот" \page-ref #'ref016 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Играта на поточето" \page-ref #'ref172 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Идват дни на радост" \page-ref #'ref056_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Изворче" \page-ref #'ref177 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Изгрей ти, мое Слънце" \page-ref #'ref030 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Изгрява вече ден тържествен" \page-ref #'ref022 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Изгрява слънцето" \page-ref #'ref071_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Излязъл е сеяч" \page-ref #'ref018 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Имаше человек" \page-ref #'ref083_3 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината" \page-ref #'ref086_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината II" \page-ref #'ref168 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината III" \page-ref #'ref169_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Кажи ми светли Божи лъч" \page-ref #'ref167_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Кажи ми светли Божи лъч II" \page-ref #'ref211 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Киамет Зену" \page-ref #'ref092_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Красив е животът" \page-ref #'ref103 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мелодия – Красив Живот" \page-ref #'ref185 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Към Фир-фюр-фен" \page-ref #'ref167 "000" "?"
  }

  \markup \override #'(baseline-skip . 2.5)
  \column \fontsize  #+2.5 {
    \fill-with-pattern #1 #RIGHT . "Към Рила" \page-ref #'ref056_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Към Сион" \page-ref #'ref054 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Любовта е извор" \page-ref #'ref026 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Малката буболечица" \page-ref #'ref173 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Малкият извор (Светъл лъч)" \page-ref #'ref161 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Малкият планински извор" \page-ref #'ref165 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Марш на светлите сили" \page-ref #'ref162 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Марш на светлите сили II" \page-ref #'ref162_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Махар Бену Аба" \page-ref #'ref080 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мелодия – Красив Живот" \page-ref #'ref185 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мелодия – В радостта на деня" \page-ref #'ref186 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мелодия – Когато се денят пробужда" \page-ref #'ref188 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мелодия – Озарение" \page-ref #'ref189 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ме-хейн" \page-ref #'ref175_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Милост, благост" \page-ref #'ref171_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Милосърдието" \page-ref #'ref038 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мирът иде" \page-ref #'ref156 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мирът иде II" \page-ref #'ref158 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мисли, право мисли" \page-ref #'ref093 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мога да кажа" \page-ref #'ref108 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мога да любя" \page-ref #'ref111 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Моето слънце днес ще изгрее" \page-ref #'ref212 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Молитва (Чуй, Господи)" \page-ref #'ref178 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Молитва (Господи, Ти Си)" \page-ref #'ref179 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Молитва (Вярвам в теб)" \page-ref #'ref204 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Мусала" \page-ref #'ref087 "000" "?"
    \fill-with-pattern #1 #RIGHT . "На белия цвят" \page-ref #'ref058 "000" "?"
    \fill-with-pattern #1 #RIGHT . "На Учителя" \page-ref #'ref037 "000" "?"
    \fill-with-pattern #1 #RIGHT . "На Христа запейте" \page-ref #'ref060 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Напред да ходим" \page-ref #'ref036 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Напред, чада, напред" \page-ref #'ref048 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Не ли думах" \page-ref #'ref164 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Небето се отваря" \page-ref #'ref050 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Нева Сензу" \page-ref #'ref091 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Нови дрехи" \page-ref #'ref062 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Новото Битие" \page-ref #'ref191 "000" "?"
    \fill-with-pattern #1 #RIGHT . "О, Учителю благати" \page-ref #'ref051 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Обетована земя" \page-ref #'ref134 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Отче наш, не ни въвеждай в изкушение" \page-ref #'ref216 "000" "?"

  }

  \markup \override #'(baseline-skip . 2.5)
  \column \fontsize  #+2.5 {
    \fill-with-pattern #1 #RIGHT . "Песен за двете сестри" \page-ref #'ref180 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Песен на гласните букви" \page-ref #'ref067 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Песен на детето" \page-ref #'ref164 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Песен на зората" \page-ref #'ref106 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Песен на светлия път" \page-ref #'ref115 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Песента на ангелите" \page-ref #'ref207 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Писмото" \page-ref #'ref175 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Подмладяване" \page-ref #'ref119 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Поздрав на Учителя" \page-ref #'ref044 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Правда" \page-ref #'ref132 "000" "?"
    \fill-with-pattern #1 #RIGHT . "При всичките условия" \page-ref #'ref107 "000" "?"
    \fill-with-pattern #1 #RIGHT . "При източника" \page-ref #'ref034 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Пролет" \page-ref #'ref118_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Пролетна песен (Мили Боже)" \page-ref #'ref124 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Пролетна песен (Ето пристига)" \page-ref #'ref124 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Псалм 91" \page-ref #'ref057 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Радост" \page-ref #'ref174_3 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Радост и скръб" \page-ref #'ref122 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Радост, радост за душата" \page-ref #'ref155_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ранен час" \page-ref #'ref124 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Росна капка" \page-ref #'ref046 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Светъл ден" \page-ref #'ref090 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Свобода е потребна за душата" \page-ref #'ref169_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сила жива" \page-ref #'ref076_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сила жива, изворна" \page-ref #'ref071_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сила, Живот, здраве" \page-ref #'ref102 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сила, здраве е богатство" \page-ref #'ref112_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сине мой, пази живота" \page-ref #'ref045 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Скитах се по гори и планини" \page-ref #'ref133 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Скръбта си ти кажи" \page-ref #'ref077 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Слава Божия" \page-ref #'ref053 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Славейчета горски" \page-ref #'ref049 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сладко медено" \page-ref #'ref073 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Слушам" \page-ref #'ref174_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Слънцето на Любовта" \page-ref #'ref055_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Слънчева песен – пчелна мушица" \page-ref #'ref125 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ставай, дъще!" \page-ref #'ref142 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Стани, стани" \page-ref #'ref028 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Страдна душо" \page-ref #'ref029 "000" "?"

  }

  \markup \override #'(baseline-skip . 2.5)
  \column \fontsize  #+2.5 {
    \fill-with-pattern #1 #RIGHT . "Странник съм в този свят" \page-ref #'ref217 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Студът всичко дава" \page-ref #'ref126 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Събуди се братко мили" \page-ref #'ref025 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Сърдечен зов" \page-ref #'ref039 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Тайната вечеря" \page-ref #'ref066_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Там далече" \page-ref #'ref117 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Тебе поем" \page-ref #'ref066_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ти си проявената Любов" \page-ref #'ref055_2 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ти ще сполучиш в Живота" \page-ref #'ref214 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Той иде" \page-ref #'ref114 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Тъги, скърби" \page-ref #'ref089 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Тъги, скърби са богатство" \page-ref #'ref101_1 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Фир-фюр-фен - Благославяй" \page-ref #'ref070 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Химн на великата Душа" \page-ref #'ref104 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Химни на Слънцето" \page-ref #'ref202 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ходи, ходи" \page-ref #'ref088 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Цветята цъфтяха" \page-ref #'ref113 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Шуми" \page-ref #'ref032 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Ще се развеселя" \page-ref #'ref021 "000" "?"
    \fill-with-pattern #1 #RIGHT . "Що е същността" \page-ref #'ref068 "000" "?"
  }

} % bookpart

