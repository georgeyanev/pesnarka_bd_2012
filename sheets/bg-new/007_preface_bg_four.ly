\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t
    % page-number-type = #'roman-upper


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

      \italic{Окултните} \italic{музикални} \italic{упражнения,} в които непосредствено и без прекъсване се проявяват първообразите като \italic{живи} \italic{музикални} \italic{форми,} неминуемо надвишават границите, наложени им от музикалната нотация. Тя е една условност, която свободното органическо изпълне- нение, търсещо смисъла на съдържанието и първообраза, е всякога свободно да напусне. \italic{Живите} \italic{музикални} \italic{форми,} обитаващи най-висо- ките области на Битието, в които има естествено хармонично съчетание между слово и музика, трудно се поддават на ограничението, идващо от рамката на фиксираните тактове, размери, нотни трайности, темпа и динамики. Това е един от моментите, обуславящи техният сакрален характер. Всяко нотиране на музикалния първообраз се явява като негова естествена граница. За това говори и фактът, че Учителя никога сам не нотира своите музикални композиции, а работи непосредствено с  музикалните образци, които предава чрез живото изпълнение, всаж- дайки ги директно в душата. Така той  повдига ученика в областта на първообраза, оставяйки го сам да намери неговия адекватен израз, за който душата има ясна представа. Случаят, при който учениците пеят многократно упражнението \italic{Вехади,} варирайки непрекъснато под конкретните указания на Учителя начина на неговото изпълнение до постигане на задоволителен резултат, доближаващ се до неговия първообраз, ясно онагледява това положение. Така Учителя създава мост към света на идеите, който тези музикални образци обитават. Въздействайки директно върху душата, те отварят заложените в \italic{музикалното} \italic{упражнение} пространства на живата музикална суб- станция. Нотното фиксиране и ограничаване на \italic{окултните} \italic{музикални} \italic{упражнения} естествено се противопоставя на сакралността като тяхна същност и води в известна степен до тяхното профанизиране. Ясен пример за това са всички онези композиции като цикъла \italic{Новото} \italic{Битие,} които Учителя не позволява да се нотират веднага, а държи на това те да бъдат първо заучени добре, преди да се запишат. Друг пример са песните като \italic{Ще} \italic{се }\italic{развеселя,} за чиито нотации той символично казва: „Ушихме ѝ дрешка, но тя малко я стяга“. Защо \italic{живите} \italic{музикални} \italic{форми} трудно се поддават на нотация може да бъде онагледено и със следния пример: когато учениците молят Учителя да повтори дадено упражнение, за да могат да го запишат точно, той всеки път го изсвирвa по различен начин. Това се дължи според него на  \italic{музикалните} \italic{образци,} които, достигайки областта на физическия свят, претърпяват известни промени, т.е. те на-

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
      Първото пълно издание на музикалните композиции на Учителя Петър Дънов със заглавие \italic {Песни} \italic {от} \italic {Учителя} публикува Мария Тодорова през 1949 г. на базата на одобрените от него нотации на \italic {музикалните} \italic {упражнения.} Подготовката и отпечатването му се случват при изключително трудни политически и обществени условия, непоз- воляващи една задълбочена редакторска работа над подготвяното издание. Допуснати са и печатни грешки, които тя коригира впослед- ствие в своя личен екземпляр. С отпечатването му обаче заръката на Учителя за запазване и предаване на музикалните му композиции за бъдещите поколения е изпълнена. Одобрените от него нотации на песните, които той сам е отделял и предавал на съхранение в специална папка, както и нотната тетрадка, наречена \italic {тефтер,} където те били преписвани впоследствие, не са достигнали до нас. Не са достигнали до нас също и записи с гласа и цигулката на Учителя, което би дало една по-ясна и пълна представа за звученето на \italic {окултната} \italic {музика.} До нас са достигнали само няколко архивни записи на групови изпълнения на отделни песни. Запазени са също и по-ранни, непълни публикации на песните на Учителя, като напр. многогласното издание на Христо Дързев и сборникът \italic {Песни} \italic {от} \italic {Учителя} под редакцията на Кирил Икономов, съставен от две части, публикувани през 1938 и 1944 година. Единствените налични писмени оригинали, които могат да имат претенция за пълнота, са гореописаното издание, подготвено от Мария Тодорова, както и фототипно копие на нейния личен екземпляр, съдържащ нанесените от нея поправки на някои печатни грешки. Липсва обаче подлистникът с грешки към същото издание.
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
      Tази редакторска линия наложи преосмисляне на структурната органи- зация на някои песни, минимално осъвременяване на лирическия им текст спрямо лексикалните и синтактичните норми на съвременния бъл- гарски език, както и корекции в нотния правопис. При някои от песните с несиметрична структура и с подчертано свободен ритъм бе въведена 

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