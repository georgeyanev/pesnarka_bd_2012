\version "2.24.3"

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
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  }

  \markup \large \column {
    \fill-line { \null \abs-fontsize #14 \bold "Alphabetischer Index" \null }
    \hspace #1
  }

  \markup \override #'(baseline-skip . 3.2)
  \column  \abs-fontsize #10 {
    \with-link #'ref137 \fill-with-pattern #1 #RIGHT . "A bre, sinko – А бре, синко" \page-ref #'ref137 "000" "?"
    \with-link #'ref135 \fill-with-pattern #1 #RIGHT . "Ain fasi – Аин фаси" \page-ref #'ref135 "000" "?"
    \with-link #'ref064 \fill-with-pattern #1 #RIGHT . "Angel vopijaše – Ангел вопияше" \page-ref #'ref064 "000" "?"
    \with-link #'ref075 \fill-with-pattern #1 #RIGHT . "Aum – Аум" \page-ref #'ref075 "000" "?"
    \with-link #'ref171_2 \fill-with-pattern #1 #RIGHT . "Az moga da dišam – Аз мога да дишам" \page-ref #'ref171_2 "000" "?"
    \with-link #'ref047 \fill-with-pattern #1 #RIGHT . "Az săm bjaloto kokiče– Аз съм бялото кокиче" \page-ref #'ref047 "000" "?"
    \with-link #'ref109 \fill-with-pattern #1 #RIGHT . "Az smeja da kaža – Аз смея да кажа" \page-ref #'ref109 "000" "?"
    \with-link #'ref150 \fill-with-pattern #1 #RIGHT . "Bălgarska idilija – Българска идилия" \page-ref #'ref150 "000" "?"
    \with-link #'ref146 \fill-with-pattern #1 #RIGHT . "Bălgarska rapsodija – Българска рапсодия" \page-ref #'ref146 "000" "?"
    \with-link #'ref138 \fill-with-pattern #1 #RIGHT . "Baština pesen – Ugledna moma – Бащина песен – Угледна мома" \page-ref #'ref138 "000" "?"
    \with-link #'ref163 \fill-with-pattern #1 #RIGHT . "Berhan-Azi – Берхан-Ази"  \page-ref #'ref163 "000" "?"
    \with-link #'ref098 \fill-with-pattern #1 #RIGHT . "Beršid Ba –Бершид Ба" \page-ref #'ref098 "000" "?"
    \with-link #'ref074 \fill-with-pattern #1 #RIGHT . "Blaga duma – Блага дума" \page-ref #'ref074 "000" "?"
    \with-link #'ref086_2 \fill-with-pattern #1 #RIGHT . "Blagata pesen – Благата песен" \page-ref #'ref086_2 "000" "?"
    \with-link #'ref024 \fill-with-pattern #1 #RIGHT . "Blagoslavjaj – Благославяй" \page-ref #'ref024 "000" "?"
    \with-link #'ref040 \fill-with-pattern #1 #RIGHT . "Blagosloven Gospod – Благословен Господ" \page-ref #'ref040 "000" "?"
    \with-link #'ref072 \fill-with-pattern #1 #RIGHT . "Blagost – Благост" \page-ref #'ref072 "000" "?"
    \with-link #'ref082 \fill-with-pattern #1 #RIGHT . "Bog e Ljubov – Бог е Любов" \page-ref #'ref082 "000" "?"
    \with-link #'ref166 \fill-with-pattern #1 #RIGHT . "Bog e Ljubov II– Бог е Любов II" \page-ref #'ref166 "000" "?"
    \with-link #'ref206 \fill-with-pattern #1 #RIGHT . "Božijata Ljubov me ozari– Божията Любов ме озари" \page-ref #'ref206 "000" "?"
    \with-link #'ref020 \fill-with-pattern #1 #RIGHT . "Bratstvo, edinstvo – Братство, единство" \page-ref #'ref020 "000" "?"
    \with-link #'ref120 \fill-with-pattern #1 #RIGHT . "Burja – Буря" \page-ref #'ref120 "000" "?"
    \with-link #'ref113 \fill-with-pattern #1 #RIGHT . "Cvetjata căftjaha – Цветята цъфтяха." \page-ref #'ref113 "000" "?"
    \with-link #'ref174_1 \fill-with-pattern #1 #RIGHT . "Da bih Te slušal.– Да бих Тe слушал" \page-ref #'ref174_1 "000" "?"
    \with-link #'ref110_1 \fill-with-pattern #1 #RIGHT . "Da imaš vjara – Да имаш вяра" \page-ref #'ref110_1 "000" "?"
    \with-link #'ref052 \fill-with-pattern #1 #RIGHT . "Dărzost v Hrista –Дързост в Христа" \page-ref #'ref052 "000" "?"
    \with-link #'ref092_2 \fill-with-pattern #1 #RIGHT . "Davaj, Davaj – Давай, давай" \page-ref #'ref092_2 "000" "?"
    \with-link #'ref118_1 \fill-with-pattern #1 #RIGHT . "Denjat ide – Денят иде" \page-ref #'ref118_1 "000" "?"
    \with-link #'ref182 \fill-with-pattern #1 #RIGHT . "Десет теми – Deset temi" \page-ref #'ref182 "000" "?"
    \with-link #'ref063 \fill-with-pattern #1 #RIGHT . "Dišaj dălboko – Дишай дълбоко" \page-ref #'ref063 "000" "?"
    \with-link #'ref116 \fill-with-pattern #1 #RIGHT . "Do šte den – До ще ден" \page-ref #'ref116 "000" "?"
    \with-link #'ref095_2 \fill-with-pattern #1 #RIGHT . "Dobăr den – Добър ден" \page-ref #'ref095_2 "000" "?"
    \with-link #'ref219 \fill-with-pattern #1 #RIGHT . "Dobrata molitva – Добрата молитва" \page-ref #'ref219 "000" "?"
    \with-link #'ref136 \fill-with-pattern #1 #RIGHT . "Duhaj vetre – Духай, ветре " \page-ref #'ref136 "000" "?"
    \with-link #'ref161 \fill-with-pattern #1 #RIGHT . "Duhaj, vetre II – Духай, ветре II" \page-ref #'ref161 "000" "?"
    \with-link #'ref079 \fill-with-pattern #1 #RIGHT . "Duhăt Boži – Духът Божи" \page-ref #'ref079 "000" "?"
    \with-link #'ref101_2 \fill-with-pattern #1 #RIGHT . "Duhăt mi šepne tova – Духът ми шепне това" \page-ref #'ref101_2 "000" "?"
    \with-link #'ref201 \fill-with-pattern #1 #RIGHT . "Edna večna Istina ... – Една вечна Истина ..." \page-ref #'ref201 "000" "?"
    \with-link #'ref130 \fill-with-pattern #1 #RIGHT . "Ezikăt na živata priroda – Езикът на живата природа" \page-ref #'ref130 "000" "?"
    \with-link #'ref070 \fill-with-pattern #1 #RIGHT . "Fir-fjur-fen – Blagoslavaj – Фир-фюр-фен – Благославяй" \page-ref #'ref070 "000" "?"
    \with-link #'ref190 \fill-with-pattern #1 #RIGHT . "Glasăt na Živija Gospod – Гласът на Живия Господ" \page-ref #'ref190 "000" "?"
    \with-link #'ref210 \fill-with-pattern #1 #RIGHT . "Gospodi, kolko Te običam! – Господи, колко Те обичам!" \page-ref #'ref210 "000" "?"
    \with-link #'ref078 \fill-with-pattern #1 #RIGHT . "Gree, gree – Грее, грее" \page-ref #'ref078 "000" "?"
    \with-link #'ref202 \fill-with-pattern #1 #RIGHT . "Himn na Slănceto – Химн на Слънцето" \page-ref #'ref202 "000" "?"

  }

  \markup \override #'(baseline-skip . 3.2)
  \column \abs-fontsize #10 {

    \with-link #'ref104 \fill-with-pattern #1 #RIGHT . "Himn na Velikata duša – Химн на Великата душа " \page-ref #'ref104 "000" "?"
    \with-link #'ref088 \fill-with-pattern #1 #RIGHT . "Hodi, hodi – Ходи, ходи." \page-ref #'ref088 "000" "?"
    \with-link #'ref056_1 \fill-with-pattern #1 #RIGHT . "Idvat dni na radost–Идват дни на радост" \page-ref #'ref056_1 "000" "?"
    \with-link #'ref172 \fill-with-pattern #1 #RIGHT . "Igrata na potočeto – Играта на поточето" \page-ref #'ref172 "000" "?"
    \with-link #'ref083_3 \fill-with-pattern #1 #RIGHT . "Imaše čelovek – Имаше человек" \page-ref #'ref083_3 "000" "?"
    \with-link #'ref030 \fill-with-pattern #1 #RIGHT . "Izgrej ti, moe Slănce – Изгрей ти, мое Слънце" \page-ref #'ref030 "000" "?"
    \with-link #'ref071_1 \fill-with-pattern #1 #RIGHT . "Izgrjava Slănceto – Изгрява Слънцето" \page-ref #'ref071_1 "000" "?"
    \with-link #'ref022 \fill-with-pattern #1 #RIGHT . "Igrjava veče den tăržestven – Изгрява вече ден тържествен" \page-ref #'ref022 "000" "?"
    \with-link #'ref018 \fill-with-pattern #1 #RIGHT . "Izljazăl e sejač – Излязъл е сеяч" \page-ref #'ref018 "000" "?"
    \with-link #'ref177 \fill-with-pattern #1 #RIGHT . "Izvorče – Изворче" \page-ref #'ref177 "000" "?"
    \with-link #'ref167 \fill-with-pattern #1 #RIGHT . "Kăm „Fir-fjur-fen“ – Към „Фир-фюр-фен" \page-ref #'ref167 "000" "?"
    \with-link #'ref056_2 \fill-with-pattern #1 #RIGHT . "Kăm Rila – Към Рила" \page-ref #'ref056_2 "000" "?"
    \with-link #'ref054 \fill-with-pattern #1 #RIGHT . "Kăm Sion – Към Сион" \page-ref #'ref054 "000" "?"
    \with-link #'ref086_1 \fill-with-pattern #1 #RIGHT . "Kaži mi Ti Istinata – Кажи ми Tи Истината" \page-ref #'ref086_1 "000" "?"
    \with-link #'ref168 \fill-with-pattern #1 #RIGHT . "Kaži mi Ti Istinata II– Кажи ми Ти Истината II" \page-ref #'ref168 "000" "?"
    \with-link #'ref169_1 \fill-with-pattern #1 #RIGHT . "Kaži mi Ti Istinata III – Кажи ми Ти Истината III" \page-ref #'ref169_1 "000" "?"
    \with-link #'ref167_2 \fill-with-pattern #1 #RIGHT . "Kaži mi, svetli Boži lăč–Кажи ми, светли Божи лъч" \page-ref #'ref167_2 "000" "?"
    \with-link #'ref211 \fill-with-pattern #1 #RIGHT . "Kaži mi, svetli Boži – lăč II Кажи ми, светли Божи лъч II" \page-ref #'ref211 "000" "?"
    \with-link #'ref092_1 \fill-with-pattern #1 #RIGHT . "Kiamet Zenu – Киамет Зену" \page-ref #'ref092_1 "000" "?"
    \with-link #'ref103 \fill-with-pattern #1 #RIGHT . "Krasiv e životăt – Красив е животът" \page-ref #'ref103 "000" "?"
    \with-link #'ref026 \fill-with-pattern #1 #RIGHT . "Ljubovta e izvor – Любовта е извор" \page-ref #'ref026 "000" "?"
    \with-link #'ref080 \fill-with-pattern #1 #RIGHT . "Mahar Benu Aba – Махар Бену Аба" \page-ref #'ref080 "000" "?"
    \with-link #'ref173 \fill-with-pattern #1 #RIGHT . "Malkata bubolečica – Малката буболечица" \page-ref #'ref173 "000" "?"
    \with-link #'ref099 \fill-with-pattern #1 #RIGHT . "Malkijat izvor (Svetăl lăč) – Малкият извор (Светъл лъч)" \page-ref #'ref099 "000" "?"
    \with-link #'ref165 \fill-with-pattern #1 #RIGHT . "Malkijat planinski izvor – Малкият планински извор" \page-ref #'ref165 "000" "?"
    \with-link #'ref162 \fill-with-pattern #1 #RIGHT . "Marš na svetlite sili – Марш на светлите сили" \page-ref #'ref162 "000" "?"
    \with-link #'ref222 \fill-with-pattern #1 #RIGHT . "Marš na svetlite sili II – Марш на светлите сили II" \page-ref #'ref222 "000" "?"
    \with-link #'ref175_2 \fill-with-pattern #1 #RIGHT . "Me-hejn I – Me-хейн I" \page-ref #'ref175_2 "000" "?"
    \with-link #'ref175_3 \fill-with-pattern #1 #RIGHT . "Me-hejn II – Me-хейн II" \page-ref #'ref175_3 "000" "?"
    \with-link #'ref185 \fill-with-pattern #1 #RIGHT . "Melodija 1 – Krasiv život – Мелодия 1 – Красив живот" \page-ref #'ref185 "000" "?"
    \with-link #'ref186 \fill-with-pattern #1 #RIGHT . "Melodija 2 – Мелодия 2" \page-ref #'ref186 "000" "?"
    \with-link #'ref221 \fill-with-pattern #1 #RIGHT . "Melodija 2 – V radostta na denja – Мелодия 2 – В радостта на деня" \page-ref #'ref221 "000" "?"
    \with-link #'ref188 \fill-with-pattern #1 #RIGHT . "Melodija 3 – Kogato se denjat ... – Мелодия 3 – Когато се денят ..." \page-ref #'ref188 "000" "?"
    \with-link #'ref189 \fill-with-pattern #1 #RIGHT . "Melodija 4 – Мелодия 4" \page-ref #'ref189 "000" "?"
    \with-link #'ref223 \fill-with-pattern #1 #RIGHT . "Melodija 4 – Ozarenie –Мелодия 4 – Озарение" \page-ref #'ref223 "000" "?"
    \with-link #'ref038 \fill-with-pattern #1 #RIGHT . "Milosărdieto – Милосърдието" \page-ref #'ref038 "000" "?"
    \with-link #'ref171_1 \fill-with-pattern #1 #RIGHT . "Milost, blagost – Милост, благост" \page-ref #'ref171_1 "000" "?"
    \with-link #'ref156 \fill-with-pattern #1 #RIGHT . "Mirăt ide I – Мирът иде I" \page-ref #'ref156 "000" "?"
    \with-link #'ref158 \fill-with-pattern #1 #RIGHT . "Mirăt ide II – Мирът иде II." \page-ref #'ref158 "000" "?"
    \with-link #'ref093 \fill-with-pattern #1 #RIGHT . "Misli, pravo misli – Мисли, право мисли" \page-ref #'ref093 "000" "?"
    \with-link #'ref212 \fill-with-pattern #1 #RIGHT . "Moeto Slănce dnes šte izgree – Моето Слънце днес ще изгрее." \page-ref #'ref212 "000" "?"
    \with-link #'ref108 \fill-with-pattern #1 #RIGHT . "Moga da kaža – Мога да кажа" \page-ref #'ref108 "000" "?"
    \with-link #'ref111 \fill-with-pattern #1 #RIGHT . "Moga da ljubja – Мога да любя" \page-ref #'ref111 "000" "?"
    \with-link #'ref178 \fill-with-pattern #1 #RIGHT . "Molitva (Čuj, Gospodi) – Молитва (Чуй, Господи)" \page-ref #'ref178 "000" "?"
    \with-link #'ref222 \fill-with-pattern #1 #RIGHT . "Molitva (Gospodi, Ти си...) – Молитва (Господи, Ти си ...)" \page-ref #'ref222 "000" "?"
    \with-link #'ref204 \fill-with-pattern #1 #RIGHT . "Molitva (Vjarvam văv Tebe ...) – Молитва (Вярвам във Тебе ...)." \page-ref #'ref204 "000" "?"
  }

  \markup \override #'(baseline-skip . 3.2)
  \column \abs-fontsize #10 {

    \with-link #'ref087 \fill-with-pattern #1 #RIGHT . "Musala – Мусала" \page-ref #'ref087 "000" "?"
    \with-link #'ref058 \fill-with-pattern #1 #RIGHT . "Na belija cvjat – На белия цвят" \page-ref #'ref058 "000" "?"
    \with-link #'ref060 \fill-with-pattern #1 #RIGHT . "Na Hrista zapejte – На Христа запейте" \page-ref #'ref060 "000" "?"
    \with-link #'ref037 \fill-with-pattern #1 #RIGHT . "Na Učitelja – На Учителя" \page-ref #'ref037 "000" "?"
    \with-link #'ref036 \fill-with-pattern #1 #RIGHT . "Napred da hodim – Напред да ходим" \page-ref #'ref036 "000" "?"
    \with-link #'ref048 \fill-with-pattern #1 #RIGHT . "Napred, čada, napredv – Напред, чада, напред" \page-ref #'ref048 "000" "?"
    \with-link #'ref154 \fill-with-pattern #1 #RIGHT . "Ne li dumah – Не ли думах" \page-ref #'ref154 "000" "?"
    \with-link #'ref050 \fill-with-pattern #1 #RIGHT . "Nebeto se otvarja – Небето се отваря" \page-ref #'ref050 "000" "?"
    \with-link #'ref091 \fill-with-pattern #1 #RIGHT . "Neva Sanzu – Нева санзу" \page-ref #'ref091 "000" "?"
    \with-link #'ref062 \fill-with-pattern #1 #RIGHT . "Novi drehi – Нови дрехи" \page-ref #'ref062 "000" "?"
    \with-link #'ref191 \fill-with-pattern #1 #RIGHT . "Novoto Bitie – Новото Битие" \page-ref #'ref191 "000" "?"
    \with-link #'ref051 \fill-with-pattern #1 #RIGHT . "O, Učitelju blagati – О, Учителю благати" \page-ref #'ref051 "000" "?"
    \with-link #'ref134 \fill-with-pattern #1 #RIGHT . "Obetovana zemja – Обетована земя" \page-ref #'ref134 "000" "?"
    \with-link #'ref216 \fill-with-pattern #1 #RIGHT . "Otče naš, ne ni văveždaj ... – Отче наш, не ни въвеждай ..." \page-ref #'ref216 "000" "?"
    \with-link #'ref164 \fill-with-pattern #1 #RIGHT . "Pesen na deteto – Песен на детето " \page-ref #'ref164 "000" "?"
    \with-link #'ref067 \fill-with-pattern #1 #RIGHT . "Pesen na glasnite bukvi – Песен на гласните букви" \page-ref #'ref067 "000" "?"
    \with-link #'ref115 \fill-with-pattern #1 #RIGHT . "Pesen na svetlija păt – Песен на светлия път" \page-ref #'ref115 "000" "?"
    \with-link #'ref106 \fill-with-pattern #1 #RIGHT . "Pesen na zorata – Песен на зората" \page-ref #'ref106 "000" "?"
    \with-link #'ref180 \fill-with-pattern #1 #RIGHT . "Pesen za dvete sestri – Песен за двете сестри" \page-ref #'ref180 "000" "?"
    \with-link #'ref207 \fill-with-pattern #1 #RIGHT . "Pesenta na angelite – Песента на ангелите" \page-ref #'ref207 "000" "?"
    \with-link #'ref175 \fill-with-pattern #1 #RIGHT . "Pismoto – Писмото" \page-ref #'ref175 "000" "?"
    \with-link #'ref119 \fill-with-pattern #1 #RIGHT . "Podmladjavane – Подмладяване" \page-ref #'ref119 "000" "?"
    \with-link #'ref044 \fill-with-pattern #1 #RIGHT . "Pozdrav na Učitelja – Поздрав на Учителя" \page-ref #'ref044 "000" "?"
    \with-link #'ref132 \fill-with-pattern #1 #RIGHT . "Pravda – Правда" \page-ref #'ref132 "000" "?"
    \with-link #'ref107 \fill-with-pattern #1 #RIGHT . "Pri vsičkite uslovija – При всичките условия" \page-ref #'ref107 "000" "?"
    \with-link #'ref118_2 \fill-with-pattern #1 #RIGHT . "Prolet – Пролет" \page-ref #'ref118_2 "000" "?"
    \with-link #'ref181 \fill-with-pattern #1 #RIGHT . "Proletna pesen (Eto pristiga) – Пролетна песен (Ето пристига)" \page-ref #'ref181 "000" "?"
    \with-link #'ref124 \fill-with-pattern #1 #RIGHT . "Proletna pesen (Mili Bože) – Пролетна песен (Мили Боже)" \page-ref #'ref124 "000" "?"
    \with-link #'ref057 \fill-with-pattern #1 #RIGHT . "Psalom 91 – Псалом 91" \page-ref #'ref057 "000" "?"
    \with-link #'ref174_3 \fill-with-pattern #1 #RIGHT . "Radost – Радост" \page-ref #'ref174_3 "000" "?"
    \with-link #'ref122 \fill-with-pattern #1 #RIGHT . "Radost i skrăb – Радост и скръб" \page-ref #'ref122 "000" "?"
    \with-link #'ref155_1 \fill-with-pattern #1 #RIGHT . "Radost za dušata – Радост за душата" \page-ref #'ref155_1 "000" "?"
    \with-link #'ref121 \fill-with-pattern #1 #RIGHT . "Ranen čas – Ранен час" \page-ref #'ref121 "000" "?"
    \with-link #'ref046 \fill-with-pattern #1 #RIGHT . "Rosna kapka – Росна капка" \page-ref #'ref046 "000" "?"
    \with-link #'ref025 \fill-with-pattern #1 #RIGHT . "Săbudi se bratko mili – Събуди се братко мили" \page-ref #'ref025 "000" "?"
    \with-link #'ref039 \fill-with-pattern #1 #RIGHT . "Sărdečen zov – Сърдечен зов" \page-ref #'ref039 "000" "?"
    \with-link #'ref076_2 \fill-with-pattern #1 #RIGHT . "Sila živa – Сила жива" \page-ref #'ref076_2 "000" "?"
    \with-link #'ref071_2 \fill-with-pattern #1 #RIGHT . "Sila živa, izvorna – Сила жива, изворна" \page-ref #'ref071_2 "000" "?"
    \with-link #'ref102 \fill-with-pattern #1 #RIGHT . "Sila, život, zdrave – Сила, живот, здраве" \page-ref #'ref102 "000" "?"
    \with-link #'ref112_1 \fill-with-pattern #1 #RIGHT . "Sila, zdrave e bogatstvo – Сила, здраве е богатство" \page-ref #'ref112_1 "000" "?"
    \with-link #'ref045 \fill-with-pattern #1 #RIGHT . "Sine moj, pazi života – Сине мой, пази живота" \page-ref #'ref045 "000" "?"
    \with-link #'ref133 \fill-with-pattern #1 #RIGHT . "Skitah se po gori i planini – Скитах се по гори и планини" \page-ref #'ref133 "000" "?"
    \with-link #'ref077 \fill-with-pattern #1 #RIGHT . "Skrăbta si ti kaži – Скръбта си ти кажи" \page-ref #'ref077 "000" "?"
    \with-link #'ref073 \fill-with-pattern #1 #RIGHT . "Sladko medeno – Сладко медено" \page-ref #'ref073 "000" "?"
    \with-link #'ref055_1 \fill-with-pattern #1 #RIGHT . "Slănceto na Ljubovta – Слънцето на Любовта" \page-ref #'ref055_1 "000" "?"
    \with-link #'ref125 \fill-with-pattern #1 #RIGHT . "Slănčeva pesen – pčelna mušička– Слънчева песен – пчелна мушичка" \page-ref #'ref125 "000" "?"
  }

  \markup \override #'(baseline-skip . 3.2)
  \column \abs-fontsize #10 {

    \with-link #'ref053 \fill-with-pattern #1 #RIGHT . "Slava Božija – Слава Божия" \page-ref #'ref053 "000" "?"
    \with-link #'ref049 \fill-with-pattern #1 #RIGHT . "Slavejčeta gorski – Славейчета горски" \page-ref #'ref049 "000" "?"
    \with-link #'ref174_2 \fill-with-pattern #1 #RIGHT . "Slušam – Слушам" \page-ref #'ref174_2 "000" "?"
    \with-link #'ref028 \fill-with-pattern #1 #RIGHT . "Stani, stani – Стани, стани" \page-ref #'ref028 "000" "?"
    \with-link #'ref142 \fill-with-pattern #1 #RIGHT . "Stavaj, dăšte! – Ставай, дъще! " \page-ref #'ref142 "000" "?"
    \with-link #'ref021 \fill-with-pattern #1 #RIGHT . "Šte se razveselja – Ще се развеселя" \page-ref #'ref021 "000" "?"
    \with-link #'ref068 \fill-with-pattern #1 #RIGHT . "Što e săštnostta – Що е същността" \page-ref #'ref068 "000" "?"
    \with-link #'ref029 \fill-with-pattern #1 #RIGHT . "Stradna dušo – Страдна душо" \page-ref #'ref029 "000" "?"
    \with-link #'ref217 \fill-with-pattern #1 #RIGHT . "Strannik săm v tozi svjat – Странник съм в този свят" \page-ref #'ref217 "000" "?"
    \with-link #'ref126 \fill-with-pattern #1 #RIGHT . "Studăt vsičko dava – Студът всичко дава" \page-ref #'ref126 "000" "?"
    \with-link #'ref032 \fill-with-pattern #1 #RIGHT . "Šumi – Шуми" \page-ref #'ref032 "000" "?"
    \with-link #'ref090 \fill-with-pattern #1 #RIGHT . "Svetăl den – Светъл ден" \page-ref #'ref090 "000" "?"
    \with-link #'ref169_2 \fill-with-pattern #1 #RIGHT . "Svoboda e potrebna za dušata – Свобода е потребна за душата" \page-ref #'ref169_2 "000" "?"
    \with-link #'ref089 \fill-with-pattern #1 #RIGHT . "Tăgi, skărbi – Тъги, скърби" \page-ref #'ref089 "000" "?"
    \with-link #'ref101_1 \fill-with-pattern #1 #RIGHT . "Tăgi, skărbi sa bogatstvo – Тъги, скърби са богатство" \page-ref #'ref101_1 "000" "?"
    \with-link #'ref066_1 \fill-with-pattern #1 #RIGHT . "Tajnata večerja – Тайната вечеря" \page-ref #'ref066_1 "000" "?"
    \with-link #'ref117 \fill-with-pattern #1 #RIGHT . "Tam daleče – Там далече" \page-ref #'ref117 "000" "?"
    \with-link #'ref066_2 \fill-with-pattern #1 #RIGHT . "Tebe poem – Тебе поем" \page-ref #'ref066_2 "000" "?"
    \with-link #'ref055_2 \fill-with-pattern #1 #RIGHT . "Ti Si projavenata Ljubov – Ти Си проявената Любов" \page-ref #'ref055_2 "000" "?"
    \with-link #'ref214 \fill-with-pattern #1 #RIGHT . "Ti šte spolučiš v života – Ти ще сполучиш в живота"  \page-ref #'ref214 "000" "?"
    \with-link #'ref114 \fill-with-pattern #1 #RIGHT . "Toj ide – Той иде" \page-ref #'ref114 "000" "?"

    \with-link #'ref080_1 \fill-with-pattern #1 #RIGHT . "V mrak tămnota – В мрак, тъмнота" \page-ref #'ref080_1 "000" "?"
    \with-link #'ref094 \fill-with-pattern #1 #RIGHT . "V načalo be Slovoto – В начало бе Словото" \page-ref #'ref094 "000" "?"
    \with-link #'ref110_2 \fill-with-pattern #1 #RIGHT . "V pustinjata na života – В пустинята на живота" \page-ref #'ref110_2 "000" "?"
    \with-link #'ref081 \fill-with-pattern #1 #RIGHT . "V zorite na Života – В зорите на живота" \page-ref #'ref081 "000" "?"
    \with-link #'ref183 \fill-with-pattern #1 #RIGHT . "Variacii – Вариации" \page-ref #'ref183 "000" "?"
    \with-link #'ref200 \fill-with-pattern #1 #RIGHT . "Vătrešnijat glas na Boga –  Вътрешният глас на Бога" \page-ref #'ref200 "000" "?"
    \with-link #'ref095 \fill-with-pattern #1 #RIGHT . "Vdăhnovenie – Вдъхновение" \page-ref #'ref095 "000" "?"
    \with-link #'ref083_2 \fill-with-pattern #1 #RIGHT . "Večer, sutrin – Вечер, сутрин" \page-ref #'ref083_2 "000" "?"
    \with-link #'ref083_1 \fill-with-pattern #1 #RIGHT . "Vehadi – Вехади" \page-ref #'ref083_1 "000" "?"
    \with-link #'ref076 \fill-with-pattern #1 #RIGHT . "Venir Benir – Венир Бенир" \page-ref #'ref076 "000" "?"
    \with-link #'ref096 \fill-with-pattern #1 #RIGHT . "Vesel ti bădi – Весел ти бъди" \page-ref #'ref096 "000" "?"
    \with-link #'ref170_1 \fill-with-pattern #1 #RIGHT . "Vjara svetla I – Вяра светла I" \page-ref #'ref170_1 "000" "?"
    \with-link #'ref170_2 \fill-with-pattern #1 #RIGHT . "Vjara svetla II – Вяра светла II  " \page-ref #'ref170_2 "000" "?"
    \with-link #'ref042 \fill-with-pattern #1 #RIGHT . "Vreme e da vărvim – Време е да вървим" \page-ref #'ref042 "000" "?"
    \with-link #'ref100 \fill-with-pattern #1 #RIGHT . "Vsičko v života e postižimo -  Всичко в живота е постижимо" \page-ref #'ref100 "000" "?"
    \with-link #'ref041 \fill-with-pattern #1 #RIGHT . "Za Nebesnija car – За Небесния Цар" \page-ref #'ref041 "000" "?"
    \with-link #'ref097 \fill-with-pattern #1 #RIGHT . "Zapali se ogănjat – Запали се огънят" \page-ref #'ref097 "000" "?"
    \with-link #'ref176 \fill-with-pattern #1 #RIGHT . "Žitno zărno – Житно зърно" \page-ref #'ref176 "000" "?"
    \with-link #'ref215 \fill-with-pattern #1 #RIGHT . "Zora na novija – život Зора на новия живот" \page-ref #'ref215 "000" "?"
    \with-link #'ref016 \fill-with-pattern #1 #RIGHT . "Zorata na Novija život – Зората на новия живот" \page-ref #'ref016 "000" "?"
    \with-link #'ref112_2 \fill-with-pattern #1 #RIGHT . "Zov na planinata – Зов на планинат" \page-ref #'ref112_2 "000" "?"
  }



} % bookpart

