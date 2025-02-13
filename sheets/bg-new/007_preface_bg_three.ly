\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##f
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
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {

      ни с хармоничния строеж на мелодията. Според
      нас подборът на тонал- ностите при Учителя не е случаен. Той изразява връзката между цветове, тонове, планети и числа и всеки опит
      за по-удобно транс- пониране отнема нещо от цвета на звученето.
      От чисто историческа гледна точка, пръв Филип Стоицев
      сложи начало на редакторските бележки и обсъждания. По-късно
      един голям екип, в който участваха Георги Стратев, Иоана
      Стратева, Станка Желева, Пенка Кадиева и авторът на този
      текст, започна методична и продължителна редакторска работа.
      Въпреки различните мнения по определени проблеми процесът
      напредна в хармония и разбирателство. През 1999 г. Благовест
      Жеков публикува собствен вариант на песните. Неговият сборник
      притежава редица преимущества: решава част от проблемите
      на нотописа и въвежда за първи път фонетични транскрипции
      на латиница. Несъмнено достойнство на настоящото издание са
      обогатените и допълнени обяснителни бележки към всяка песен
      заедно с Речника на музикалните термини в края на книгата.
      Най-голямото предимство обаче е в колективната работа, където
      повече хора с различна чувствителност и нагласа дискутират
      професионално и стигат до по-обективни резултати.
    }
  }

  \markup \abs-fontsize #11 \raise #0 \override #'(baseline-skip . 3.4) {
    \column {
      \line {"  "}
      \line {"  "}

      \fill-line { "" ""  \italic {"Петър Ганев     "} }
      \fill-line { "" ""  \italic {"София, 2006 г.   "} }
    }
  }


} % bookpart