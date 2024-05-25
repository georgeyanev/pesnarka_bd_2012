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
    \with-link #'ref137 \fill-with-pattern #1 #RIGHT . "А бре, синко –  A bre, sinko" \page-ref #'ref137 "000" "?"
      \with-link #'ref171_2 \fill-with-pattern #1 #RIGHT . "Аз мога да дишам – Az moga da dišam" \page-ref #'ref171_2 "000" "?"
      \with-link #'ref109 \fill-with-pattern #1 #RIGHT . "Аз смея да кажа – Az smeja da kaža " \page-ref #'ref109 "000" "?"
      \with-link #'ref047 \fill-with-pattern #1 #RIGHT . "Аз съм бялото кокиче – Az săm bjaloto kokiče" \page-ref #'ref047 "000" "?"
      \with-link #'ref135 \fill-with-pattern #1 #RIGHT . "Аин фаси  – Ain fasi" \page-ref #'ref135 "000" "?"
      \with-link #'ref064 \fill-with-pattern #1 #RIGHT . "Ангел вопияше –  Angel vopijaše" \page-ref #'ref064 "000" "?"
      \with-link #'ref075 \fill-with-pattern #1 #RIGHT . "Аум –Aum" \page-ref #'ref075 "000" "?"
      \with-link #'ref138 \fill-with-pattern #1 #RIGHT . "Бащина песен – Baština pesen" \page-ref #'ref138 "000" "?"
      \with-link #'ref163 \fill-with-pattern #1 #RIGHT . "Берхан-Ази – Berhan-Azi"  \page-ref #'ref163 "000" "?"
      \with-link #'ref098 \fill-with-pattern #1 #RIGHT . "Бершид Ба – Beršid Ba" \page-ref #'ref098 "000" "?"
      \with-link #'ref074 \fill-with-pattern #1 #RIGHT . "Блага дума – Blaga duma" \page-ref #'ref074 "000" "?"
      \with-link #'ref086_2 \fill-with-pattern #1 #RIGHT . "Благата песен – Blagata pesen" \page-ref #'ref086_2 "000" "?"
      \with-link #'ref024 \fill-with-pattern #1 #RIGHT . "Благославяй – Blagoslavjaj" \page-ref #'ref024 "000" "?"
      \with-link #'ref040 \fill-with-pattern #1 #RIGHT . "Благословен Господ – Blagosloven Gospod" \page-ref #'ref040 "000" "?"
      \with-link #'ref072 \fill-with-pattern #1 #RIGHT . "Благост – Blagost" \page-ref #'ref072 "000" "?"
      \with-link #'ref082 \fill-with-pattern #1 #RIGHT . "Бог е Любов – Bog e Ljubov" \page-ref #'ref082 "000" "?"
      \with-link #'ref166 \fill-with-pattern #1 #RIGHT . "Бог е Любов II – Bog e Ljubov II" \page-ref #'ref166 "000" "?"
      \with-link #'ref206 \fill-with-pattern #1 #RIGHT . "Божията Любов ме озари – Božijata Ljubov me ozari" \page-ref #'ref206 "000" "?"
      \with-link #'ref020 \fill-with-pattern #1 #RIGHT . "Братство, единство – Bratstvo, edinstvo" \page-ref #'ref020 "000" "?"
      \with-link #'ref120 \fill-with-pattern #1 #RIGHT . "Буря – Burja" \page-ref #'ref120 "000" "?"
      \with-link #'ref150 \fill-with-pattern #1 #RIGHT . "Българска идилия – Bălgarska idilija" \page-ref #'ref150 "000" "?"
      \with-link #'ref146 \fill-with-pattern #1 #RIGHT . "Българска рапсодия – Bălgarska rapsodija" \page-ref #'ref146 "000" "?"
      \with-link #'ref081 \fill-with-pattern #1 #RIGHT . "В зорите на живота – V zorite na života" \page-ref #'ref081 "000" "?"
      \with-link #'ref080_1 \fill-with-pattern #1 #RIGHT . "В мрак тъмнота – V mrak tămnota" \page-ref #'ref080_1 "000" "?"
      \with-link #'ref094 \fill-with-pattern #1 #RIGHT . "В начало бе Словото – V načalo be Slovoto" \page-ref #'ref094 "000" "?"
      \with-link #'ref110_2 \fill-with-pattern #1 #RIGHT . "В пустинята на живота – V pustinjata na života" \page-ref #'ref110_2 "000" "?"
      \with-link #'ref183 \fill-with-pattern #1 #RIGHT . "Вариации – Variacii" \page-ref #'ref183 "000" "?"
      \with-link #'ref095 \fill-with-pattern #1 #RIGHT . "Вдъхновение – Vdăhnovenie" \page-ref #'ref095 "000" "?"
      \with-link #'ref076 \fill-with-pattern #1 #RIGHT . "Венир Бенир – Venir Benir" \page-ref #'ref076 "000" "?"
      \with-link #'ref096 \fill-with-pattern #1 #RIGHT . "Весел ти бъди – Vesel ti bădi" \page-ref #'ref096 "000" "?"
      \with-link #'ref083_1 \fill-with-pattern #1 #RIGHT . "Вехади – Vehadi" \page-ref #'ref083_1 "000" "?"
      \with-link #'ref083_2 \fill-with-pattern #1 #RIGHT . "Вечер сутрин – Večer sutrin" \page-ref #'ref083_2 "000" "?"
      \with-link #'ref042 \fill-with-pattern #1 #RIGHT . "Време е да вървим – Vreme e da vărvim" \page-ref #'ref042 "000" "?"
      \with-link #'ref100 \fill-with-pattern #1 #RIGHT . "Всичко в живота е постижимо – Vsičko v života e postižimo" \page-ref #'ref100 "000" "?"
      \with-link #'ref200 \fill-with-pattern #1 #RIGHT . "Вътрешният глас на Бога – Vătrešnijat glas na Boga" \page-ref #'ref200 "000" "?"
      \with-link #'ref170_1 \fill-with-pattern #1 #RIGHT . "Вяра светла I – Vjara svetla I" \page-ref #'ref170_1 "000" "?"
      \with-link #'ref170_2 \fill-with-pattern #1 #RIGHT . "Вяра светла II – Vjara svetla II" \page-ref #'ref170_2 "000" "?"
      \with-link #'ref190 \fill-with-pattern #1 #RIGHT . "Гласът на Живия Господ – Glasăt na Živija Gospod" \page-ref #'ref190 "000" "?"
      \with-link #'ref210 \fill-with-pattern #1 #RIGHT . "Господи, колко те обичам – Gospodi, kolko te običam" \page-ref #'ref210 "000" "?"
      \with-link #'ref078 \fill-with-pattern #1 #RIGHT . "Грее, грее – Gree, gree" \page-ref #'ref078 "000" "?"
      \with-link #'ref174_1 \fill-with-pattern #1 #RIGHT . "Да бих Тe слушал – Da bih Te slušal" \page-ref #'ref174_1 "000" "?"
      \with-link #'ref110_1 \fill-with-pattern #1 #RIGHT . "Да имаш вяра – Da imaš vjara" \page-ref #'ref110_1 "000" "?"
      \with-link #'ref092_2 \fill-with-pattern #1 #RIGHT . "Давай, давай – Davaj, davaj" \page-ref #'ref092_2 "000" "?"
       \with-link #'ref118_1 \fill-with-pattern #1 #RIGHT . "Денят иде – Denjat ide" \page-ref #'ref118_1 "000" "?"
    

  }

  \markup \override #'(baseline-skip . 3.2)
  \column \abs-fontsize #10 {
   
     \with-link #'ref182 \fill-with-pattern #1 #RIGHT . "Десет теми – Deset temi" \page-ref #'ref182 "000" "?"
      \with-link #'ref063 \fill-with-pattern #1 #RIGHT . "Дишай дълбоко – Dišaj dălboko" \page-ref #'ref063 "000" "?"
      \with-link #'ref219 \fill-with-pattern #1 #RIGHT . "Добрата молитва – Dobrata molitva" \page-ref #'ref219 "000" "?"
      \with-link #'ref095_2 \fill-with-pattern #1 #RIGHT . "Добър ден – Dobăr den" \page-ref #'ref095_2 "000" "?"
      \with-link #'ref116 \fill-with-pattern #1 #RIGHT . "До ще ден – Do šte den" \page-ref #'ref116 "000" "?"
      \with-link #'ref136 \fill-with-pattern #1 #RIGHT . "Духай, ветре – Duhaj, vetre " \page-ref #'ref136 "000" "?"
      \with-link #'ref161 \fill-with-pattern #1 #RIGHT . "Духай, ветре II – Duhaj, vetre II" \page-ref #'ref161 "000" "?"
      \with-link #'ref079 \fill-with-pattern #1 #RIGHT . "Духът Божи – Duhăt Boži" \page-ref #'ref079 "000" "?"
      \with-link #'ref101_2 \fill-with-pattern #1 #RIGHT . "Духът ми шепне това – Duhăt mi šepne tova " \page-ref #'ref101_2 "000" "?"
      \with-link #'ref052 \fill-with-pattern #1 #RIGHT . "Дързост в Христа – Dărzost v Hrista" \page-ref #'ref052 "000" "?"
      \with-link #'ref201 \fill-with-pattern #1 #RIGHT . "Една вечна Истина – Edna večna Istina" \page-ref #'ref201 "000" "?"
      \with-link #'ref130 \fill-with-pattern #1 #RIGHT . "Езикът на живата природа – Ezikăt na živata priroda" \page-ref #'ref130 "000" "?"
      \with-link #'ref176 \fill-with-pattern #1 #RIGHT . "Житно зърно – Žitno zărno" \page-ref #'ref176 "000" "?"
      \with-link #'ref041 \fill-with-pattern #1 #RIGHT . "За Небесния Цар – Za Nebesnija Car" \page-ref #'ref041 "000" "?"
      \with-link #'ref097 \fill-with-pattern #1 #RIGHT . "Запали се огънят – Zapali se ogănjat" \page-ref #'ref097 "000" "?"
      \with-link #'ref112_2 \fill-with-pattern #1 #RIGHT . "Зов на планината – Zov na planinata" \page-ref #'ref112_2 "000" "?"
      \with-link #'ref215 \fill-with-pattern #1 #RIGHT . "Зора на новия живот – Zora na novija život" \page-ref #'ref215 "000" "?"
      \with-link #'ref016 \fill-with-pattern #1 #RIGHT . "Зората на новия живот – Zorata na novija život" \page-ref #'ref016 "000" "?"
      \with-link #'ref172 \fill-with-pattern #1 #RIGHT . "Играта на поточето – Igrata na potočeto" \page-ref #'ref172 "000" "?"
      \with-link #'ref056_1 \fill-with-pattern #1 #RIGHT . "Идват дни на радост – Idvat dni na radost" \page-ref #'ref056_1 "000" "?"
      \with-link #'ref177 \fill-with-pattern #1 #RIGHT . "Изворче – Izvorče" \page-ref #'ref177 "000" "?"
      \with-link #'ref030 \fill-with-pattern #1 #RIGHT . "Изгрей ти, мое Слънце – Izgrej ti, moe Slănce" \page-ref #'ref030 "000" "?"
      \with-link #'ref022 \fill-with-pattern #1 #RIGHT . "Изгрява вече ден тържествен – Izgrjava veče den tăržestven" \page-ref #'ref022 "000" "?"
      \with-link #'ref071_1 \fill-with-pattern #1 #RIGHT . "Изгрява Слънцето – Izgrjava Slănceto" \page-ref #'ref071_1 "000" "?"
      \with-link #'ref018 \fill-with-pattern #1 #RIGHT . "Излязъл е сеяч – Izljazăl e sejač" \page-ref #'ref018 "000" "?"
      \with-link #'ref083_3 \fill-with-pattern #1 #RIGHT . "Имаше человек – Imaše čelovek" \page-ref #'ref083_3 "000" "?"
      \with-link #'ref167_2 \fill-with-pattern #1 #RIGHT . "Кажи ми, светли Божи лъч – Kaži mi, svetli Boži lăč" \page-ref #'ref167_2 "000" "?"
      \with-link #'ref211 \fill-with-pattern #1 #RIGHT . "Кажи ми, светли Божи лъч II – Kaži mi, svetli Boži lăč II" \page-ref #'ref211 "000" "?"
      \with-link #'ref086_1 \fill-with-pattern #1 #RIGHT . "Кажи ми Ти Истината – Kaži mi Ti Istinata" \page-ref #'ref086_1 "000" "?"
      \with-link #'ref168 \fill-with-pattern #1 #RIGHT . "Кажи ми Ти Истината II – Kaži mi Ti Istinata II" \page-ref #'ref168 "000" "?"
      \with-link #'ref169_1 \fill-with-pattern #1 #RIGHT . "Кажи ми Ти Истината III – Kaži mi Ti Istinata III" \page-ref #'ref169_1 "000" "?"
      \with-link #'ref092_1 \fill-with-pattern #1 #RIGHT . "Киамет Зену – Kiamet Zenu" \page-ref #'ref092_1 "000" "?"
      \with-link #'ref103 \fill-with-pattern #1 #RIGHT . "Красив е животът – Krasiv e životăt" \page-ref #'ref103 "000" "?"
      \with-link #'ref056_2 \fill-with-pattern #1 #RIGHT . "Към Рила – Kăm Rila" \page-ref #'ref056_2 "000" "?"
      \with-link #'ref054 \fill-with-pattern #1 #RIGHT . "Към Сион – Kăm Sion" \page-ref #'ref054 "000" "?"
      \with-link #'ref167 \fill-with-pattern #1 #RIGHT . "Към „Фир-фюр-фен“ – Kăm „Fir-fjur-fen“" \page-ref #'ref167 "000" "?"
      \with-link #'ref026 \fill-with-pattern #1 #RIGHT . "Любовта е извор – Ljubovta e izvor" \page-ref #'ref026 "000" "?"
      \with-link #'ref173 \fill-with-pattern #1 #RIGHT . "Малката буболечица – Malkata bubolečica" \page-ref #'ref173 "000" "?"
      \with-link #'ref099 \fill-with-pattern #1 #RIGHT . "Малкият извор (Светъл лъч) – Malkijat izvor (Svetăl lăč)" \page-ref #'ref099 "000" "?"
      \with-link #'ref165 \fill-with-pattern #1 #RIGHT . "Малкият планински извор – Malkijat planinski izvor" \page-ref #'ref165 "000" "?"
      \with-link #'ref162 \fill-with-pattern #1 #RIGHT . "Марш на светлите сили – Marš na svetlite sili" \page-ref #'ref162 "000" "?"
      \with-link #'ref222 \fill-with-pattern #1 #RIGHT . "Марш на светлите сили II – Marš na svetlite sili II" \page-ref #'ref222 "000" "?"
       \with-link #'ref080 \fill-with-pattern #1 #RIGHT . "Махар Бену Аба – Mahar Benu Aba" \page-ref #'ref080 "000" "?"
      \with-link #'ref175_2 \fill-with-pattern #1 #RIGHT . "Ме-хейн – Me-hejn" \page-ref #'ref175_2 "000" "?"
        \with-link #'ref175_3 \fill-with-pattern #1 #RIGHT . "Ме-хейн II – Me-hejn II" \page-ref #'ref175_3 "000" "?"
      \with-link #'ref185 \fill-with-pattern #1 #RIGHT . "Мелодия 1 – Красив живот – Melodija 1 – Krasiv život" \page-ref #'ref185 "000" "?"
  }

  \markup \override #'(baseline-skip . 3.2)
  \column \abs-fontsize #10 {
   
    
      \with-link #'ref186 \fill-with-pattern #1 #RIGHT . "Мелодия 2 – Melodija 2" \page-ref #'ref186 "000" "?"
      \with-link #'ref221 \fill-with-pattern #1 #RIGHT . "Мелодия 2 – В радостта – Melodija 2 – V radostta" \page-ref #'ref221 "000" "?"
      \with-link #'ref188 \fill-with-pattern #1 #RIGHT . "Мелодия 3 – Когато се денят – Melodija 3 – Kogato se denjat" \page-ref #'ref188 "000" "?"
      \with-link #'ref189 \fill-with-pattern #1 #RIGHT . "Мелодия 4 – Melodija 4" \page-ref #'ref189 "000" "?"
      \with-link #'ref223 \fill-with-pattern #1 #RIGHT . "Мелодия 4 – Озарение – Melodija 4 – Ozarenie " \page-ref #'ref223 "000" "?"
      \with-link #'ref171_1 \fill-with-pattern #1 #RIGHT . "Милост, благост – Milost, blagost" \page-ref #'ref171_1 "000" "?"
      \with-link #'ref038 \fill-with-pattern #1 #RIGHT . "Милосърдието – Milosărdieto" \page-ref #'ref038 "000" "?"
      \with-link #'ref156 \fill-with-pattern #1 #RIGHT . "Мирът иде – Mirăt ide" \page-ref #'ref156 "000" "?"
      \with-link #'ref158 \fill-with-pattern #1 #RIGHT . "Мирът иде II – Mirăt ide II" \page-ref #'ref158 "000" "?"
      \with-link #'ref093 \fill-with-pattern #1 #RIGHT . "Мисли, право мисли – Misli, pravo misli" \page-ref #'ref093 "000" "?"
      \with-link #'ref108 \fill-with-pattern #1 #RIGHT . "Мога да кажа – Moga da kaža" \page-ref #'ref108 "000" "?"
      \with-link #'ref111 \fill-with-pattern #1 #RIGHT . "Мога да любя – Moga da ljubja" \page-ref #'ref111 "000" "?"
      \with-link #'ref212 \fill-with-pattern #1 #RIGHT . "Моето Слънце днес ще изгрее – Moeto Slănce dnes šte izgree" \page-ref #'ref212 "000" "?"
      \with-link #'ref204 \fill-with-pattern #1 #RIGHT . "Молитва (Вярвам в теб) – Molitva (Vjarvam v teb)" \page-ref #'ref204 "000" "?"
      \with-link #'ref222 \fill-with-pattern #1 #RIGHT . "Молитва (Господи, Ти Си) – Molitva (Gospodi, Ti Si)" \page-ref #'ref222 "000" "?"
      \with-link #'ref178 \fill-with-pattern #1 #RIGHT . "Молитва (Чуй, Господи) – Molitva (Čuj, Gospodi)" \page-ref #'ref178 "000" "?"
      \with-link #'ref087 \fill-with-pattern #1 #RIGHT . "Мусала – Musala" \page-ref #'ref087 "000" "?"
      \with-link #'ref058 \fill-with-pattern #1 #RIGHT . "На белия цвят – Na belija cvjat" \page-ref #'ref058 "000" "?"
      \with-link #'ref037 \fill-with-pattern #1 #RIGHT . "На Учителя – Na Učitelja " \page-ref #'ref037 "000" "?"
      \with-link #'ref060 \fill-with-pattern #1 #RIGHT . "На Христа запейте – Na Hrista zapejte" \page-ref #'ref060 "000" "?"
      \with-link #'ref036 \fill-with-pattern #1 #RIGHT . "Напред да ходим – Napred da hodim" \page-ref #'ref036 "000" "?"
      \with-link #'ref048 \fill-with-pattern #1 #RIGHT . "Напред, чада, напред – Napred, čada, napred" \page-ref #'ref048 "000" "?"
      \with-link #'ref154 \fill-with-pattern #1 #RIGHT . "Не ли думах – Ne li dumah" \page-ref #'ref154 "000" "?"
      \with-link #'ref050 \fill-with-pattern #1 #RIGHT . "Небето се отваря – Nebeto se otvarja" \page-ref #'ref050 "000" "?"
      \with-link #'ref091 \fill-with-pattern #1 #RIGHT . "Нева санзу – Neva sanzu" \page-ref #'ref091 "000" "?"
      \with-link #'ref062 \fill-with-pattern #1 #RIGHT . "Нови дрехи – Novi drehi " \page-ref #'ref062 "000" "?"
      \with-link #'ref191 \fill-with-pattern #1 #RIGHT . "Новото Битие – Novoto Bitie" \page-ref #'ref191 "000" "?"
      \with-link #'ref051 \fill-with-pattern #1 #RIGHT . "О, Учителю благати – O, Učitelju blagati" \page-ref #'ref051 "000" "?"
      \with-link #'ref134 \fill-with-pattern #1 #RIGHT . "Обетована земя – Obetovana zemja" \page-ref #'ref134 "000" "?"
      \with-link #'ref216 \fill-with-pattern #1 #RIGHT . "Отче наш – Otče naš" \page-ref #'ref216 "000" "?"
      \with-link #'ref180 \fill-with-pattern #1 #RIGHT . "Песен за двете сестри – Pesen za dvete sestri" \page-ref #'ref180 "000" "?"
      \with-link #'ref067 \fill-with-pattern #1 #RIGHT . "Песен на гласните букви – Pesen na glasnite bukvi" \page-ref #'ref067 "000" "?"
      \with-link #'ref164 \fill-with-pattern #1 #RIGHT . "Песен на детето – Pesen na deteto " \page-ref #'ref164 "000" "?"
      \with-link #'ref106 \fill-with-pattern #1 #RIGHT . "Песен на зората – Pesen na zorata" \page-ref #'ref106 "000" "?"
      \with-link #'ref115 \fill-with-pattern #1 #RIGHT . "Песен на светлия път – Pesen na svetlija păt" \page-ref #'ref115 "000" "?"
      \with-link #'ref207 \fill-with-pattern #1 #RIGHT . "Песента на ангелите – Pesenta na angelite" \page-ref #'ref207 "000" "?"
      \with-link #'ref175 \fill-with-pattern #1 #RIGHT . "Писмото – Pismoto" \page-ref #'ref175 "000" "?"
      \with-link #'ref119 \fill-with-pattern #1 #RIGHT . "Подмладяване – Podmladjavane" \page-ref #'ref119 "000" "?"
      \with-link #'ref044 \fill-with-pattern #1 #RIGHT . "Поздрав на Учителя – Pozdrav na Učitelja" \page-ref #'ref044 "000" "?"
      \with-link #'ref132 \fill-with-pattern #1 #RIGHT . "Правда – Pravda" \page-ref #'ref132 "000" "?"
      \with-link #'ref107 \fill-with-pattern #1 #RIGHT . "При всичките условия – Pri vsičkite uslovija" \page-ref #'ref107 "000" "?"
      \with-link #'ref118_2 \fill-with-pattern #1 #RIGHT . "Пролет – Prolet" \page-ref #'ref118_2 "000" "?"
      \with-link #'ref181 \fill-with-pattern #1 #RIGHT . "Пролетна песен (Ето пристига) – Proletna pesen (Eto pristiga)" \page-ref #'ref181 "000" "?"
      \with-link #'ref124 \fill-with-pattern #1 #RIGHT . "Пролетна песен (Мили Боже) – Proletna pesen (Mili Bože)" \page-ref #'ref124 "000" "?"
      \with-link #'ref057 \fill-with-pattern #1 #RIGHT . "Псалом 91 – Psalom 91" \page-ref #'ref057 "000" "?"
      \with-link #'ref174_3 \fill-with-pattern #1 #RIGHT . "Радост – Radost" \page-ref #'ref174_3 "000" "?"

  }

  \markup \override #'(baseline-skip . 3.2)
  \column \abs-fontsize #10 {

      \with-link #'ref122 \fill-with-pattern #1 #RIGHT . "Радост и скръб – Radost i skrăb" \page-ref #'ref122 "000" "?"
      \with-link #'ref155_1 \fill-with-pattern #1 #RIGHT . "Радост, радост за душата – Radost, radost za dušata" \page-ref #'ref155_1 "000" "?"
      \with-link #'ref121 \fill-with-pattern #1 #RIGHT . "Ранен час – Ranen čas" \page-ref #'ref121 "000" "?"
      \with-link #'ref046 \fill-with-pattern #1 #RIGHT . "Росна капка – Rosna kapka" \page-ref #'ref046 "000" "?"
      \with-link #'ref090 \fill-with-pattern #1 #RIGHT . "Светъл ден – Svetăl den" \page-ref #'ref090 "000" "?"
      \with-link #'ref169_2 \fill-with-pattern #1 #RIGHT . "Свобода е потребна за душата – Svoboda e potrebna za dušata" \page-ref #'ref169_2 "000" "?"
      \with-link #'ref076_2 \fill-with-pattern #1 #RIGHT . "Сила жива – Sila živa" \page-ref #'ref076_2 "000" "?"
      \with-link #'ref071_2 \fill-with-pattern #1 #RIGHT . "Сила жива, изворна – Sila živa, izvorna" \page-ref #'ref071_2 "000" "?"
      \with-link #'ref102 \fill-with-pattern #1 #RIGHT . "Сила, живот, здраве – Sila, život, zdrave" \page-ref #'ref102 "000" "?"
      \with-link #'ref112_1 \fill-with-pattern #1 #RIGHT . "Сила, здраве е богатство – Sila, zdrave e bogatstvo" \page-ref #'ref112_1 "000" "?"
      \with-link #'ref045 \fill-with-pattern #1 #RIGHT . "Сине мой, пази живота – Sine moj, pazi života" \page-ref #'ref045 "000" "?"
      \with-link #'ref133 \fill-with-pattern #1 #RIGHT . "Скитах се по гори и планини – Skitah se po gori i planini" \page-ref #'ref133 "000" "?"
      \with-link #'ref077 \fill-with-pattern #1 #RIGHT . "Скръбта си ти кажи – Skrăbta si ti kaži" \page-ref #'ref077 "000" "?"
      \with-link #'ref053 \fill-with-pattern #1 #RIGHT . "Слава Божия – Slava Božija" \page-ref #'ref053 "000" "?"
      \with-link #'ref049 \fill-with-pattern #1 #RIGHT . "Славейчета горски – Slavejčeta gorski" \page-ref #'ref049 "000" "?"
      \with-link #'ref073 \fill-with-pattern #1 #RIGHT . "Сладко медено – Sladko medeno" \page-ref #'ref073 "000" "?"
      \with-link #'ref174_2 \fill-with-pattern #1 #RIGHT . "Слушам – Slušam " \page-ref #'ref174_2 "000" "?"
      \with-link #'ref055_1 \fill-with-pattern #1 #RIGHT . "Слънцето на Любовта – Slănceto na Ljubovta" \page-ref #'ref055_1 "000" "?"
      \with-link #'ref125 \fill-with-pattern #1 #RIGHT . "Слънчева песен – Slănčeva pesen" \page-ref #'ref125 "000" "?"
      \with-link #'ref142 \fill-with-pattern #1 #RIGHT . "Ставай, дъще! – Stavaj, dăšte! " \page-ref #'ref142 "000" "?"
      \with-link #'ref028 \fill-with-pattern #1 #RIGHT . "Стани, стани – Stani, stani" \page-ref #'ref028 "000" "?"
      \with-link #'ref029 \fill-with-pattern #1 #RIGHT . "Страдна душо – Stradna dušo" \page-ref #'ref029 "000" "?"
      \with-link #'ref217 \fill-with-pattern #1 #RIGHT . "Странник съм в този свят – Strannik săm v tozi svjat " \page-ref #'ref217 "000" "?"
      \with-link #'ref126 \fill-with-pattern #1 #RIGHT . "Студът всичко дава – Studăt vsičko dava" \page-ref #'ref126 "000" "?"
      \with-link #'ref025 \fill-with-pattern #1 #RIGHT . "Събуди се, братко мили – Săbudi se, bratko mili" \page-ref #'ref025 "000" "?"
      \with-link #'ref039 \fill-with-pattern #1 #RIGHT . "Сърдечен зов – Sărdečen zov" \page-ref #'ref039 "000" "?"
      \with-link #'ref066_1 \fill-with-pattern #1 #RIGHT . "Тайната вечеря – Tajnata večerja " \page-ref #'ref066_1 "000" "?"
      \with-link #'ref117 \fill-with-pattern #1 #RIGHT . "Там далече – Tam daleče" \page-ref #'ref117 "000" "?"
      \with-link #'ref066_2 \fill-with-pattern #1 #RIGHT . "Тебе поем – Tebe poem" \page-ref #'ref066_2 "000" "?"
      \with-link #'ref055_2 \fill-with-pattern #1 #RIGHT . "Ти си проявената Любов – Ti si projavenata Ljubov" \page-ref #'ref055_2 "000" "?"
      \with-link #'ref214 \fill-with-pattern #1 #RIGHT . "Ти ще сполучиш в живота – Ti šte spolučiš v života "  \page-ref #'ref214 "000" "?"
      \with-link #'ref114 \fill-with-pattern #1 #RIGHT . "Той иде – Toj ide " \page-ref #'ref114 "000" "?"
      \with-link #'ref089 \fill-with-pattern #1 #RIGHT . "Тъги, скърби – Tăgi, skărbi" \page-ref #'ref089 "000" "?"
      \with-link #'ref101_1 \fill-with-pattern #1 #RIGHT . "Тъги, скърби са богатство – Tăgi, skărbi sa bogatstvo" \page-ref #'ref101_1 "000" "?"
      \with-link #'ref070 \fill-with-pattern #1 #RIGHT . "Фир-фюр-фен – Благославяй – Fir-fjur-fen – Blagoslavjaj" \page-ref #'ref070 "000" "?"
      \with-link #'ref104 \fill-with-pattern #1 #RIGHT . "Химн на Великата душа – Himn na Velikata duša " \page-ref #'ref104 "000" "?"
      \with-link #'ref202 \fill-with-pattern #1 #RIGHT . "Химн на Слънцето – Himn na Slănceto" \page-ref #'ref202 "000" "?"
      \with-link #'ref088 \fill-with-pattern #1 #RIGHT . "Ходи, ходи – Hodi, hodi" \page-ref #'ref088 "000" "?"
      \with-link #'ref113 \fill-with-pattern #1 #RIGHT . "Цветята цъфтяха – Cvetjata căftjaha" \page-ref #'ref113 "000" "?"
      \with-link #'ref032 \fill-with-pattern #1 #RIGHT . "Шуми – Šumi" \page-ref #'ref032 "000" "?"
      \with-link #'ref021 \fill-with-pattern #1 #RIGHT . "Ще се развеселя – Šte se razveselja" \page-ref #'ref021 "000" "?"
      \with-link #'ref068 \fill-with-pattern #1 #RIGHT . "Що е същността – Što e săštnostta" \page-ref #'ref068 "000" "?"


  }

  

} % bookpart

