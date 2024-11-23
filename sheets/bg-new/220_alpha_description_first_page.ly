\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"


\bookpart {
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
    print-all-headers = ##t
    print-page-number = ##f
      first-page-number = #222


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 8\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \label #'ref220
  \tocItem \markup "Обяснителни бележки"
  \markup \abs-fontsize #16 { \fill-line {"Обяснителни бележки"} }

  \label #'ref_desc_1
  \markup \abs-fontsize #11
  {
    \override #'(baseline-skip . 3.4)
    \column {
      \vspace #1
      \line {
        \justify {
          \concat {\with-link #'ref137 \bold  "А бре, синко."} Дадена на 28 ноември 1934 г., София, Общ окултен клас, XIV година, 10. лекция „Принципи и условия. Връх и долина“ като българска народна песен, възстановена в своята първоначална чистота.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref171_2 \bold "Аз мога да дишам."} Музика и текст от Учителя, дадена на 4. февруари 1938 г., София, Младежки окултен клас, XVII година, 19. лекция „За- конът на хармонията в тялото“. Работата над упражнението е започна- ла на 29. декември 1937 г., София, Общ окултен клас, XVII година 13. лекция „Пред радостите и зад страданията“.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref109 \bold  "Аз смея да кажа."} Дадена на 2 октомври 1935 г., София, Общ окултен клас, XV година, 2. лекция „Новото учение“. „Аз смея да кажа, че слънцето е светло“ – светло е там, дето има разумност. Под думата \italic"светлина" се разбира един разумен свят, където всичко е възможно. Всички разумни същества, щом се представиш пред тях, са готови да ти помогнат“.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref047 \bold "Аз съм бялото кокиче."}  Музика от Христо Дързев, текст от Пенчо Славейков. В някои популярни версии на песента в припева на първи куплет вместо „Зла ме мащеха събуди“ се изпълнява: „Мен ме слънцето събуди“. Текстът на припева на трети куплет е добавен по-късно от ученик.
        }
      }


      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref064 \bold "Ангел вопияше."} Български църковен напев, много популярен в началото на 20-ти век, с текст на църковнославянски език и музика от свещеник Константин Дъновски – бащата на Петър Дънов. Има различни варианти на този напев. Песента е нотирана от Барнаби Браун, Шотландия, по изпълнение на Весела Несторова през 1993 г. Църко- внославянският текст, трансформиран на съвременен български, звучи така: \italic{Ангел викаше  } \italic{на благодатната (Божия майка): чиста Дево, радвай се! И пак ти казвам: радвай се! Твоят Син възкръсна от гроба на третия ден след смъртта и мъртвите възкреси: хора, веселете се!  Прослави се, прослави се, Йерусалиме [християнска Църква], защото славата Господня над теб възсия: тържествувай сега и весели се, Сионе! Ти, Чиста, радвай се, Богородице, за възкресението на родения от Теб. }

        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref075 \bold "Аум."}  Дадена на 2 декември 1925 г,  София, Общ окултен клас, V година, 3. лекция  „Аумен“. Това упражнение човек трябва да съхрани свещено у себе си. То е взето от стара свещена песен. Учителя казва: „Ако бих ви дал тази песен тъй, както е в минорна гама, вие не ще можете да издържите на нейните вибрации – те ще изменят пулса на сърцето ви“. Учителя е предал песента в мажор. Той казва: „Има свещени думи, как-
        }
      }

    }
  }









} % bookpart


