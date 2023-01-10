\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Sämann ist hinausgegangen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {
     
    \line { 1. Der Sämann ist hinausgegangen, }
      \line {   "   " um das wunderbare Gute zu säen: }
           \line {   "   "      das neue Leben! }
      \line {   "   " Und er sät und singt leise }
      \line {   "   " vor jedem Haus und jeder Familie: }
      \line { " " }
      \line { "   " \italic { Refrain :}  }
    
      \line {  "  " Eine unschätzbare Gabe ist die Liebe, }
      \line {   "   "ein schönes Gefühl die Liebe, }
      \line {   "   " und ein gutes Werk die Barmherzigkeit, }
      \line {   "   " eine ergiebige Quelle die Weisheit. }
     \line { " " }
        \line { 2. Und wer dies hört, }
      \line {   "   "erschauert vor dieser guten, }
              \line {   "   "    liebevollen Melodie;  }
      \line {   "   " und erstrahlt und aufersteht }
      \line {   "   " und segnet diese Saat. }
    
    
    }
        \hspace #-1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
     
 
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
