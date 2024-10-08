\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  #(define blineskip221 2.2)
  \include "include/bookpart-paper.ily"
  \label #'ref221
  \tocItem \markup "Речник на музикалните понятия"

  \markup \fontsize  #+4.0 { \fill-line \bold {"РЕЧНИК НА МУЗИКАЛНИТЕ ТЕРМИНИ"} }

  \markuplist \fontsize  #+1.9 {
    \override #'(padding . 2) % horizontal distance
    \override #'(baseline-skip . 3.5) % vertical distance
    \override #'(line-width . 42)
    \table #'(1 -1) {
      \line {" "}
      \line {"                "}

      \line \bold {a tempo} \override #`(baseline-skip . ,blineskip221)
      \justify {в темпо (връщане в предишното темпо след отклонение); темпо – скоростта на пулсацията}

      \line \bold {accelerando (accel.)} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[ачелерандо]" забързване, ускоряване}

      \line \bold {ad libitum} \override #`(baseline-skip . ,blineskip221)
      \justify {по желание, свободно (без фиксирано темпо)}

      \line \bold {Adagio} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[ададжо]" бавно}

      \line \bold {Allegretto} \override #`(baseline-skip . ,blineskip221)
      \justify {(умалително от Allegro) – бързичко}

      \line \bold {Allegro} \override #`(baseline-skip . ,blineskip221)
      \justify {бързо (букв. „весело“, но като музикално указание означава не настроение, а темпо).}

      \line \bold {Allegro vivace} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[Алегро виваче]" по-бързо от \italic"Allegro"; вж. \italic"Vivace"}

      \line \bold { Ancora più mosso} \override #`(baseline-skip . ,blineskip221)
      \justify { още малко по-бързо}

      \line \bold {Andante} \override #`(baseline-skip . ,blineskip221)
      \justify {спокойно, букв. „ходом“; малко по-бавно от \italic"Moderato"}

      \line \bold {Andante sostenuto} \override #`(baseline-skip . ,blineskip221)
      \justify {малко по-бавно от \italic"Andante;" вж. \italic"sostenuto"}

      \line \bold {Andantino} \override #`(baseline-skip . ,blineskip221)
      \justify {(умалително от \italic"Andante") – спокойно, но малко по-подвижно от \italic"Andante" }

      \line \bold {Animato} \override #`(baseline-skip . ,blineskip221)
      \justify {оживено}

      \line \bold {Attacca} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[атака]" указва, че веднага започва следващата част на циклична творба – в случая следващата песен}

      \line \bold {cantabilе} \override #`(baseline-skip . ,blineskip221)
      \justify {напевно}

      \line \bold {D.C. (da capo)} \override #`(baseline-skip . ,blineskip221)
      \justify {отначало; песента се изпълнява втори път}

      \line \bold {D.C. al Fine} \override #`(baseline-skip . ,blineskip221)
      \justify {отначало до думата \italic"Fine" (край)}

      \line \bold {D.C. con ripetizione (-ni)} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[да капо кон рипетиционе]" отначало с повторението (-ята)}

      \line \bold {D.C. senza ripetizione (-ni)} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[...сенца...]" отначало без повторението (-ята)}

      \line \bold {D.S. al Fine (dal segno...)} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[дал сеньо ал фине]" от знака {\small \musicglyph "scripts.segno" } до думата \italic"Fine"}

      \line \bold {e} \override #`(baseline-skip . ,blineskip221)
      \justify {и; напр. \italic"rit. e morendo" – забавяне и замиране}

      \line \bold {espressivo} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[еспресиво]" изразително}

      \line \bold {Fine} \override #`(baseline-skip . ,blineskip221)
      \justify {край \italic"(вж. D.C. al Fine)"}

      \line \bold {Grave} \override #`(baseline-skip . ,blineskip221)
      \justify {много бавно, букв. тежко}

      \line \bold {grazioso} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[грациозо]" грациозно}

      \line \bold {Largamente} \override #`(baseline-skip . ,blineskip221)
      \justify {разширено, забавено}

      \line \bold {Larghetto} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[ларгето]" (умалително от \italic"Largo") – бавно, но не колкото \italic"Largo"}

      \line \bold {Largo} \override #`(baseline-skip . ,blineskip221)
      \justify {бавно, букв. широко}

      \line \bold {Lento} \override #`(baseline-skip . ,blineskip221)
      \justify { бавно, букв. протяжно}

      \line \bold {L’istesso tempo} \override #`(baseline-skip . ,blineskip221)
      \justify { \italic "[листесо...]" същото темпо}

      \line \bold {Maestoso} \override #`(baseline-skip . ,blineskip221)
      \justify { \italic"[маестозо]" величествено, тържествено}

      \line \bold {Meno} \override #`(baseline-skip . ,blineskip221)
      \justify {по-малко, не толкова}

      \line \bold {Meno mosso} \override #`(baseline-skip . ,blineskip221)
      \justify {по-бавно (букв. „по-малко подвижно“)}

      \line \bold {Moderato} \override #`(baseline-skip . ,blineskip221)
      \justify { умерено}

      \line \bold {ossia} \override #`(baseline-skip . ,blineskip221)
      \justify { \italic"[осѝа]" или (при предлагане на вариант)}

      \line \bold {Più} \override #`(baseline-skip . ,blineskip221)
      \justify { повече, по-}

      \line \bold {Più mosso} \override #`(baseline-skip . ,blineskip221)
      \justify { по-бързо}

      \line \bold {Poco} \override #`(baseline-skip . ,blineskip221)
      \justify {малко (като степен)}

      \line \bold {poco a poco} \override #`(baseline-skip . ,blineskip221)
      \justify {малко по малко, постепенно}

      \line \bold {rallentando (rall.)} \override #`(baseline-skip . ,blineskip221)
      \justify { забавяне (по-голямо, отколкото \italic"ritardando")}

      \line \bold {recitativo} \override #`(baseline-skip . ,blineskip221)
      \justify { \italic"[речитативо]" речитатив, рецитация; пеене, наподобяващо говор}

      \line \bold {risoluto} \override #`(baseline-skip . ,blineskip221)
      \justify { \italic"[ризолуто]" решително}

      \line \bold {ritardando (rit.)} \override #`(baseline-skip . ,blineskip221)
      \justify { забавяне}

      \line \bold {ritenuto (rit.)} \override #`(baseline-skip . ,blineskip221)
      \justify { забавяне, сдържане}

      \line \bold {rubato} \override #`(baseline-skip . ,blineskip221)
      \justify { ритмически свободно изпълнение (букв. \italic"откраднато")}
      \line \bold {senza} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[сенца]" без}

      \line \bold {senza misura} \override #`(baseline-skip . ,blineskip221)
      \justify {без размер, без тактове}

      \line \bold {Sostenuto} \override #`(baseline-skip . ,blineskip221)
      \justify {сдържано (за темпо)}

      \line \bold {Tempo di marcia} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[...марча]" темпо на марш}

      \line \bold {Tempo di valzer} \override #`(baseline-skip . ,blineskip221)
      \justify {\italic"[...валцер]" темпо на валс}

      \line \bold {Tempo I} \override #`(baseline-skip . ,blineskip221)
      \justify { \italic"[темпо примо]" началното темпо (връщане в него след промяна на темпото)}

      \line \bold {Vivo (= Vivace)} \override #`(baseline-skip . ,blineskip221)
      \justify {живо, бързо}
    }
  }
} % bookpart
