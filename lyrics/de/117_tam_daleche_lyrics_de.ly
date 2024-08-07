
\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dort in der Ferne" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column { 
    \line { " "Dort, in der Ferne, kenne ich einen wunderbaren Ort: }
   \line { " " Sonne, Blumen und Früchte,  eine Quelle sprudelt – es ist ein Paradiesgarten.}

    \line { " "  Du, sage mir, was du weißt, über die Heimat, paradiesische Erde,}

    \line { " "  wo der taubedeckte Kirschbaum blüht und reift.  }

    \line { " "Zu diesem schönen Ort zeige mir einen Weg. }

    \line { " "Pflücke nur die reife Frucht, ohne den jungen Trieb zu brechen.  }

    \line { " "Pflücke dir reichlich Früchte und bringe sie allen mit Freude!  }

  }
      }
}


