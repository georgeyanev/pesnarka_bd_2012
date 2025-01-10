\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Sämann ist hinausgegangen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Der Sämann ist hinausgegangen,"
          "um das wunderbare Gute zu säen: das neue Leben!"
          "Und er sät und singt leise"
          "vor jedem Haus und jeder Familie:"
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "Eine unschätzbare Gabe ist die Liebe [Ljubovta],"
          "ein schönes Gefühl die Liebe [običta],"
          "und ein gutes Werk die Barmherzigkeit,"
          "eine üppige Quelle die Weisheit."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Und wer dies hört,"
          "erschauert vor dieser guten, lieblichen Melodie;"
          "und erstrahlt und aufersteht"
          "und segnet diese Saat."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "3."
        \column {
          "Die Liebe [Ljubov] ergießt sich in den Kosmos,"
          "vor Liebe [običta] strahlt jedes Wesen,"
          "das Leben quillt über in das Leben;"
          "hier gibt es nicht mehr Jung noch Alt."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

    }\hspace #0.1
  }
}


