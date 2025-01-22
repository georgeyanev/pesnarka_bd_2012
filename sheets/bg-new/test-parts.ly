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

  \tocItem \markup "Предговор към настоящото издание"
  \markup \abs-fontsize #15  { \fill-line {"Предговор към настоящото издание"} }

  \markup \abs-fontsize #11 {
    \vspace #1.5 \override #'(baseline-skip . 3.4)
    \justify {


      От дистанцията на времето все по-належаща е нуждата от едно адекватно представяне на вокалните и инструменталните композиции на Учителя Петър Дънов. Като такова то следва да е съобразено както с професионалните музикални изисквания, така и с принципите и законите, които той поставя като тяхна теоретична основа. Настоящото издание отговаря на тази потребност и изхождайки от горните изисквания, предлага някои нови редакционни решения на музикалните въпроси, които тази музика поставя.



    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      \italic {Окултните} \italic {музикални} \italic {упражнения,} както Учителя сам нарича своите музикални композиции, се появяват като музикален метод в откритата от него през 1922 година Окултна школа на Бялото Братство. Тези упражнения той схваща като образци на \italic {окултната} \italic {музика} – нов музикален жанр, основаващ се на принципите и законите на една нова, многоизмерна музикална теория и естетика. Те са последователно развити в многобройните лекции, които той държи пред своите ученици до 1944 г. Първото и основно предназначение на тези упражнения е индивидуалната и груповата духовна работа на учениците в пътя им на духовно развитие и култивиране на духовни качества и добродетели. Методът на даването им е изключително творчески и колективен. По време на лекция Учителя изсвирва с цигулката си или изпява \italic {ново} \italic {музикално} \italic {упражнение,} което учениците заучават, а присъстващите музиканти нотират. Друг път той задава конкретна дума или  изречение, към което те да композират собствена мелодия. Отделни песни, които са били развивани и усъвършенствани, са запазени в повече от един вариант; други са останали съзнателно незавършени като задачи за бъдещите поколения и епохи.  \italic {Музикалните} \italic {форми,} резултиращи от характерния за работата в Школата творчески принцип, схващането на песента като \italic {процес} са условие за възможността на \italic {бъдещата} \italic {култура.} Някои от композициите, сред които е и цикълът \italic {Новото} \italic {Битие,} се раждат по време на специалните срещи, които Учителя има с избрани свои ученици; други са породени от конкретна опитност на окултния ученик. Много мелодии и композиции обаче остават незаписани. Пример за това е пиесата за соло цигулка \italic {Блудният} \italic {син,} която Учителя изсвирва за първи път на студентски концерт в Америка и повтаря няколко пъти пред своите ученици тридесет години след първото изпълнение. Според спомените на присъстващите музиканти изсвире- ната композиция не е подлежала на никакво нотиране. Звучали са музикално-природни картини, медитативни мелодии, микро-интервали,


    }
  }



} % bookpart

\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
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




  \markup \abs-fontsize #11 {
    \override #'(baseline-skip . 3.4)
    \justify {

      непрекъсната смяна на тоналности, ритми, състояния настроения, подредени в една композиция, в чиято основа стои принципът на абсолютната свобода като качество на \italic{окултната} \italic {музика.}

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      \italic{Окултните} \italic{музикални} \italic{упражнения,} в които непосредствено и без прекъсване се проявяват първообразите като \italic{живи} \italic{музикални} \italic{форми,} неминуемо надвишават границите, наложени им от музикалната нотация. Тя е една условност, която свободното органическо изпълне- нение, търсещо смисъла на съдържанието и първообраза, е всякога свободно да напусне.  \italic{Живите} \italic{музикални} \italic{форми,} обитаващи най-висо- ките области на Битието, в които има естествено хармонично съчетание между слово и музика, трудно се поддават на ограничението, идващо от рамката на фиксираните тактове, размери, нотни трайности, темпа и динамики. Това е един от моментите, обуславящи техният сакрален характер. Всяко нотиране на музикалния първообраз се явява като негова естествена граница. За това говори и фактът, че Учителя никога сам не нотира своите музикални композиции, а работи непосредствено с  музикалните образци, които предава чрез живото изпълнение, всаж- дайки ги директно в душата. Така той  повдига ученика в областта на първообраза, оставяйки го сам да намери неговия адекватен израз, за който душата има ясна представа. Случаят, при който учениците пеят многократно упражнението \italic{Вехади,} варирайки непрекъснато под конкретните указания на Учителя начина на неговото изпълнение до постигане на задоволителен резултат, доближаващ се до неговия първообраз, ясно онагледява това положение. Така Учителя създава мост към света на идеите, който тези музикални образци обитават. Въздействайки директно върху душата, те отварят заложените в \italic{музикалното} \italic{упражнение} пространства на живата музикална субс- танция. Нотното фиксиране и ограничаване на \italic{окултните} \italic{музикални} \italic{упражнения} естествено се противопоставя на сакралността като тяхна същност и води в известна степен до тяхното профанизиране. Ясен пример за това са всички онези композиции като цикъла \italic{Новото} \italic{Битие,} които Учителя не позволява да се нотират веднага, а държи на това те да бъдат първо заучени добре, преди да се запишат. Друг пример са песните като \italic{Ще} \italic{се }\italic{развеселя,} за чиито нотации той символично казва: „Ушихме ѝ дрешка, но тя малко я стяга“. Защо \italic{живите} \italic{музикални} \italic{форми} трудно се поддават на нотация може да бъде онагледено и със следния пример: когато учениците молят Учителя да повтори дадено упражнение, за да могат да го запишат точно, той всеки път го изсвирвa по различен начин. Това се дължи според него на  \italic{музикалните} \italic{образци,} които, достигайки областта на физическия свят, претърпяват известни промени, т.е. те на-

    }
  }

  \markup \abs-fontsize #11 {
    \override #'(baseline-skip . 3.4)
    \justify {
      мират всеки път различен конкретен израз. Фиксирането и ограни- чението им в нотацията трансформира живата музикална субстанция, превръщайки я в завършена, съизмерима форма, в която творческият принцип и принципът на абсолютната свобода не могат да се проявят. Те спират да бъдат живи и одухотворени, защото живата връзка с Божественото е прекъсната. Пример за това е песента \italic{Кажи} \italic{ми} \italic{Ти} \italic{Истината,} която е достигнала до нас в три различни варианта. Тя е образец за \italic{несъизмеримо упражнение,} съзнателно оставено от Учителя незавършено.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Първото пълно издание на музикалните композиции на Учителя Петър Дънов със заглавие \italic {Песни} \italic {от} \italic {Учителя} публикува Мария Тодорова през 1949 г. на базата на одобрените от него нотации на \italic {музикалните} \italic {упражнения.} Подготовката и отпечатването му се случват при изключително трудни политически и обществени условия, непоз- воляващи една задълбочена редакторска работа над подготвяното издание. Допуснати са и печатни грешки, които тя коригира впослед- ствие в своя личен екземпляр. С отпечатването му обаче заръката на Учителя за запазване и предаване на музикалните му композиции за бъдещите поколения е изпълнена. Одобрените от него нотации на песните, които той сам е отделял и предавал на съхранение в специална папка, както и нотната тетрадка, наречена \italic {тефтер,} където те били преписвани впоследствие, не са достигнали до нас. Не са достигнали до нас също и записи с гласа и цигулката на Учителя, което би дало една по-ясна и пълна представа за звученето на \italic {окултната} \italic {музика.} До нас са достигнали само няколко архивни записи на групови изпълнения на отделни песни. Запазени са също и по-ранни, непълни публикации на песните на Учителя, като напр. многогласното издание на Христо Дързев и сборникът \italic {Песни} \italic {от} \italic {Учителя} под редакцията на Кирил Икономов, съставен от две части, публикувани през 1938-ма и 1944 година. Единствените налични писмени оригинали, които могат да имат претенция за пълнота, са гореописаното издание, подготвено от Мария Тодорова, както и фототипно копие на нейния личен екземпляр, съдържащ нанесените от нея поправки на някои печатни грешки. Липсва обаче подлистникът с грешки към същото издание.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Настоящото издание продължава линията на уважение и свещено отношение към музиката на Учителя Петър Дънов на предишните поколения музиканти, запазвайки нейните автентичност и дух. То е съставено от три части:
    }
  }
  \markup  \override #'(line-width . 83.3) \abs-fontsize #11  {
    \override #'(baseline-skip . 3.4)  \vspace #1 \column {
      "    1."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        \italic {Братски песни: } това са всички вокални композиции, създадени предимно преди 1922 г. Повечето от тях се раждат от съвместната
      }
    }
  }

  \markup  \override #'(line-width . 83.3) \abs-fontsize #11  {
    \override #'(baseline-skip . 3.4) \column {
      "      "
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        работа между Учителя и неговите ученици. Поради това много от мелодиите или текстовете в тази част на сборника са създадени от ученици по негови идеи. Някои от мелодиите  и текстовете са заимствани от песни на протестантските евангелски църкви; в репертоара присъстват също и популярни църковнославянски напеви. В този период честа практика е била многогласното хорово изпълнение на песните. Към този дял са добавени и песни от преки негови ученици, създадени след заминаването на Учителя.
      }
    }
  }

  \markup \override #'(line-width . 83.3) \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4) \column {
      "    2."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        \italic { Песни от Учителя: } това са всички композиции, създадени между 1922 и 1944 г. в Окултната школа на \italic {Бялото}
        \italic {Братство.} Тук автор на мелодията и текста е Учителя. Много от композициите са на свещен език, който той
        нарича \italic {ватански.}
      }
    }
  }

  \markup \override #'(line-width . 83.3) \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4) \column {
      "    3."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        \italic {Песни, публикувани след 1944 г.:  } това са всички композиции, издадени след заминаването на Учителя през 1944 г.
        Тази част съдържа както вокални, така и много чисто инструментални композиции и мелодии. Особено внимание тук заслужава цикълът от седем песни \italic {Новото} \italic{Битие} – ново течение в \italic {окултната} \italic {музика,} представящо нейните космични, космологични и космогонични аспекти. Този цикъл достига до нас благодарение на оперната певица Цветана-Лилиана Табакова, завършила пеене в École Nor- male de Musique de Paris и на Кръстю Христов, с които Учителя работи специално. В тяхно присъствие той дава някои от своите най-сакрални композиции.
      }
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      Към сборника е добавено и допълнение, съдържащо примери за съвременно творчество, като продължение на творческия импулс, даден от Учителя по време на Школата.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Редакторската линия на настоящото издание надгражда редакторската работа на досегашните издания, изхождайки от следните принципи:
    }
  }


  \markup \override #'(line-width . 83.3) \abs-fontsize #11 {
    \override #'(baseline-skip . 3.4) \vspace #1 \column {
      "    1."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Запазване на оригиналите и автентичността на музикалните компо- зиции;
      }
    }
  }
  \markup \override #'(line-width . 83.3) \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4) \column {
      "    2."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Професионализиране на нотописа посредством установяване на конвенции при нотния правопис според правилата на музикалната теория;
      }
    }
  }

  \markup \override #'(line-width . 83.3) \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4) \column {
      "    3."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Последователно прилагане на същите спрямо нотния текст.
      }
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      Tази редакторска линия наложи преосмисляне на структурната органи- зация на някои песни, минимално осъвременяване на лирическия им текст спрямо лексикалните и синтактичните норми на съвременния бъл- гарски език, както и корекции в нотния правопис. При някои от песните с несиметрична структура и подчертано свободен ритъм бе въведена

    }
  }
  \markup \abs-fontsize #11 {
    \vspace #1  \override #'(baseline-skip . 3.4)
    \justify {
      безмензурна нотация, кореспондираща с концепцията за \italic"несъизмерими-" \italic"те" \italic"величини" в \italic"окултната" \italic"музика." В редакционния процес бяха изпол- звани всички налични първоизточници, което доведе до отстраняване на редица грешки и неадекватни редакторски решения, възникнали при предни редакции, засягащи части от песни или цели песни. Този процес беше подпомогнат и от експертното мнение на някои братски музи- канти, които подобриха обективността и автентичността на предлагания нотен текст с конкретни забележки. За пръв път бяха въведени редакторски бележки, документиращи и аргументиращи направените редакционни промени в нотния текст. Чрез широкото използване на \italic {ossia} бяха обозначени вариантите на песните, съответстващи на специфичните бележки на преките ученици-музиканти на Учителя, които бяха отбелязани и в обяснителните бележки. По същия начин бе постъпено и с вариантите на лирическите текстове. Всички обяснителни бележки бяха преработени и допълнени. Отстранени бяха и някои фактологически грешки. Смесването на автентични мелодии със съвременни текстове като практика на досегашните издания бе избегнато, като автентичните мелодии бяха запазени в своя оригинал в основната част на сборника, а съвременното творчество поместено в допълнението в края на сборника. Темповите означения в песните трябва да бъдат разгледани като условни, защото те не са оригинално зададени от Учителя, а представят виждането на съвременните музи- канти за тях.

    }
  }
  \markup \abs-fontsize #11 {
    \vspace #1.1 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Целта на настоящото издание е да представи музикалните композиции на Учителя в един професионален вид. То е адресирано както към професионалните музиканти, така и към любителите, т.е. към всички онези, които желаят да се докоснат до красотата и необикновеността на тази музика. Голямото разнообразие на тоналности, от най-простите до онези с шест знака, свързаното с тях цветоусещане, съответствието между музика и текст, често свободният ритъм на мелодията, разнообразието от равноделни и неравноделни ритми, \italic {отворените} \italic {интервали,} преобладаващите \italic {несъизмерими} \italic {величини} – аспекти на окултната музика, за които Учителя говори в своите лекции – обуславят мощното ѝ многопластово въздействие върху слушателя и изпълнителя. Тя е звуково отражение на свободата и несиметричността на природните линии, изразени чрез структурните особености на мелодическите построения и чрез отсъствието на симетрична схема във фразирането. Техен съставен елемент са както малките поредни интервали, като напр. в песните \italic {Вехади} и \italic {Нева санзу,} така и големите интервали, стигащи до октава, като в песента  \italic {Вътрешният } \italic {глас на Бога.} Срещат се също  и ин-
    }
  }


  \markup \abs-fontsize #11 {
    \override #'(baseline-skip . 3.4)
    \justify {

      тервали, присъщи на източната музика, като хиатус или интервалът увеличена кварта, използван в песента \italic {Берхан-Ази.} Присъствието на безмензурни песни, за които Учителя сам отправя препоръка да бъдат нотирани без тактови черти, е допълнителен белег на абсолютната свобода в \italic {окултната} \italic {музика.} \italic {Несъимеримото} като мякра за Божестве- ното е нейнo основно структурно качество, освобождаващо я от крайната определеност и завършеност. Затова тя може да намери своя адекватен израз само в \italic {несъизмеримите} \italic {тактове,} които се превръщат в нейна вътрешна, несъизмерима мярка. Като цяло оразмеряването, в ко- ето обикновено класическите музиканти се виждат принудени да поставят всяка мелодия, е чуждо за нея явление. Съществуват обаче композиции с класическа постройка на мелодията като \italic {Бог e Любов,} \italic {Фир-фюр-фен,} \italic {Ме-хейн,} \italic {Венир} \italic{ Бенир,} чието естествено хармоническо звучене наподобява хорали от Й. С. Бах. Те биха предположили една хармонизация в бароков стил. Специално място в \italic {окултната} \italic {музика} е отделено на типично българските неравноделни ритми, като напр. 7/8, 5/8, 8/8, и мелодически интонации. Доведени до първичната си чистота, те са издигнати до \italic {образци} на \italic {новия} \italic {музикален} \italic {жанр.} Така Учителя не само отваря затворения кръг на българската музика, но ѝ дава една нова възходяща, спираловидна посока. Естествен резултат на това отваряне и освобождаване е трансформацията на българина. Могат да бъдат дадени още много други примери, засягащи многообразието в мелодическата, хармоническата или ритмическата структура на \italic {окултните} \italic {музикални} \italic {упражнения,} както и да бъдат поставяни още ред въпроси, отнасящи се до тяхната специфика. Това би било подходяща задача за едно бъдещо обширно изследване на \italic {окултната} \italic {музика,} което да открие и изследва скритите в нея ключове и кодове. Условие за възможността за нейното истинско разбиране и адекватна интерпретация обаче остава задълбо- ченото познаване както на лекциите, така и на принципите, на които тя се основава. Лекциите и окултните опитности показват нейния контекст и тя не може да бъде отделена от целокупността и единството на Уче- нието. Те служат като нейна координатна система, давайки възможност за допълнителното ѝ обогатяване със смисъл и съдържание, както и за обогатяване на нейното изживяване и възможни интерпретации. Важно за всички хармонизации и оркестрации е да запазят най-същественото в \italic {окултната музика} – нейния дух. Тя нито може да служи за забава, нито сама по себе си е забава, а е израз на свещеното ни отношение към Създателя. Само тогава \italic {окултната} \italic {музика} ще разкрие богатствата си в пълнота.



    }
  }


  \pageBreak

  \markup \abs-fontsize #11 {
    \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5 От името на целия издателски екип пожелаваме приятни индивидуални и колективни занимания с тази неземна, космична музика! Бог е Любов.
    }
  }

  \markup \abs-fontsize #11 \raise #0 \override #'(baseline-skip . 3.4) {
    \column {
      \line {"  "}
      \line {"  "}
      %\fill-line { "" ""  \italic {"Петър Ганев, София    "} }
      \fill-line { "" ""  \italic {"Мария Кирева   "} }
      \fill-line { "" ""  \italic {"Мюнхен, 2024 г."} }
    }
  }

} % bookpart



% Più mosso
% „Weiße Bruderschaft“




\bookpart {
  \label #'ref083_1
  \tocItem \markup "Вехади"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    bookpart-level-page-numbering = ##t
    print-first-page-number = ##t
    bookpart-level-page-numbering = ##t
    first-page-number = #2
    print-first-page-number = ##t


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
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Adagio, ad libitum" 4 "56"
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines

      \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral  a' d''4^\mp   e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2   \break

      \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2 \break

      a4^\pp  bes2 a2. a4  bes2 a2. a4  bes2 a2. \bar ":|." \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
    \header {
      title = \titleFunc #'ref_desc_7 "Вехади" "Vehadi"
    }

    \midi{}

  } % score
  %
  \markup \vspace #4
  \label #'ref083_2
  \tocItem \markup "Вечер, сутрин"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \major
      \time 6/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff

      a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |

      \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "   Più Mosso"

      e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break |

      e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."


    }

    \addlyrics {
      Ве -- чер,
      сут -- рин о -- ти -- де, дой -- де, ве -- чер,
      сут -- рин о -- ти -- де, дой -- де. О -- ти --
      де, дой -- де, __ о -- ти -- де, дой -- де, __ о -- ти
      -- де, дой -- де, __ дой -- де. __}
      \header {
        title = \titleFunc #'ref_desc_7 "Вечер, сутрин" "Večer, sutrin"
      }

      \midi{}

    } % score

    \markup \dc-two "D.C." "con ripetizioni"

    \pageBreak

    \label #'ref083_3
    \tocItem \markup "Имаше человек"
    \score {
      \include "include/score-layout.ily"
      \new Voice \absolute {
        \clef treble
        \key c \minor
        \omit Score.TimeSignature
        \cadenzaOn % allows custom bar lines
        \tempoFunc "Andante" 4 "66"

        \autoBeamOff
        g'4  g' ( ~ g'8 \times 2/3  { fis'16 [g'16 as'] } g'8 [ fis'] ) g'1 f'4 es' d'8 c' es' d'

        c'4  \times 2/3  { b8 ( [c' d'8] )  } c'2 \bar"!" \break

        g'8 g' c''4 ( es'' d'' ) \tupletUp c''4 \tuplet 3/2 { b'8 ([ c''] ) d''8 } c''2  \tupletNeutral \bar "!" \break

        bes'?4 as' g'4. g'8 c''4 bes' as' as' as'8 as' bes' c'' g'2 \bar"!" \break

        as'4 bes' c''2 d''4 c'' bes' c'' g'2.  \bar"!" \break

        f'2 g'8 [( as' )] bes'4 c'' bes' as'4 g' f' es' d'2 \bar"!" \break

        d'4 ( es' ) f' g' bes'8 as' as' bes' g'2 \bar"!" \break

        g'4 c''8 d'' es''4 d'' c'' bes' as'4 as'8 as' bes' c'' g'2 \bar"!" \break

        bes'2 as'4 g' f'4 es' d' es' f'4 g' as' ( bes' ) g'2. \bar"!" \break

        c''2 bes'4 as' g'4 f' es' d' es'4 f' g' as' bes' c'' g'2 \bar"!" \break

        g'4 es''2 d''4 c''4  \times 2/3  { b'8 ( [c'' d''8] ) }  c''2. \bar"!"  es'8. f'16 \noBeam g'2 \bar"!" \break

        g'4 as' f'4 f' f' es'8. f'16 g'2 \bar"!" g'4 as' f'4 f' es'8. f'16 g'2 \bar"!" \break

        g'4 c'' bes'? as'8. bes'16 g'2 \bar"!" g'4 es''8. es''16 d''4 c'' bes' as'8 g' f'2 es'2. \bar"!" \break

        es'2 d'4 c' b! c'8. c'16 d'4 c'2 \bar"!"

        es'8. es'16 f'4 g' as'4 g' fis' g'8. g'16 \noBeam as'4 g'2  \bar"!" \break

        g'4 c''2 \bar"!" b'4  as'4 g' f'? es' d'4 es' d' c'  \times 2/3  {
          b!4 ( c'4 d' )
        } c'2  \bar"!" \break

        es'4 es'2 c'4 d'4 es' c'2  \bar"!" f'4 as' g'  fis'4 g' as' g'2  \bar"!" \break

        g'4 c'' b'! c'' d'' es''4 c''2 \bar"!" g'4 bes'? as' g' f'? es'd'4 ( es' ) c'1 \bar "|."

      }


      \addlyrics {
        И -- ма --
        ше че -- ло -- век, про -- во -- ден от Бо --
        га, и -- ме -- то __ му И -- о -- ан. Той дой --
        де в~сви -- де -- тел -- ство да сви -- де -- тел
        -- ству -- ва за -- ра -- ди ви -- де -- ли -- на
        -- та, за да __ по -- вяр -- ват всич -- ки чрез не
        -- го. Не __ бе той ви -- де -- ли -- на -- та, но
        да сви -- де -- тел -- ству -- ва за ви -- де --
        ли -- на -- та. Той бе -- ше ис -- тин -- на --
        та ви -- де -- ли -- на, ко -- я -- то о -- све
        -- тя -- ва все -- ки -- го че -- ло -- ве -- ка,
        що и -- де на све -- та. В~све -- та бе и све
        -- тът чрез Не -- го ста -- на и све -- тът Го
        не поз -- на. В~Сво -- и -- те Си дой -- де, но
        Сво -- и -- те Му Го не при -- е -- ха. А ко
        -- и -- то Го при -- е -- ха, да -- де им власт
        да бъ -- дат ча -- да Бо -- жии, си -- реч, ко
        -- и -- то вяр -- ват в~Не -- го -- во -- то И --
        ме, ко -- и -- то не от кръв, ни -- то от по
        -- хот плът -- ска, ни -- то от по -- хот мъж --
        ка, но от Бо -- га се ро -- ди -- ха.}

        \header {
          title = \titleFunc #'ref_desc_9 "Имаше человек" "Imaše čelovek"
        }

        \midi{}

      } % score


    } % bookpart

    \bookpart {
      \label #'ref130
      \tocItem \markup "Езикът на живата природа"

      \paper {
        print-all-headers = ##t
        print-page-number = ##t
        bookpart-level-page-numbering = ##t
        print-first-page-number = ##t
        bookpart-level-page-numbering = ##t
        first-page-number = #5
        print-first-page-number = ##t


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
        top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
        top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

        % change distance between staves
        system-system-spacing =
        #'((basic-distance . 12.8)
           (minimum-distance . 6)
           (padding . 1)
           (stretchability . 12))
      }
      \score {
        \include "include/score-layout.ily"
        \new Voice \absolute {
          \clef treble
          \key f \major
          \time 3/4
          \tempoFunc "Andante" 4 "63"
          \autoBeamOff
          c'4 ( \once \omit TupletBracket
          \times 4/5  {
            c'16 ) ( [  d'16  e'16  f'16
            g'16 ]
          }
          a'8 ) a'8  |

          a'4. ( g'8   a'8 [  g'8
          ] ) |
          f'8 ( [ e'8 ])
          f'8 ( [  e'8  ] )  d'8 ( [  c'8]) |
          d'2. \break |
          e'4. f'8  g'8 ( [
          a'8  ])
          \time 2/4 f'8 g'8 e'8  f'8 |
          e'2 | % 6
          g'4.  e'8 |
          f'8  e'8
          d'8 ( [  c'8 ]) | d'2 \break |
          a'4.  g'8 | c''8 ( [  bes'8 ]) a'8  g'8 |
          g'8 ( [ a'16   g'16]
          f'8  [ e'8 ] ) |

          f'8 g'8 e'4 ( |e'2) |
          g'8  g'4  f'8 |  \break
          e'8  f'8 e'8  c'8 | d'2 |   % 13
          \time 5/4  | \bar "||" % 13
          \tempo "        Largamente" c'4 ( f'4 )
          e'4  e'2 | % 14
          c'4 (  f'4 )  e'4  e'2 | % 15
          \time 2/4  | % 15
          g'4.  f'16 ( [  e'16 ]) \break | % 16
          f'8 ( [  e'8 ] ) f'8 ( [  e'8 ] )| % 17
          d'2 \bar "||"
          \tempo "Più mosso"
          \key g \minor | % 18
          g'8  a'8  g'4 | % 19
          \time 3/4 fis'4  es'4. ( d'8 ) |
          es'8  fis'8  es'4. ( d'8 )| \break % 21
          es'8 ( [  d'8 ])   c'2   |   % 22
          \time 2/4 c'4.  d'16  es'16 | % 23
          fis'4  g'4|  fis'4
          es'8 ( [  d'8 ])  | c'2 | % 25
          a'4 bes'8 a'8  \break  | % 26
          g'4  c''4 ^\fermata  | % 27
          \slurDown \stemUp bes'16 (
          [a'16 bes'16  a'16])
          \slurNeutral \stemNeutral
          g'8 ( [  fis'8 ] )| % 28
          g'2  | % 29
          bes'2 |  d''4  bes'4 |
          bes'4 ( a'8 [  g'8  ] ) a'2  \break | % 31
          cis''4. (  d''16 [  cis''16 ] |
          bes'8 [  a'8 ] ) % 32
          g'8 ( [  a'8 ] ) a'2 |
          bes'8  bes'8  cis''4 | % 34
          bes'4 \prall  a'4 |  \break % 35
          \time 3/4  | % 35
          \times 2/3  {
            bes'8  a'8  g'8
          }
          g'2 | \time 2/4 d'8  d'8
          g'4 ( | a'2 ) |   % 37
          c''8  bes'8  a'8 ( [  g'8 ]) |
          \time 3/4  | % 38
          a'4  a'2  | \break
          \time 2/4  | % 39
          g'8.  g'16  fis'4 |
          es'2 | % 41
          fis'8  es'8  d'4 | % 42
          d'2 | % 43
          c'8  d'16 ( [  es'16 ] ) f'4 | % 44
          fis'8 es'8  d'4 | % 46
          \time 3/4  | \break  % 46
          \once \omit TupletBracket
          \times 2/3  {
            es'8 ( [  d'8  c'8 ])
          }
          d'2 | % 47
          \time 2/4  | % 47
          c'8 ( [  d'8 ])  es'8  c'8  | % 48
          \time 3/4  | % 48
          d'4  d'2 | % 49
          \time 4/4  | % 49
          g'8  fis'4  g'8
          a'8 g'4. \break | % 51
          es'8  fis'8  es'4.  c'8
          d'4 |  es'8 ([ fis'8 ])
          \times 2/3  {
            g'8 ( [  es'8  fis'8 ] )
          } d'2 | \bar "||" \break
          \key g \major \time 7/4 | % 54
          d'4 (  g'4 )  d'4  \bar "!" b8. c'16 d'4  d'2 | % 56
          e'4 ( a'4.)   g'8  \bar "!" fis'2  g'2 \caesura \bar "||" \break
          \time 2/4  | % 58
          \tempo "Vivo" d'8 b'4  d''8 | % 59
          \tupletUp \times 2/3  {
            c''8   c''8  b'8
          } \tupletNeutral
          c''8 d''8  |
          b'2 | % 61
          b'8  a'4  g'8 | \break % 62
          g'8  fis'8  fis'8  e'8 | % 63
          e'2 | % 64
          c''8  e'4  e'8 | % 65
          e'8  d'8  d'8  c''8 | \break % 66
          b'2 | % 67
          b'8  a'4  g'8  | % 68
          fis'8  g'8  a'8  b'8 |  % 69
          g'2 |
          c''8  e'4  e'8 | \break % 71
          e'8  d'8  d'8  c''8 | % 72
          b'2  | % 73
          e'8  e'4. |   % 74
          e'8  fis'8  g'8  g'8 \break | % 75
          g'2  | % 76
          e''8  a'4  b'8 | % 77
          c''8   b'8  c''8  d''8 | % 78
          b'2 |  % 79
          b'8  a'4  g'8 |\break
          fis'8  g'8  a'8  b'8 | % 81
          g'2 | % 82
          fis'8  e'4  d'8 |
          d'8  d'8  d'8  g'8 | \break % 84
          g'2 | % 85
          \tempo "Largamente"
          \time 3/4  | % 85
          c''4  e'4.  e'8 | % 86
          e'4 d'2 | % 87
          c''8 b'8 a'8  g'8
          a'8  b'8  | % 88
          g'2. |  \break % 89
          \time 4/4  | % 89
          b'4 g'4  e'4
          d'4 |
          e'8.  fis'16  g'2.   | % 91
          \time 3/4 b'4 d''4  b'4 | \time 2/4  e''4. d''8 |  \break | % 92
          c''8 ( [  b'8 ])  c''8 ( [
          d''8 ]) | b'2 | % 93
          b4.  c'8  d'2 | % 94
          a4. b8  c'4
          e'4 | % 95
          d'4  c'4  b2 \bar "|."
        }

        \addlyrics {
          Стра --  шен
          бе --   ше __  вя -- тъ
          -- рът, що раз -- друс -- ва --
          ше го -- ра -- та. Стра -- шен
          бе и си -- лен. Всич -- ки -- те __
          лис -- та шу --
          мо -- ля -- ха, шу -- мя -- ха и се
          мо -- ле -- ха: „Спри,  вет --
          ре, спри,  вет -- ре, во -- лен
          раз -- ви -- гор! Не ни
          ли жа -- лиш?  По -- спри, не __
          ду -- хай! Е -- два през та
          -- зи го -- ди -- на ту --
          ка сме -- дош -- ли на
          гос -- ти. Не ду -- хай, вет --
          ре, ще пад --
          нем, ще ни се стро -- шат ре --
          бър -- ца -- та“. -- „Ой ви вас, __
          мал -- ки лис -- тен -- ца,
          за вас аз чух от -- да -- ле -- ко
          и дой -- дох да ви на -- ви
          --  дя, да __  по -- и -- гра --
          я и ви по -- ду -- хам, да -- ре --
          не да ви до -- не --  са.
          Слу -- шай -- те то -- га -- ва
          мой -- та пе -- сен: След ме --
          не той ве -- че прис -- ти -- га дру
          -- гар ми ве -- рен, дре -- бен
          дъжд. Той ще по -- ле -- е по --
          ле -- то, ще го при -- гот -- ви
          за и -- гри. Прах да се, лис --
          ти, не вди -- га при тез и -- гри
          ве -- се -- ли. От -- го -- ре слън
          -- це ще пек -- не, да ни о --
          гре -- е, за -- топ -- ли; да си
          по -- троп -- нем то -- га  -- ва,
          да си по -- хап  -- нем, чис
          -- та во -- да да пи  -- ем,
          с~ра -- дост да се раз -- де --
          лим. На -- но -- во да се срещ
          -- нем  пак и доб -- ре с~о
          -- бич да се раз -- бе -- рем.“}

          \header {
            title = \titleFunc #'ref_desc_8 "Езикът на живата природа" "Ezikăt na živata priroda"
          }

          \midi{}

        }



      } % bookpart


      \bookpart {

        \label #'ref251_1
        \tocItem \markup "Мелодия 2 – В радостта на деня"
        \paper {
          print-all-headers = ##t
          print-page-number = ##t
          bookpart-level-page-numbering = ##t
          print-first-page-number = ##t
          bookpart-level-page-numbering = ##t
          first-page-number = #7
          print-first-page-number = ##t


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
          top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
          top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

          % change distance between staves
          system-system-spacing =
          #'((basic-distance . 16)
             (minimum-distance . 6)
             (padding . 1)
             (stretchability . 12))
        }
        \score {
          \include "include/score-layout.ily"

          \new Voice \absolute {
            \clef treble
            \key des \major
            \time 3/8
            \tempoFunc "Allegro" 4. "48"
            \autoBeamOff
            des''8. des''16 c''16 des''16
            | % 2
            es''4 des''8 | % 3
            des''8. c''16 c''16 des''16
            | % 4
            c''4 bes'8 \break | % 5
            bes'4  as'8 | % 6
            as'4. | % 7
            es'8.  es'16  f'16  ges'16  | % 8
            bes'8.  as'16  as'16 bes'16 \break | % 9
            as'8.  ges'16  f'16  ges'16 |
            f'8.  es'16  des'16  es'16 | % 11
            des'4. | % 12
            as'4  as'8   | % 13
            as'8 [(  g'8 )]  as'8 \break| % 14
            bes'4  as'8  | % 15
            as'4  as'8 | % 16
            des''4.  | % 17
            des''8 c''8 des''8 | % 18
            es''4 des''8 | % 19
            c''8. bes'16  as'16 bes'16 \break |

            as'4  ges'8  | % 21
            f'8.  es'16  des'16  es'16 | % 22
            des'4. \bar "||"
            es'8  f'8  ges'8 | % 24
            as'4 bes'16 c''16 \break | % 25
            des''4  f'8 | % 26
            as'4  ges'8 | % 27
            ges'4. | % 28
            bes4  c'16  des'16   | % 29
            f'4  es'8  |
            des'4  c'8  \break | % 31
            es'4  des'8 | % 32
            des'4. | % 33
            as'16  as'16 f''8 f''8 | % 34
            ges''16 f''16 es''16 f''16
            es''16 des''16 \break  | % 35
            as'8 es''8 es''8 | % 36
            es''4.  | % 37
            as'8 es''8 es''8   | % 38
            f''16 es''16 des''16 es''16
            des''16 c''16 \break| % 39
            des''16 c''16 bes'16 c''16
            bes'16  as'16 |
            as'8 des''8 des''8 | % 41
            des''4. \break | % 42
            as'16 des''16 des''16 des''16
            des''16 des''16  | % 43
            as'16 es''16 es''16 es''16
            es''16 es''16 \break | % 44
            f''16 es''16 des''16 c''16
            des''16 es''16 | % 45
            des''4. | % 46
            as'16 des''16 des''16 des''16
            des''16 des''16 \break | % 47
            as'16 es''16 es''16 es''16
            es''16 es''16 | % 48
            f''16 es''16 des''16 c''16
            des''16 es''16 | % 49
            des''4. \bar "|."
          }

          \addlyrics {
            \set stanza = "1. " Рад -- ва се зе -- мя -- та, рад --
            ва се не -- бе -- то в~свет -- ли
            -- на. Се -- ме -- то, по -- ся -- то
            в~плод -- на ни -- ва, рас -- не
            свя -- то в~Лю -- бов -- та. Бог
            въз -- раст -- ва но -- ви -- я
            жи -- вот в~ра -- дост и мир и
            ця -- ло -- то не -- бе пре -- ли --
            ва от Лю -- бов. Е -- то го, гре --
            е де -- нят кра -- сив и свят и
            Лю -- бов -- та е жи -- ва бла --
            го -- дат. Грей, раз -- пръск -- вай
            ра -- дост, мир и о -- бич, свят
            Бо -- жи ден. Все -- благ, все --
            мъ -- дър Бог О -- тец в~ду -- ши
            -- те ми -- лост -- та Си да въз --
            рас -- ти. Да пре -- бъ -- де ра --
            дост, да пре -- бъ -- де бла --
            гост в~Но -- ви -- я жи -- вот бла
            -- жен. Бо -- жи -- я -- та во -- ля
            да пре -- бъ -- де свя -- та в~то
            -- зи ден бла -- го -- сло -- вен.}

            \header {
              title = \titleFunc #'ref_desc_20 "Мелодия 2 – В радостта на деня" " Melodija 2 – V radostta na denja"
            }

            \midi{}

          } % score


          \markup \abs-fontsize #11  \override #`(baseline-skip . ,bgCoupletBaselineSkip){
            \fill-line {
              \hspace #0.1
              \column {
                \line {
                  \bold "2."
                  \column {
                    "Слънчевото ято Бога благославя и зари,"

                    "Божията Слава новия свещен живот да озари."

                    "Целият всемир е светлина и светлината"

                    "извор е на радост, сила и живот."
                  }
                }
                \vspace #1
                \line{ \italic"    Припев:" Ето го, грее денят ...}

              }\hspace #0.1
            }
          }

          \markup \vspace #3

          \label #'ref251_2
          \tocItem \markup "Мелодия 4 – Озарение"
          \score {
            \include "include/score-layout.ily"

            \new Voice \absolute {
              \clef treble
              \key g \minor
              \time 3/8
              \tempoFunc "Moderato" 8 "120"
              \autoBeamOff
              d''4 bes'8 | % 2
              d''4 bes'8 | % 3
              d''4. | % 4
              g''8 ( [ f''8 ) ] es''8 | % 5
              es''4 c''8 | % 6
              es''4 c''8 | % 7
              es''4. | % 8
              c''8 ( [ d''8 ) ] es''8 \break | % 9
              f''4 es''8 |
              es''4 d''8 | % 11
              d''4 c''8 | % 12
              d''4. | % 13
              g'8 ( [  a'8 ) ] bes'8 | % 14
              bes'4  a'8 \break | % 15
              a'4  g'8 | % 16
              g'4  d'8 | % 17
              g'4. | % 18
              g'8 ( [  a'8 ) ] bes'8 | % 19
              bes'4  a'8 |
              a'4  g'8 | % 21
              g'4  d'8 | % 22
              g'4. \bar "|."
            }

            \addlyrics {
              \set stanza = "1. " Без -- гра -- нич -- на шир, див
              -- на кра -- со -- та и мир,
              Слън -- це за чо -- веш -- ки --
              те ду -- ши но -- си свя -- та
              Лю -- бов -- та без -- спир, но --
              си свя -- та Лю -- бов -- та без --
              спир.}

              \header {
                title = \titleFunc #'ref_desc_20 "Мелодия 4 – Озарение" "Melodija – Ozarenie"
              }

              \midi{}

            } % score


            \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
              \fill-line {
                \hspace #0.1
                \column {
                  \line {
                    \bold "2."
                    \column {
                      "Благ живот струи "
                      "в топли слънчеви лъчи "
                      "и душите славят в светлина "
                      "благия Отец на Любовта. (2)"
                    }
                  }
                }
                \hspace #0.1
                % adds horizontal spacing between columns
                \column {
                  \line {
                    \bold "3."
                    \column {
                      "Всичко е Любов,"
                      "радост, сила и живот."
                      "Свята Божия виделина "
                      "озарява тази красота. (2)"
                    }
                  }
                }\hspace #0.1
              }
            }
          } % bookpart

          \bookpart {
            \label #'ref083_1
            \tocItem \markup "Вехади"
            \paper {
              print-all-headers = ##t
              print-page-number = ##t
              bookpart-level-page-numbering = ##t
              print-first-page-number = ##t
              bookpart-level-page-numbering = ##t
              first-page-number = #9
              print-first-page-number = ##t


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
              top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
              top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

              % change distance between staves
              system-system-spacing =
              #'((basic-distance . 16)
                 (minimum-distance . 6)
                 (padding . 1)
                 (stretchability . 12))
            }

            \score {
              \include "include/score-layout.ily"
              \new Voice \absolute {
                \clef treble
                \key d \minor
                \tempoFunc "Adagio, ad libitum" 4 "56"
                \autoBeamOff
                \omit Score.TimeSignature
                \cadenzaOn % allows custom bar lines

                \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral  a' d''4^\mp   e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2   \break

                \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2 \break

                a4^\pp  bes2 a2. a4  bes2 a2. a4  bes2 a2. \bar ":|." \break
              }

              \addlyrics {
                Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
                Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
              }
              \header {
                title = \titleFunc #'ref_desc_7 "Вехади" "Vehadi"
              }

              \midi{}

            } % score
            %
            \markup \vspace #4

            \label #'ref083_2
            \tocItem \markup "Вечер, сутрин"
            \score {
              \include "include/score-layout.ily"

              \new Voice \absolute {
                \clef treble
                \key a \major
                \time 6/4
                \tempoFunc "Andante" 4 "66"
                \autoBeamOff

                a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |

                \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "   Più Mosso"

                e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break |

                e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."


              }

              \addlyrics {
                Ве -- чер,
                сут -- рин о -- ти -- де, дой -- де, ве -- чер,
                сут -- рин о -- ти -- де, дой -- де. О -- ти --
                де, дой -- де, __ о -- ти -- де, дой -- де, __ о -- ти
                -- де, дой -- де, __ дой -- де. __}
                \header {
                  title = \titleFunc #'ref_desc_7 "Вечер, сутрин" "Večer, sutrin"
                }

                \midi{}

              } % score

              \markup \dc-two "D.C." "con ripetizioni"

              \pageBreak

              \label #'ref083_3
              \tocItem \markup "Имаше человек"
              \score {
                \include "include/score-layout.ily"
                \new Voice \absolute {
                  \clef treble
                  \key c \minor
                  \omit Score.TimeSignature
                  \cadenzaOn % allows custom bar lines
                  \tempoFunc "Andante" 4 "66"

                  \autoBeamOff
                  g'4  g' ( ~ g'8 \times 2/3  { fis'16 [g'16 as'] } g'8 [ fis'] ) g'1 f'4 es' d'8 c' es' d'

                  c'4  \times 2/3  { b8 ( [c' d'8] )  } c'2 \bar"!" \break

                  g'8 g' c''4 ( es'' d'' ) \tupletUp c''4 \tuplet 3/2 { b'8 ([ c''] ) d''8 } c''2  \tupletNeutral \bar "!" \break

                  bes'?4 as' g'4. g'8 c''4 bes' as' as' as'8 as' bes' c'' g'2 \bar"!" \break

                  as'4 bes' c''2 d''4 c'' bes' c'' g'2.  \bar"!" \break

                  f'2 g'8 [( as' )] bes'4 c'' bes' as'4 g' f' es' d'2 \bar"!" \break

                  d'4 ( es' ) f' g' bes'8 as' as' bes' g'2 \bar"!" \break

                  g'4 c''8 d'' es''4 d'' c'' bes' as'4 as'8 as' bes' c'' g'2 \bar"!" \break

                  bes'2 as'4 g' f'4 es' d' es' f'4 g' as' ( bes' ) g'2. \bar"!" \break

                  c''2 bes'4 as' g'4 f' es' d' es'4 f' g' as' bes' c'' g'2 \bar"!" \break

                  g'4 es''2 d''4 c''4  \times 2/3  { b'8 ( [c'' d''8] ) }  c''2. \bar"!"  es'8. f'16 \noBeam g'2 \bar"!" \break

                  g'4 as' f'4 f' f' es'8. f'16 g'2 \bar"!" g'4 as' f'4 f' es'8. f'16 g'2 \bar"!" \break

                  g'4 c'' bes'? as'8. bes'16 g'2 \bar"!" g'4 es''8. es''16 d''4 c'' bes' as'8 g' f'2 es'2. \bar"!" \break

                  es'2 d'4 c' b! c'8. c'16 d'4 c'2 \bar"!"

                  es'8. es'16 f'4 g' as'4 g' fis' g'8. g'16 \noBeam as'4 g'2  \bar"!" \break

                  g'4 c''2 \bar"!" b'4  as'4 g' f'? es' d'4 es' d' c'  \times 2/3  {
                    b!4 ( c'4 d' )
                  } c'2  \bar"!" \break

                  es'4 es'2 c'4 d'4 es' c'2  \bar"!" f'4 as' g'  fis'4 g' as' g'2  \bar"!" \break

                  g'4 c'' b'! c'' d'' es''4 c''2 \bar"!" g'4 bes'? as' g' f'? es'd'4 ( es' ) c'1 \bar "|."
                }


                \addlyrics {
                  И -- ма --
                  ше че -- ло -- век, про -- во -- ден от Бо --
                  га, и -- ме -- то __ му И -- о -- ан. Той дой --
                  де в~сви -- де -- тел -- ство да сви -- де -- тел
                  -- ству -- ва за -- ра -- ди ви -- де -- ли -- на
                  -- та, за да __ по -- вяр -- ват всич -- ки чрез не
                  -- го. Не __ бе той ви -- де -- ли -- на -- та, но
                  да сви -- де -- тел -- ству -- ва за ви -- де --
                  ли -- на -- та. Той бе -- ше ис -- тин -- на --
                  та ви -- де -- ли -- на, ко -- я -- то о -- све
                  -- тя -- ва все -- ки -- го че -- ло -- ве -- ка,
                  що и -- де на све -- та. В~све -- та бе и све
                  -- тът чрез Не -- го ста -- на и све -- тът Го
                  не поз -- на. В~Сво -- и -- те Си дой -- де, но
                  Сво -- и -- те Му Го не при -- е -- ха. А ко
                  -- и -- то Го при -- е -- ха, да -- де им власт
                  да бъ -- дат ча -- да Бо -- жии, си -- реч, ко
                  -- и -- то вяр -- ват в~Не -- го -- во -- то И --
                  ме, ко -- и -- то не от кръв, ни -- то от по
                  -- хот плът -- ска, ни -- то от по -- хот мъж --
                  ка, но от Бо -- га се ро -- ди -- ха.}

                  \header {
                    title = \titleFunc #'ref_desc_9 "Имаше человек" "Imaše čelovek"
                  }

                  \midi{}

                } % score


              } % bookpart

