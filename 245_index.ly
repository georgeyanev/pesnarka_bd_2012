\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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
  
    tocTitleMarkup = \markup \fontsize  #+6.5 \bold \column {
      \fill-line { \null "INHALT" \null }
      \null
    }

    tocItemMarkup = \markup \fontsize  #+3.5 \fill-line {
      \fromproperty #'toc:text \tocItemWithDotsMarkup \fromproperty #'toc:page 
    }  

    tocActMarkup = \markup \large \column {
      \hspace #1
      \fill-line { \null \fontsize #+4 \bold \fromproperty #'toc:text \null }
      \hspace #1
    }    
  }
 
  \markup \large \column {
      \fill-line { \null \fontsize #+4 \bold "Alphabetischer Index" \null }
      \hspace #1
  }

  \markup \column \fontsize  #+2.5 {
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "А бре, синко – A bre, sinko" \page-ref #'ref137 "0" "?"
    }
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аз мога да дишам – Az moga da disham" \page-ref #'ref171_2 "0" "?"
    }
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аз смея да кажа – Az smeya da kaza" \page-ref #'ref109 "0" "?"
    }
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аз съм бялото кокиче –  Аz sam byaloto kokiche" \page-ref #'ref047 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аин фаси – Ain fasi" \page-ref #'ref135 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ангел вопияше – Angel vopiyashe" \page-ref #'ref064 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Аум – Aum" \page-ref #'ref075 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Бащина песен – Угледна мома – Bashtina pesen – ugledna moma" \page-ref #'ref138 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Берхан Ази – Berhan Azi" \page-ref #'ref163 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Бершид ба – Bershid ba" \page-ref #'ref098 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Блага дума – Blaga duma" \page-ref #'ref074 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Благата песен – Blagata pesen" \page-ref #'ref086_2 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Благославяй – Blagoslavyay" \page-ref #'ref024 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Благословен Господ – Blagosloven Gospod" \page-ref #'ref040 "0" "?"
    }

   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Бог е Любов – Bog e Lyubov" \page-ref #'ref082 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Бог е Любов II – Bog e Lyubov II" \page-ref #'ref166 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Божията Любов ме озари – Bozhiyata Lyubov me ozari" \page-ref #'ref206 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Братство, единство – Bratstvo, edinstvo" \page-ref #'ref020 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Буря – Burya" \page-ref #'ref120 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Българска идилия –  Balgarska idiliya" \page-ref #'ref150 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "Българска рапсодия – Bylgarska rapsodia" \page-ref #'ref145 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "В зорите на Живота – V zorite na zhivot " \page-ref #'ref081 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "В мрак тъмнота – V mrak tamnota" \page-ref #'ref080_1 "0" "?"
    }
   \fill-line {
      \fill-with-pattern #1 #RIGHT . "В начало бе Словото – V nachalo be Slovoto" \page-ref #'ref094 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "В пустинята на живота – V pustinyata na zhivota" \page-ref #'ref095 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вдъхновение – Vdahnovenie" \page-ref #'ref094 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Венир Бенир – Venir benir" \page-ref #'ref076 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Весел ти бъди – Vesel ti badi" \page-ref #'ref096 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вехади – Vehadi" \page-ref #'ref083_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вечер сутрин – Vecher, sutrin" \page-ref #'ref083_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Време е да вървим – Vreme e da varvim" \page-ref #'ref042 "0" "?"
    }
  


  }

    \markup \column \fontsize  #+2.5 { 

          \fill-line {
      \fill-with-pattern #1 #RIGHT . "Всичко в живота е постижимо – Vsichko v zhivota e postizhimo" \page-ref #'ref100 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вътрешният глас на Бога – Vatreshniyat glas na Boga" \page-ref #'ref200 "0" "?"
    }

      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вяра светла I – Vyara svetla I " \page-ref #'ref170_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вяра светла II – Vyara svetla II" \page-ref #'ref170_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Вяра светла III – Vyara svetla III" \page-ref #'ref170_3 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Гласът на Живия Господ – Glasat na Zhivija Gospod" \page-ref #'ref190 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Господи, колко те обичам – Gospodi, kolko te obicham" \page-ref #'ref210 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Грее, грее – Gree, gree" \page-ref #'ref078 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Да бих Тe слушал – Da bih Te slushal" \page-ref #'ref174_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Да имаш вяра – Da imash vyara" \page-ref #'ref110_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Давай, давай – Davay, davay" \page-ref #'ref092_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Денят иде – Denyat ide" \page-ref #'ref118_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Десет теми – Deset temi" \page-ref #'ref182 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Дишай дълбоко – Dishay dalboko" \page-ref #'ref063 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Добър ден – Dobar den" \page-ref #'ref095_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Доще ден – Doste den" \page-ref #'ref116 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Духай ветре – Duhay vetre" \page-ref #'ref136 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Духай ветре II – Duhay vetre II" \page-ref #'ref161 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Духът ми шепне това – Duhat mi shepne tova" \page-ref #'ref101_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Дързост в Христа – Darzost v Hrista" \page-ref #'ref052 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Една вечна истина... – Edna vechna istina..." \page-ref #'ref201 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Езикът на живата природа – Ezikat na zhivata priroda" \page-ref #'ref130 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Житно зърно – Zhitno zarno" \page-ref #'ref176 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "За Небесния цар – Za Nebesniya tsar" \page-ref #'ref041 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Запали се огънят – Zapali se oganyat" \page-ref #'ref097 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Зов на планината – Zov na planinata" \page-ref #'ref112_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Зора на Новия живот – Zora na Novia zhivot" \page-ref #'ref215 "0" "?"
    }
        \fill-line {
      \fill-with-pattern #1 #RIGHT . "Зора на Новия живот – Zora na Novia zhivot" \page-ref #'ref016 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Играта на поточето – Igrata na potocheto" \page-ref #'ref172 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Идват дни на радост – Idvat dni na radost" \page-ref #'ref056_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Изворче – Izvorche" \page-ref #'ref177 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Изгрей ти, мое Слънце – Izgrey ti, moe Slantse" \page-ref #'ref030 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Изгрява вече ден тържествен – Izgryava veche den tarzhestven" \page-ref #'ref022 "0" "?"
    }
    
    }


  \markup \column \fontsize  #+2.5 { 

  \fill-line {
      \fill-with-pattern #1 #RIGHT . "Изгрява слънцето – Izgryava slantzeto" \page-ref #'ref071_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Излязъл е сеяч – Izlyazal e seyach" \page-ref #'ref018 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Имаше человек  – Imashe chelovek" \page-ref #'ref083_3 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината – Kazhi mi ti istinata" \page-ref #'ref086_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината II – Kazhi mi ti istinata II" \page-ref #'ref168 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Кажи ми ти истината III – Kazhi mi ti istinata III" \page-ref #'ref169_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Кажи ми светли Божи лъч   – Kazhi mi svetli Bozhi lach " \page-ref #'ref167_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Кажи ми светли Божи лъч II  – Kazhi mi svetli Bozhi lach II" \page-ref #'ref211 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Киамет Зену – Kiamet Zenu" \page-ref #'ref092_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Красив е животът – Krasiv e zhivotat" \page-ref #'ref103 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мелодия – Красив Живот – Melodiya – Krasiv Zhivot" \page-ref #'ref185 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Към Фир-фюр-фен – Kam Fir-fyur-fen" \page-ref #'ref167 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Към Рила – Kam Rila" \page-ref #'ref056_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Към Сион – Kam Sion" \page-ref #'ref054 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Любовта е извор – Lyubovta e izvor" \page-ref #'ref026 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Малката буболечица – Malkata bubolechitsa" \page-ref #'ref173 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Малкият извор (Светъл лъч) – Malkiyat izvor (Svetal lach)" \page-ref #'ref161 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Малкият планински извор – Malkiyat planinski izvor" \page-ref #'ref165 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Марш на светлите сили – Marsh na svetlite sili" \page-ref #'ref162 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Марш на светлите сили II – Marsh na svetlite sili II" \page-ref #'ref162_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Махар Бену Аба – Mahar Benu Aba" \page-ref #'ref080 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мелодия – Красив Живот – Melodiya – Krasiv Zhivot" \page-ref #'ref185 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мелодия – В радостта на деня – Melodiya – V radostta na denya" \page-ref #'ref186 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мелодия – Когато се денят... – Melodia – Kogato se denyat..." \page-ref #'ref188 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мелодия – Озарение – Melodiya – Osarenie" \page-ref #'ref189 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ме-хейн – Me-hein" \page-ref #'ref175_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Милост, благост – Milost, blagost" \page-ref #'ref171_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Милосърдието – Milosardieto" \page-ref #'ref038 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мирът иде – Mirat ide" \page-ref #'ref156 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мирът иде II – Mirat ide II" \page-ref #'ref158 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мирът иде вече – Mirat ide veche" \page-ref #'ref155_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мисли, право мисли – Misli, pravo misli" \page-ref #'ref093 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мога да кажа – Moga da kazha" \page-ref #'ref108 "0" "?"
    }
     

  }

\markup \column \fontsize  #+2.5 {  \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мога да любя – Moga da lyubya" \page-ref #'ref111 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Моето слънце днес ще изгрее – Moeto slantse dnes ste izgree" \page-ref #'ref212 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Молитва (Чуй, Господи) – Molitva (Chuy, Gospodi)" \page-ref #'ref178 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Молитва (Господи, Ти Си) – Molitva (Господи, Ти, Си)" \page-ref #'ref179 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Молитва (Вярвам в теб) – Molitva (Вярвам в теб)" \page-ref #'ref204 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Мусала – Mussala" \page-ref #'ref087 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "На белия цвят – Na beliya zvjat" \page-ref #'ref058 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "На Учителя – Na Uchitelya" \page-ref #'ref037 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "На Христа запейте – Na Hrista zapeyte" \page-ref #'ref060 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Напред да ходим – Napred da hodim" \page-ref #'ref036 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Напред, чада, напред – Napred, chada, napred" \page-ref #'ref048 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Не ли думах – Ne li dumah" \page-ref #'ref164 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Небето се отваря – Nebeto se otvarya" \page-ref #'ref050 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Нева Сензу – Neva Senzu" \page-ref #'ref091 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Нови дрехи – Novi drehi" \page-ref #'ref062 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Новото Битие – Novoto Bitie" \page-ref #'ref191 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "О, Учителю благати – O, Uchitelyu blagati" \page-ref #'ref051 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Обетована земя – Obetovena zemya" \page-ref #'ref134 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Отче наш, не ни ... – Otche nash, ne ni ..." \page-ref #'ref216 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Песен за двете сестри – Pesen za dvete sestri" \page-ref #'ref180 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Песен на гласните букви – Pesen na glasnite bukvi" \page-ref #'ref067 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Песен на детето – Pesen na deteto" \page-ref #'ref164 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Песен на зората – Pesen na zorata" \page-ref #'ref106 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Песен на светлия път – Pesen na svetliya pat" \page-ref #'ref115 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Песента на ангелите – Pesenta na angelite" \page-ref #'ref207 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Писмото – Pismoto" \page-ref #'ref175 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Подмладяване – Podmladyavane" \page-ref #'ref119 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Поздрав на Учителя – Pozdrav na Uchitelya" \page-ref #'ref044 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Правда – Pravda" \page-ref #'ref132 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "При всичките условия – Pri vsichkite usloviya" \page-ref #'ref107 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "При източника – Pri iztochnika" \page-ref #'ref034 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Пролет – Prolet" \page-ref #'ref118_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Пролетна песен (Мили Боже) – Proletna pesen (Mili Bozhe)" \page-ref #'ref124 "0" "?"
    }
 }

 \markup \column \fontsize  #+2.5 { 
    \fill-line {
      \fill-with-pattern #1 #RIGHT . "Пролетна песен (Ето пристига) – Proletna pesen (Eto pristiga)" \page-ref #'ref124 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Псалм 91 – Psalm 91" \page-ref #'ref057 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Радост – Radost" \page-ref #'ref174_3 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Радост и скръб – Radost i skrab" \page-ref #'ref122 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Радост, радост за душата – Radost, radost za dushata" \page-ref #'ref155_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ранен час – Ranen chas" \page-ref #'ref124 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Росна капка – Rosna kapka" \page-ref #'ref046 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Светъл ден – Svetal den" \page-ref #'ref090 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Свобода е потребна за душата – Svoboda e potrebna za dushata" \page-ref #'ref169_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сила жива – Sila ziva" \page-ref #'ref076_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сила жива, изворна – Sila ziva, izvorna" \page-ref #'ref071_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сила, Живот, здраве – Sila,  Zhivot, zdrave" \page-ref #'ref102 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сила, здраве е богатство – Sila, zdrave e bogatstvo" \page-ref #'ref112_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сине мой, пази живота – Sine moi, pazi zhivota" \page-ref #'ref045 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Скитах се по гори и планини – Skitah se po gori i planini" \page-ref #'ref133 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Скръбта си ти кажи – Skrabta si ti kazhi" \page-ref #'ref077 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Слава Божия – Slava Bozhia" \page-ref #'ref053 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Славейчета горски – Slaveycheta gorski" \page-ref #'ref049 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сладко медено – Sladko medeno" \page-ref #'ref073 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Слушам – Slusham" \page-ref #'ref174_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Слънцето на Любовта – Slantseto na Lyubovta" \page-ref #'ref055_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Слънчева песен – пчелна – Slancheva pesen – pchelna" \page-ref #'ref125 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ставай, дъще! – Stavay, dashte" \page-ref #'ref142 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Стани, стани – Stani, stani" \page-ref #'ref028 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Страдна душо – Stradna dusho" \page-ref #'ref029 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Странник съм в този свят – Strannik sam v tozi svyat" \page-ref #'ref217 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Студът всичко дава – Studat vsichko dava" \page-ref #'ref126 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Събуди се братко мили – Sabudi se bratko mili" \page-ref #'ref025 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Сърдечен зов – Sardechen zov" \page-ref #'ref039 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Тайната вечеря – Taynata vecherya" \page-ref #'ref066_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Там далече – Tam daleche" \page-ref #'ref117 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Тебе поем – Tebe poem" \page-ref #'ref066_2 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ти си проявената Любов – Ti si proyavenata Lyubov" \page-ref #'ref055_2 "0" "?"
    }
     

 }

 \markup \column \fontsize  #+2.5 { 
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ти ще сполучиш в Живота – Ti shte spoluchish v zhivota" \page-ref #'ref214 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Той иде – Toy ide" \page-ref #'ref114 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Тъги, скърби – Tagi, skarbi" \page-ref #'ref089 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Тъги, скърби са богатство – Tagi, skarbi sa bogatstvo" \page-ref #'ref101_1 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Фир-фюр-фен – Fir-fyer-fen" \page-ref #'ref070 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Химн на великата Душа – Himn na velikata Dusha" \page-ref #'ref104 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Химни на Слънцето – Himni na slantseto" \page-ref #'ref202 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ходи, ходи – Hodi, hodi" \page-ref #'ref088 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Цветята цъфтяха – Tvetyata tsaftyaha" \page-ref #'ref113 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Шуми – Shumi" \page-ref #'ref032 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Ще се развеселя – Shte se razveselya" \page-ref #'ref021 "0" "?"
    }
      \fill-line {
      \fill-with-pattern #1 #RIGHT . "Що е същността – Sto e sastnostta" \page-ref #'ref068 "0" "?"
    }

  }


} % bookpart

