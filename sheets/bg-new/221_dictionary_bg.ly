\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  #(define blineskip221 3.8)

  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
    print-all-headers = ##t
    print-page-number = ##t
      first-page-number = #223


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


  \markuplist \abs-fontsize #11 {
    \override #'(padding . 2) % horizontal distance
    \override #'(baseline-skip . 3.8) % vertical distance
    \override #'(line-width . 52)
    \table #'(1 -1) {
      \line  \bold {Grave} \override #`(baseline-skip . ,blineskip221)
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
