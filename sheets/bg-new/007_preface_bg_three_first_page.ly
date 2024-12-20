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
  \tocItem \markup "Предговор към третото издание"
  \markup \abs-fontsize #15  { \fill-line {"Предговор към третото издание"} }

  \markup \abs-fontsize #11 {
    \vspace #1.5  \override #'(baseline-skip . 3.4)
    \justify {

      В тези встъпителни думи е представен процесът на
      подготовка на последното издание, мотивира се нуждата от
      редакция на песните, накрая се определя методът на работа и
      екипът, осъществил редакторския процес.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Известно е, че Учителя Петър Дънов никога не е записвал
      лично своите песни. Най-често той е изсвирвал първоначално на
      цигулка дадено окултно упражнение и впоследствие устно го е
      преподавал в школските си лекции. Ако в момента на създаването
      е присъствал музикант, той е записвал упражнението като нотен
      текст. Днешните поколения са признателни на всички музиканти,
      свършили тази толкова отговорна работа. Сред тях са проф. Асен
      Арнаудов, Кирил Икономов, Мария
      Тодорова, Лилиана-Цветана Табакова, Матей Калудов, Христо Дързев и други. За съжаление
      много песни и мелодии са останали незаписани.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      В нотописа на първото цялостно издание на песните на
      Учителя Петър Дънов, съставено и публикувано от Мария
      Тодорова през 1949 г., съществуват немалко грешки. Самата
      Мария Тодорова е споделяла с мен, че сборникът е подготвен
      твърде набързо поради неблагоприятните политически условия.
      От друга страна, използвала е нотни записки по време на лекции,
      не винаги правени от професионални музиканти.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Ако сборникът на Мария Тодорова се сравни с предишното
      издание от 1938 г., могат да се открият доста разлики. На практика
      с течение на времето някои песни са претърпели два вида промени:
      едни са доразвити, а други, според мен, са опростени за удобство
      на изпълнители с недостатъчна музикална подготовка, от което са
      изгубили от своя енергиен заряд. В практиката са се наложили като
      по-благозвучни и редица промени във височината на някои тонове,
      в други случаи ритмичните фигури са намерили по-естествено
      звучене. В това отношение съществуват много примери, но
      анализирането им не е предмет на настоящия предговор.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      От гледна точка на нотния правопис настоящото трето
      издание се придържа към изискванията на съвременните нотни
      издателства, установени в правилата на музикалната теория. Това
      в най-голяма степен се отнася до логическите акценти в поетичния
      и музикалния текст, разпределени синхронно в дадения размер на
      песента. Друг важен фактор е хармоничният строеж на мелодията,
      чиито посоки оформят музикалните образи.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Целта на редакторската работа е оптимално да съхрани
      музикалния и словесен текст, разполагайки го логично в съответни размери, съобразе-
    }
  }


} % bookpart