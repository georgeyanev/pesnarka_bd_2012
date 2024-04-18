\version "2.24.3"

\markup \fill-line { \fontsize #deTransTitleFontSize "Die Morgenröte des neuen Lebens" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {

  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { 1. Die wunderbare Morgenröte bricht an, }
    \line {   "   " die Morgenröte des hellen, neuen Lebens, }
    \line {   "   " mit Herrlichkeit bescheint sie}
    \line {   "   " unsere ruhende Bundeslade.}
     \vspace #0.5
    \line { "   " \italic { Refrain:}  }
    \line {   "   "In diesem neuen, leuchtenden Leben, }
     \line {   "   "in diesem neuen, leuchtenden Leben, }
    \line {   "   "ein Leben der Liebe, }
    \line {   "   " in diesem neuen, leuchtenden Leben, }
    \line {   "   " ein Leben der Güte, }
    \line {   "   "in diesem neuen, leuchtenden Leben, }
    \line {   "   "ein Leben der Freude.}

    \vspace #0.5
    \line { 2. Und die Vögel erfüllen die Luft mit }
    \line {   "   "Begeisterung und süßen Liedern im Chor, }
    \line {   "   " damit sie die Harmonie ergänzen }
    \line {   "   " im großen himmlischen Hof. }
 \vspace #0.5
    \line { "   " \italic { Refrain} ... }

  }
 \hspace #1
  \override #'(baseline-skip . 2.8)
 

  \column {
    \line { 3. Es flimmert  }
    \line {   "   " die leichtbeschwingtе Morgenröte }
    \line {   "   " und erweckt unsere Seelen; }
    \line {   "   " wie die liebe, liebevolle Mutter }
    \line {   "   " lädt sie jeden ein: „Stehe auf!“ }
     \vspace #0.5
    \line { "   " \italic { Refrain } ... }
     \vspace #0.5

    \line { 4. Strahlen aus Liebe flößen }
    \line {   "   " in unsere Brust lebendige Wärme  }
    \line {   "   " ein, mit süßem Glauben erheben sie }
    \line {   "   " uns in Stärke und Licht [videlina].}

    \vspace #0.5
    \line { "   " \italic { Refrain } ... }

     \vspace #0.5
    \line { 5. Oh, diese Strahlen kommen von  }
    \line {   "   " Gott, sie erfüllen unsere Herzen }
    \line {   "   " und flüstern uns süß zu, wie Er }
    \line {   "   " ruft: „Kommt, meine Kinder!“}
     \vspace #0.5
    \line { "   " \italic { Refrain} ... }

  }
}
