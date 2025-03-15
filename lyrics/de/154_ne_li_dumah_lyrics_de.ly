\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Habe ich es nicht gesagt" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Habe ich es nicht gesagt, liebe Mutter, habe ich nicht gesprochen,"
          "dass unsere Donka nicht neben der Feuerstelle stehen"
          "und nur zuhause herumsitzen soll,"
          "sondern sie soll in die Schule gehen und beginnen zu lernen."
          "Unsere Donka, liebe Mutter, wurde klug und begabt geboren,"
          "so dass es an der Zeit ist,"
          "in der Schule über das Leben etwas Gutes zu lernen."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Sie soll abends, liebe Mutter, nicht zum Brunnen gehen,"
          "um den Jungen volle Krüge zu reichen,"
          "ihnen taufrische Blumen zu versprechen,"
          "sondern sie soll abends den Kranken Wasser hintragen."
          "Unsere Donka, liebe Mutter,"
          "hat eine gute, sanftmütige und barmherzige Seele,"
          "aber sie soll ihr Herz, Mutter, lehren,"
          "die Jungen nicht zum Lächeln zu bringen."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Morgens in der Früh soll sie zum Brunnen gehen,"
          "in weiße Kupferkrüge Wasser füllen,"
          "in einer sauberen, weißen Bluse, mit einem schönen Gewand,"
          "soll sie zum Vorbild werden."
          "Wer sie sieht, wie sie im Dorf arbeitet und wie sie jedem hilft,"
          "beginne das Gute zu lieben und es kundzutun,"
          "so wie diese gute Seele."
        }
      }
    }\hspace #0.1
  }
}
