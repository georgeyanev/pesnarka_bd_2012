\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Der Sämann ist hinausgegangen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { 1. Der Sämann ist hinausgegangen, }
    \line {   "   " um das wunderbare Gute zu säen: das neue Leben!}

    \line {   "   " Und er sät und singt leise }
    \line {   "   " vor jedem Haus und jeder Familie: }
    \line { " " }
    \line { "   " \italic { Refrain:}  }

  \line {   "   " Eine unschätzbare Gabe ist die Liebe [lyubovta], }
    \line {  "   "ein schönes Gefühl die Liebe [obichta]*, }
    \line {   "   " und ein gutes Werk die Barmherzigkeit, }
    \line {   "   " eine üppige Quelle die Weisheit. }
    \line { " " }
    \line { 2. Und wer dies hört, }
    \line {   "   "erschauert vor dieser guten, lieblichen Melodie; }
    \line {   "   " und erstrahlt und aufersteht }
    \line {   "   " und segnet diese Saat.}
 
    \line { " " }
     \line { "   " \italic { Refrain } ... }
    \line { " " }
    \line { 3. Die Liebe ergießt sich in den Kosmos, }
    \line {   "   " vor Liebe strahlt jedes Wesen, }
    \line {   "   " das Leben quillt über in das Leben; }
    \line {   "   " hier gibt es nicht mehr Jung noch Alt. }
    \line { " " }
    \line { "   " \italic { Refrain } ... }


  }

}
