\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Tautropfen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Tautropfen, azurblaue Welt,"
          "rein, schön, still und ohne Sturm,"
          "Frieden des paradiesischen Lebens,"
          "Frieden des paradiesischen Lebens!"
          "In dir, Tropfen, rufe ich"
          "alle lieben Brüder und Schwestern,"
          "damit wir dein Volk werden."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Jeden Morgen werden wir"
          "unsere Herzen im Tau baden"
          "wie die Sonnenstrahlen, wie die Sonnenstrahlen,"
          "und wir werden neue Lieder singen,"
          "mit wunderbaren Melodien,"
          "auf dass das rote Himmelsgewölbe widerhallt."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Und so  – rein, in weißen Kleidern"
          "und umgürtet mit der Rüstung"
          "der großen Liebe, der großen Liebe"
          "werden wir ein neues Reich errichten:"
          "auf dass wir unseren Gott verherrlichen,"
          "jeden Tag, auf ewig."
        }
      }
    }
    \hspace #0.1
  }
}
