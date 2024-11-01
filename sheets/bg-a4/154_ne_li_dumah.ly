\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref154
  \tocItem \markup "Не ли думах"
     \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

      a''8 a''8 a''8 a''8 | % 2
      g''8 f''8 f''8 f''16 [ ( g''16 ) ] | % 3
      a''4 a''8. [( g''16 )] | % 4
      g''2 | % 5
      c''2 \break | % 6
      g''4 g''8. [( f''16 )] | % 7
      a''8 f''8 f''8 e''8 | % 8
      e''8 c''8 c''16 d''16 e''16 e''16 \break | % 9
      \time 3/4  g''8 f''8 f''8 e''8 e''8 c''8 |
      \time 2/4  d''4. e''8 | % 11
      f''4 g''4 | % 12
      a''8 f''8 f''8 e''8 \break | % 13
      e''8 c''8 c''16 d''16 e''16 e''16 | % 14
      \time 3/4  g''8 f''8 f''8 e''8 e''8 c''8 | % 15
      \time 2/4  d''4 d''4 \bar "||"
      \break | % 16
      c'4 d'8 [( e'8 )] | % 17
      g'8 f'8 f'8\prall e'8 | % 18
      e'8 c'8 c'16 d'16 e'16 e'16 \break | % 19
      \time 3/4  g'8 f'8 f'8 e'8 e'8 c'8 |
      \time 2/4  d'4. e'8 | % 21
      f'4 g'4 | % 22
      a'8 f'8 f'8\prall e'8 \break | % 23
      e'8 c'8 c'16 d'16 e'16 e'16 | % 24
      \time 3/4  g'8 f'8 f'8 e'8 e'8 c'8 | % 25
      \time 2/4  d'4 d'4 \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " Не ли ду
      -- мах, ми -- ла ма -- мо, __ не ли __ каз -- вах да
      не __ се -- ди на -- ша Дон -- ка край ог -- ни --
      ще, в~къ -- щи са -- мо да се гу -- ши, а да
      и -- де, ма -- мо, ве -- че на шко -- ло -- то,
      да за -- поч -- не да се у -- чи. На -- ша __ Дон
      -- ка, ми -- ла ма -- мо, е ро -- де -- на мо --
      ма ум -- на, да -- ро -- ви -- та, та е вре --
      ме от шко -- ло -- то за жи -- во -- та не --
      що доб -- ро да на -- у -- чи.
    }

    \header {
      title = \titleFunc #'ref_desc_18 "Не ли думах" "Ne li dumah"
    }

    \midi{}

  } % score

  \markup \vspace #1

  \markup \abs-fontsize #12 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Да не ходи вечер, мамо, на чешмата,"
            "на момците пълни стомни да поднася,"
            "росни китки да им обещава,"
            "а на болни вечер из селото нека тя вода разнася."
            "Наша Донка, мила мамо, по душа е блага, кротка, милостива,"
            "но сърце си трябва да научи, мамо, момците да не посмива."
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Сутрин рано на чешмата да отива,"
            "в бели менци, мамо, вода да налива бодра, весела, засмяна,"
            "с чиста, бяла риза, с хубава премяна."
            "Та за пример тя да стане."
            "Кой я види как работи из селото, как на всекиму помага,"
            "да обикне и да прояви доброто като тая душа блага."
          }
        }
      }
    }
  }

} % bookpart
