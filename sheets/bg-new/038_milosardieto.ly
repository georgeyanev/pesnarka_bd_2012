\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref038
  \tocItem \markup "Милосърдието"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #21
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      f'8 f'8 | d'4. es'8 f' ([ g' ]) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
      c''4. b'8 c'' ([ d'' ]) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |
      d'4. es'8 f' ([ g' ]) | f'2 g'8 a' | bes'4. a'8 bes' ([ c'' ]) | d''2 es''8 es'' \break
      \repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( [a'] ) |}
      \alternative { { bes'2 es''8 es'' } {  bes'2 \bar "|." \break } }
    }


    \addlyrics {
      \set stanza = "1. " Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
      ска, чуд -- но пре -- ме -- не -- на, пъл -- на
      с~ху -- бост май -- ска. Бил -- ки и дър -- ве --
      та, в~кра -- со -- та раз -- ви -- ти, с~и -- зо
      -- бил -- на рож -- ба вся -- ко -- га по -- кри
      -- ти, с~и -- зо -- ти.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Милосърдието" "Milosărdieto"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Всичко драго, мило и в любов живее,"
            "и цъфти, и върже, и расте, и зрее  –"
            "пролет, лято, есен и през цяла зима,"
            "откогато хора на земята има. (2)"

          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "И щом пътник морен мине край градина,"
            "всяко живо клонче весело му кима –"
            "плодове узрели без корист предлага"
            "с непресторна нега и усмивка блага. (2)"
          }
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "Бедни и богати, здрави или болни"
            "и по всяко време тука са доволни,"
            "че сменяват в радост грижите, хомота"
            "и с утеха виждат смисъл във живота. (2)"
          }
        }
        \vspace #1

        \line {
          \bold "5."
          \column {
            "Затуй, който дири истинска победа,"
            "рай такъв прекрасен нека си отгледа!"
            "Няма да се свърши щастие за него,"
            "ще го благославят и земя, и небо. (2)"
          }
        }
      }
    }
  }





} % bookpart
