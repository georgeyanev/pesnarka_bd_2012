\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Musala" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Einzig bist du, mein Musala,"
          "geheiliger Ort, göttlicher Gipfel!"
          "Mein Musala, Musala, mein Musala."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Habt ihr an einem klaren Frühlingstag "
          "den Sonnenaufgang gesehen vom Musala aus,"
          "Musala, Musala, vom Musala!"
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Beim ersten Sonnenstrahl habt ihr da,"
          "den leichten Hauch des Musalas eingeatmet?!"
          "Musala, Musala, Musala, des Musala."
        }
      }
    }\hspace #0.1
  }
}
