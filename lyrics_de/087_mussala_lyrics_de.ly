\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize  "Mussala" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
\line { Einzig bist du, mein Mussala,}

\line { heiliger Ort, göttlicher Gipfel!}

\line { Mein Mussala, Mussala,}

\line { mein Mussala.}

\line { Habt ihr an einem klaren Frühlingstag vom }

\line { Mussala aus den Sonnenaufgang gesehen!}

\line { Habt ihr beim ersten Strahl der Sonne }

\line { den leichten Hauch des Mussalas eingeatmet!}

    }
}
