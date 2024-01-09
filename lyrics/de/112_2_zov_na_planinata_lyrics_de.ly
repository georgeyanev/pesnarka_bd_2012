\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Gebirges" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { 1. Und ich hüpfe wie ein Vöglein von Ast zu Ast, }

  \line {   "   "  so dass sich jeder wundert, }

   \line {   "   "  wenn er mich sieht.}
     \line { " "}

    \line { 2.  Ich stimme ein wunderbares Lied über die Sonne an,}

     \line {   "   "  klare kleine Quellen beginnen zu murmeln.}
    \line { " "}

    \line { 3. Und ich sehe einen steilen Gipfel vor mir:}

   \line {   "   "  Er ruft mich leise dort hinauf. }


  }


}
