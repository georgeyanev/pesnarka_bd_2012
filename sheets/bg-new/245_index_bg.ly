\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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

