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
      \fill-with-pattern #1 #RIGHT . "А бре, синко – Angel vopijaše" \page-ref #'ref137 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Аз мога да дишам – Az moga da disham" \page-ref #'ref171_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Аз смея да кажа – Az smeya da kaza" \page-ref #'ref109 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Аз съм бялото кокиче –  Az săm bjaloto kokiče" \page-ref #'ref047 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Аин фаси – Ain fasi" \page-ref #'ref135 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ангел вопияше – Angel vopiyashe" \page-ref #'ref064 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Аум – Aum" \page-ref #'ref075 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Бащина песен – Угледна мома – Bashtina pesen – ugledna moma" \page-ref #'ref138 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Берхан Ази – Berhan Azi" \page-ref #'ref163 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Бершид ба – Bershid ba" \page-ref #'ref098 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Блага дума – Blaga duma" \page-ref #'ref074 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Благата песен – Blagata pesen" \page-ref #'ref086_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Благославяй – Blagoslavjaj" \page-ref #'ref024 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Благословен Господ – Blagosloven Gospod" \page-ref #'ref040 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Бог е Любов – Bog e Lyubov" \page-ref #'ref082 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Бог е Любов II – Bog e Lyubov II" \page-ref #'ref166 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Божията Любов ме озари – Bozhiyata Lyubov me ozari" \page-ref #'ref206 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Братство, единство – Bratstvo, edinstvo" \page-ref #'ref020 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Буря – Burya" \page-ref #'ref120 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Българска идилия –  Balgarska idiliya" \page-ref #'ref150 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Българска рапсодия – Bylgarska rapsodia" \page-ref #'ref145 "000" "?"
      \fill-with-pattern #1 #RIGHT . "В зорите на Живота – V zorite na zhivot " \page-ref #'ref081 "000" "?"
      \fill-with-pattern #1 #RIGHT . "В мрак тъмнота – V mrak tamnota" \page-ref #'ref080_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "В начало бе Словото – V nachalo be Slovoto" \page-ref #'ref094 "000" "?"
      \fill-with-pattern #1 #RIGHT . "В пустинята на живота – V pustinyata na zhivota" \page-ref #'ref095 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вдъхновение – Vdahnovenie" \page-ref #'ref094 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Венир Бенир – Venir benir" \page-ref #'ref076 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Весел ти бъди – Vesel ti badi" \page-ref #'ref096 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вехади – Vehadi" \page-ref #'ref083_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вечер сутрин – Vecher, sutrin" \page-ref #'ref083_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Време е да вървим – Vreme e da vărvim" \page-ref #'ref042 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Всичко в живота е постижимо – Vsichko v zhivota e postizhimo" \page-ref #'ref100 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вътрешният глас на Бога – Vatreshniyat glas na Boga" \page-ref #'ref200 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вяра светла I – Vyara svetla I " \page-ref #'ref170_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вяра светла II – Vyara svetla II" \page-ref #'ref170_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Вяра светла III – Vyara svetla III" \page-ref #'ref170_3 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Гласът на Живия Господ – Glasat na Zhivija Gospod" \page-ref #'ref190 "000" "?"
  }
  
  \markup \override #'(baseline-skip . 2.5) 
    \column \fontsize  #+2.5 { 
      \fill-with-pattern #1 #RIGHT . "Господи, колко те обичам – Gospodi, kolko te obicham" \page-ref #'ref210 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Грее, грее – Gree, gree" \page-ref #'ref078 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Да бих Тe слушал – Da bih Te slushal" \page-ref #'ref174_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Да имаш вяра – Da imash vyara" \page-ref #'ref110_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Давай, давай – Davay, davay" \page-ref #'ref092_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Денят иде – Denyat ide" \page-ref #'ref118_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Десет теми – Deset temi" \page-ref #'ref182 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Дишай дълбоко – Dišaj dălboko" \page-ref #'ref063 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Добър ден – Dobar den" \page-ref #'ref095_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Доще ден – Doste den" \page-ref #'ref116 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Духай ветре – Duhay vetre" \page-ref #'ref136 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Духай ветре II – Duhay vetre II" \page-ref #'ref161 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Духът ми шепне това – Duhat mi shepne tova" \page-ref #'ref101_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Дързост в Христа – Dărzost v Hrista" \page-ref #'ref052 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Една вечна истина... – Edna vechna istina..." \page-ref #'ref201 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Езикът на живата природа – Ezikat na zhivata priroda" \page-ref #'ref130 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Житно зърно – Zhitno zarno" \page-ref #'ref176 "000" "?"
      \fill-with-pattern #1 #RIGHT . "За Небесния цар – Za Nebesnija car" \page-ref #'ref041 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Запали се огънят – Zapali se oganyat" \page-ref #'ref097 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Зов на планината – Zov na planinata" \page-ref #'ref112_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Зора на Новия живот – Zora na Novija život" \page-ref #'ref215 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Зората на Новия живот – Zorata na Novija život" \page-ref #'ref016 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Играта на поточето – Igrata na potocheto" \page-ref #'ref172 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Идват дни на радост – Idvat dni na radost" \page-ref #'ref056_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Изворче – Izvorche" \page-ref #'ref177 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Изгрей ти, мое Слънце – Izgrej ti, moe Slănce" \page-ref #'ref030 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Изгрява вече ден тържествен – Izgrjava veče den tăržestven" \page-ref #'ref022 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Изгрява слънцето – Izgrjava slănceto" \page-ref #'ref071_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Излязъл е сеяч – Izlyazal e seyach" \page-ref #'ref018 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Имаше человек  – Imashe chelovek" \page-ref #'ref083_3 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината – Kazhi mi ti istinata" \page-ref #'ref086_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината II – Kazhi mi ti istinata II" \page-ref #'ref168 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината III – Kazhi mi ti istinata III" \page-ref #'ref169_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Кажи ми светли Божи лъч   – Kazhi mi svetli Bozhi lach " \page-ref #'ref167_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Кажи ми светли Божи лъч II  – Kazhi mi svetli Bozhi lach II" \page-ref #'ref211 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Киамет Зену – Kiamet Zenu" \page-ref #'ref092_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Красив е животът – Krasiv e zhivotat" \page-ref #'ref103 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мелодия – Красив Живот – Melodiya – Krasiv Zhivot" \page-ref #'ref185 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Към Фир-фюр-фен – Kam Fir-fyur-fen" \page-ref #'ref167 "000" "?"
  }

  \markup \override #'(baseline-skip . 2.5)
    \column \fontsize  #+2.5 { 
      \fill-with-pattern #1 #RIGHT . "Към Рила – Kăm Rila" \page-ref #'ref056_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Към Сион – Kăm Sion" \page-ref #'ref054 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Любовта е извор – Ljubovta e izvor" \page-ref #'ref026 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Малката буболечица – Malkata bubolechitsa" \page-ref #'ref173 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Малкият извор (Светъл лъч) – Malkiyat izvor (Svetal lach)" \page-ref #'ref161 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Малкият планински извор – Malkiyat planinski izvor" \page-ref #'ref165 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Марш на светлите сили – Marsh na svetlite sili" \page-ref #'ref162 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Марш на светлите сили II – Marsh na svetlite sili II" \page-ref #'ref162_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Махар Бену Аба – Mahar Benu Aba" \page-ref #'ref080 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мелодия – Красив Живот – Melodiya – Krasiv Zhivot" \page-ref #'ref185 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мелодия – В радостта на деня – Melodiya – V radostta na denya" \page-ref #'ref186 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мелодия – Когато се денят... – Melodia – Kogato se denyat..." \page-ref #'ref188 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мелодия – Озарение – Melodiya – Osarenie" \page-ref #'ref189 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ме-хейн – Me-hein" \page-ref #'ref175_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Милост, благост – Milost, blagost" \page-ref #'ref171_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Милосърдието – Milosărdieto" \page-ref #'ref038 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мирът иде – Mirat ide" \page-ref #'ref156 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мирът иде II – Mirat ide II" \page-ref #'ref158 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мирът иде вече – Mirat ide veche" \page-ref #'ref155_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мисли, право мисли – Misli, pravo misli" \page-ref #'ref093 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мога да кажа – Moga da kazha" \page-ref #'ref108 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мога да любя – Moga da lyubya" \page-ref #'ref111 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Моето слънце днес ще изгрее – Moeto slantse dnes ste izgree" \page-ref #'ref212 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Молитва (Чуй, Господи) – Molitva (Chuy, Gospodi)" \page-ref #'ref178 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Молитва (Господи, Ти Си) – Molitva (Господи, Ти, Си)" \page-ref #'ref179 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Молитва (Вярвам в теб) – Molitva (Вярвам в теб)" \page-ref #'ref204 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Мусала – Mussala" \page-ref #'ref087 "000" "?"
      \fill-with-pattern #1 #RIGHT . "На белия цвят – Na belija cvjat" \page-ref #'ref058 "000" "?"
      \fill-with-pattern #1 #RIGHT . "На Учителя – Na Uchitelya" \page-ref #'ref037 "000" "?"
      \fill-with-pattern #1 #RIGHT . "На Христа запейте – Na Hrista zapejte" \page-ref #'ref060 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Напред да ходим – Napred da hodim" \page-ref #'ref036 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Напред, чада, напред – Napred, čada, napred" \page-ref #'ref048 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Не ли думах – Ne li dumah" \page-ref #'ref164 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Небето се отваря – Nebeto se otvarja" \page-ref #'ref050 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Нева Сензу – Neva Senzu" \page-ref #'ref091 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Нови дрехи – Novi drehi" \page-ref #'ref062 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Новото Битие – Novoto Bitie" \page-ref #'ref191 "000" "?"
      \fill-with-pattern #1 #RIGHT . "О, Учителю благати – O, Učitelju blagati" \page-ref #'ref051 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Обетована земя – Obetovena zemya" \page-ref #'ref134 "000" "?"
  }

  \markup \override #'(baseline-skip . 2.5)
    \column \fontsize  #+2.5 { 
      \fill-with-pattern #1 #RIGHT . "Отче наш, не ни ... – Otche nash, ne ni ..." \page-ref #'ref216 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Песен за двете сестри – Pesen za dvete sestri" \page-ref #'ref180 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Песен на гласните букви – Pesen na glasnite bukvi" \page-ref #'ref067 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Песен на детето – Pesen na deteto" \page-ref #'ref164 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Песен на зората – Pesen na zorata" \page-ref #'ref106 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Песен на светлия път – Pesen na svetliya pat" \page-ref #'ref115 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Песента на ангелите – Pesenta na angelite" \page-ref #'ref207 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Писмото – Pismoto" \page-ref #'ref175 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Подмладяване – Podmladyavane" \page-ref #'ref119 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Поздрав на Учителя – Pozdrav na Učitelja" \page-ref #'ref044 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Правда – Pravda" \page-ref #'ref132 "000" "?"
      \fill-with-pattern #1 #RIGHT . "При всичките условия – Pri vsichkite usloviya" \page-ref #'ref107 "000" "?"
      \fill-with-pattern #1 #RIGHT . "При източника – Pri iztochnika" \page-ref #'ref034 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Пролет – Prolet" \page-ref #'ref118_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Пролетна песен (Мили Боже) – Proletna pesen (Mili Bozhe)" \page-ref #'ref124 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Пролетна песен (Ето пристига) – Proletna pesen (Eto pristiga)" \page-ref #'ref124 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Псалм 91 – Psalm 91" \page-ref #'ref057 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Радост – Radost" \page-ref #'ref174_3 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Радост и скръб – Radost i skrab" \page-ref #'ref122 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Радост, радост за душата – Radost, radost za dushata" \page-ref #'ref155_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ранен час – Ranen chas" \page-ref #'ref124 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Росна капка – Rosna kapka" \page-ref #'ref046 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Светъл ден – Svetal den" \page-ref #'ref090 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Свобода е потребна за душата – Svoboda e potrebna za dushata" \page-ref #'ref169_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сила жива – Sila ziva" \page-ref #'ref076_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сила жива, изворна – Sila živa, izvorna" \page-ref #'ref071_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сила, Живот, здраве – Sila,  Zhivot, zdrave" \page-ref #'ref102 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сила, здраве е богатство – Sila, zdrave e bogatstvo" \page-ref #'ref112_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сине мой, пази живота – Sine moj, pazi života" \page-ref #'ref045 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Скитах се по гори и планини – Skitah se po gori i planini" \page-ref #'ref133 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Скръбта си ти кажи – Skrabta si ti kazhi" \page-ref #'ref077 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Слава Божия – Slava Božija" \page-ref #'ref053 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Славейчета горски – Slavejčeta gorski" \page-ref #'ref049 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сладко медено – Sladko medeno" \page-ref #'ref073 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Слушам – Slusham" \page-ref #'ref174_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Слънцето на Любовта – Slănceto na Ljubovta" \page-ref #'ref055_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Слънчева песен – пчелна – Slancheva pesen – pchelna" \page-ref #'ref125 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ставай, дъще! – Stavay, dashte" \page-ref #'ref142 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Стани, стани – Stani, stani" \page-ref #'ref028 "000" "?"
 }

  \markup \override #'(baseline-skip . 2.5)
    \column \fontsize  #+2.5 { 
      \fill-with-pattern #1 #RIGHT . "Страдна душо – Stradna dusho" \page-ref #'ref029 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Странник съм в този свят – Strannik sam v tozi svyat" \page-ref #'ref217 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Студът всичко дава – Studat vsichko dava" \page-ref #'ref126 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Събуди се братко мили – Săbudi se bratko mili" \page-ref #'ref025 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Сърдечен зов – Sărdečen zov" \page-ref #'ref039 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Тайната вечеря – Tajnata večerja" \page-ref #'ref066_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Там далече – Tam daleche" \page-ref #'ref117 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Тебе поем – Tebe poem" \page-ref #'ref066_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ти си проявената Любов – Ti si projavenata Ljubov" \page-ref #'ref055_2 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ти ще сполучиш в Живота – Ti shte spoluchish v zhivota" \page-ref #'ref214 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Той иде – Toy ide" \page-ref #'ref114 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Тъги, скърби – Tagi, skarbi" \page-ref #'ref089 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Тъги, скърби са богатство – Tagi, skarbi sa bogatstvo" \page-ref #'ref101_1 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Фир-фюр-фен - Благославяй – Fir-fjur-fen – Blagoslavaj" \page-ref #'ref070 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Химн на великата Душа – Himn na velikata Dusha" \page-ref #'ref104 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Химни на Слънцето – Himni na slantseto" \page-ref #'ref202 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ходи, ходи – Hodi, hodi" \page-ref #'ref088 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Цветята цъфтяха – Tvetyata tsaftyaha" \page-ref #'ref113 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Шуми – Šumi" \page-ref #'ref032 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Ще се развеселя – Šte se razveselja" \page-ref #'ref021 "000" "?"
      \fill-with-pattern #1 #RIGHT . "Що е същността – Sto e sastnostta" \page-ref #'ref068 "000" "?"
 }

} % bookpart

