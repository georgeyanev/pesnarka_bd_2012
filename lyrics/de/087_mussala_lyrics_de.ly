\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize  "Musala" }


\markup \null
\markup \null

\markup \abs-fontsize #10 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { Einzig bist du, mein Musala,}

    \line { geheiliger Ort, göttlicher Gipfel!}

    \line { Mein Musala, Musala, mein Musala.}
    \vspace #0.5

    \line { Habt ihr an einem klaren Frühlingstag }

    \line {den Sonnenaufgang gesehen vom Musala aus,}

    \line {Musala, Musala, vom Musala!}
    \vspace #0.5

    \line { Beim ersten Sonnenstrahl habt ihr da, }

    \line { den leichten Hauch des Musalas eingeatmet?! }

    \line { Musala, Musala, Musala, des Musala.}

  }
    }
}
