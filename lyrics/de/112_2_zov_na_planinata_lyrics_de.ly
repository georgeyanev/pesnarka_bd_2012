\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Gebirges" }

\markup \null
\markup \null
\markup \abs-fontsize #10 {
      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { 1. Und ich hüpfe wie ein Vöglein von Ast zu Ast, }

  \line {   "   "  so dass sich jeder wundert, }

   \line {   "   "  wenn er mich sieht.}
    \vspace #0.5

    \line { 2.  Ich stimme ein wunderbares Lied über die Sonne an,}

     \line {   "   "  klare kleine Quellen beginnen zu murmeln.}
   \vspace #0.5

    \line { 3. Und ich sehe einen steilen Gipfel vor mir:}

   \line {   "   "  Er ruft mich leise dort hinauf. }


  }

      }
}
