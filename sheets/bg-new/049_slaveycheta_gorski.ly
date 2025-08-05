\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces049" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.8 )
    2

   
  }
}

\bookpart {
  \label #'ref049
  \tocItem \markup "Славейчета горски"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key bes \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "112"
      \autoBeamOff

      bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 \break |
      a'4. g'8  | a'8 g' es' g' |  f'2 |   d'2 | \break
      \bar ".|:-||"
      es'4. es'8 | g'8 g' f' e' | f'2 | bes'2 | \break

      d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 | \break
      \bar ":|."
    }

    \addlyrics {
      \set stanza = "1. "  Ний сме сла -- вей -- че -- та гор -- ски, с~пес -- ни
      сла -- вим не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи
      хор -- ски с~пес -- ни го -- ним от зе -- мя -- та.
    }

    \header {
      title = \titleFunc #'ref_desc_20 "Славейчета горски " "Slavejčeta gorski "
    }

    \midi{}

  } % score


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Наш’те песни са ронливи,"
            "те ни носят радост вечно,"
            "хем са живи, хем игриви"
            "кат поточе бързотечно."

          } \"rightBraces049"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Ето, чуйте как се лее"
            "песента ни в тишината –"
            "и се лее, и люлее"
            "като струя във душата."
          }\"rightBraces049"
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "От гласа ни тих и строен"
            "всяко зло ще се прокуди."
            "Новий воин, млад, достоен,"
            "с песните си ще пробудим."
          }\"rightBraces049"
        }
        \vspace #1

        \line {
          \bold "5."
          \column {
            "Пейте, пейте, мили птички,"
            "тъй се истински живее,"
            "пейте, пейте дружно всички –"
            "целий свят със вас да пее! "
          }\"rightBraces049"
        }
      }
    }
  }

} % bookpart
