\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Der Sämann ist hinausgegangen" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #15
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { 1. Der Sämann ist hinausgegangen, }
    \line {   "   " um das wunderbare Gute zu säen: das neue Leben!}

    \line {   "   " Und er sät und singt leise }
    \line {   "   " vor jedem Haus und jeder Familie: }
    \vspace #0.5
    \line { "   " \italic { Refrain:}  }

  \line {   "   " Eine unschätzbare Gabe ist die Liebe [Ljubovta], }
    \line {  "   "ein schönes Gefühl die Liebe [običta],* }
    \line {   "   " und ein gutes Werk die Barmherzigkeit, }
    \line {   "   " eine üppige Quelle die Weisheit. }
     \vspace #0.5
    \line { 2. Und wer dies hört, }
    \line {   "   "erschauert vor dieser guten, lieblichen Melodie; }
    \line {   "   " und erstrahlt und aufersteht }
    \line {   "   " und segnet diese Saat.}
 
     \vspace #0.5
     \line { "   " \italic { Refrain } ... }
   \vspace #0.5
    \line { 3. Die Liebe [Ljubov] ergießt sich in den Kosmos, }
    \line {   "   " vor Liebe [običta] strahlt jedes Wesen, }
    \line {   "   " das Leben quillt über in das Leben; }
    \line {   "   " hier gibt es nicht mehr Jung noch Alt. }
 \vspace #0.5
    \line { "   " \italic { Refrain } ... }


  }

}
