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

  \tocItem \markup "Мисли за музиката"
  \markup \abs-fontsize #15  { \fill-line {"Мисли за музиката"} }

  \markup \abs-fontsize #11 {
    \vspace #1.5 \override #'(baseline-skip . 3.4)
    \justify {

      Ние разбираме музиката в малко по-друг смисъл. Аз говоря за съзна- телната музика, не за статичната. Вече излизаме от областта на меха- ническата музика и влизаме в органичната, която постоянно се изменя.

    }
  }
  
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      В новата органична музика първо ще внесете хармония в мислите, чувствата и постъпките си. Тогава, като певци, ще имате отзвук – от Невидимия свят ще ви дойдат на помощ.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Вие не можете да бъдете музикални, ако мисълта ви не е музикална, ако чувствата ви не са музикални, ако постъпките ви не са музикални и ако музикално не гледате на всичко, което става в света. Ние живеем и се движим в Бога и в това движение има хармония.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Песента не само трябва да има глас, но в нейните тонове трябва да се вложи съдържание и смисъл. За да може човек да пее или свири, той трябва да има някаква идея, някакъв дълбок вътрешен подтик. Без идея няма песен.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Музиката внася в душата на човека широта, в духа – сила и мощ, в сърцето – мекота и топлина, а в ума – светлина и свобода.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Всяка песен трябва да носи светлина, топлина и сила. Природата цени тонове, които имат светлина, топлина и сила. Те са Божествено благословение на света.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Музиката, пеенето имат смисъл само тогава, когато служат за облагородяването на човека. Чрез музиката можете да създадете в себе си характер.
    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Вашето щастие в света зависи само от музиката. Защото животът е цяло изкуство – той е най-голямата музика, която съществува в света.
    }
  }
  
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Словото Божие – това е музиката на живота. Без Любов, без Мъдрост и без Истина Словото не може да се изговори. Човек не може да говори музикално, ако не говори Истината.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Любовта – това е най-висшата музика. Ако не мислите, не можете да пеете. Мислете право, приемайте само чисти мисли, за да пеете и свирите добре.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Певецът и музикантът трябва да имат добре развито ухо, за да схващат и предават правилно тоновете, които идат от възвишения свят.

    }
  }

 \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Немислимо е да станеш гениален без музика. Геният е човек, попаднал в музикалното течение на природата.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Аз искам да се запознаете с окултната музика, да черпите сили и вдъхновение от живата природа.
    }
  }
    \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Идейни песни на земята няма, идейни песни има само при ангелите.

    }
  }
  
  
  }