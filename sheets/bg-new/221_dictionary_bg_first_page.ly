\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  #(define blineskip221 3.8)

  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##t


    % put page numbers on the bottom
    oddHeaderMarkup = \markup {

      \fill-line {
        ""
        \if \should-print-page-number  \abs-fontsize #10 {
          \bold \fromproperty #'page:page-number-string

        }
      }
    }
    evenHeaderMarkup = \markup {

      \fill-line {
        \if \should-print-page-number \abs-fontsize #10 {
          \bold  \fromproperty #'page:page-number-string
          ""
        }
      }
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 8\mm
    top-system-spacing.basic-distance = 10\mm
    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }


  \label #'ref221
  \tocItem \markup "Речник на музикалните термини"

  \markup \abs-fontsize #16 { \fill-line {"Речник на музикалните термини"} }

  \markuplist \abs-fontsize #11 {
    \override #'(padding . 2) % horizontal distance
    \override #'(baseline-skip . 3.8) % vertical distance
    \override #'(line-width . 52)
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
     
    }
  }
} % bookpart
