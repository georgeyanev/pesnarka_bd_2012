\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Melodie 1 – Schönes Leben" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Schönes Leben – unendlicher Weg!"
         "Ich erinnere mich manchmal, es war irgendwo fern."
         "Dort ging die Sonne nie unter, und der Himmel –"
         "immer azurblau, Frieden und Licht."
         "Hymnen der Liebe singen die Engel unaufhörlich,"
         "schwingen, tönen im Einklang die Sternuniversen."
         "Und die ermattete Seele erhebt sich – ewiges Streben."
         "In Trauer, Freude und Tränen führt mein Weg hinaus, ich weiß."
         "Der mächtige Geist fliegt in die sonnige Heimat."
        }
      }
      
    }\hspace #0.1
  }
}
