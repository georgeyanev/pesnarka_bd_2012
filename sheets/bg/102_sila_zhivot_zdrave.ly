\version "2.24.2"

\include "include/globals.ily"

\bookpart {
  \label #'ref102
  \tocItem \markup "Сила, живот, здраве"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 6/4
      \tempoFunc "Andante" 4 "60"
      \override Staff.BarLine.gap = 0.5

      \slurUp a4 ( d'8. e'16 f' e' d' cis' d'8 e' ) a2 \break

      \time 5/4  a'16 ( bes' a' gis' a' bes' a' gis' a'8 bes' ) a'2 \break |


      \time 4/4  d''8. ( e''16 f'' e'' d'' cis'' \autoBeamOff d''8 [bes'] a' [g']| f'8 [e'] f' [g'] ) a'2 \break |

      \slurNeutral \time 2/4 d''4  cis''8 \noBeam cis'' | d''2  | f'4 e'8 e' | d'4. \bar "!!" d'16 [( e' )] \break |

      \time 6/8  \repeat volta 2 {
        | f'4^\markup {
          % make tempo notes
          \concat {
            \teeny \general-align #Y #DOWN \note {4.} #0.8
            \normal-text { " = " }
            \teeny \general-align #Y #DOWN \note {4} #0.8
            \normal-text { "  (= 60)" }
          }
        }


        f'8 f'4 e'16 \noBeam d' |e'4. ~ e'4 e'16 [( f' )] | g'4 a'8 f'4 e'8 \break |

        f'4 e'8 d'4 e'8 |  e'4 g'8 f'4 e'8 | f'4 e'8 d'4 e'8 \break |

        e'4 g'8 f'4 e'8 | f'4 e'8 d'4. | \time 2/4 d''4^\markup {
          % make tempo notes
          \concat {
            \teeny \general-align #Y #DOWN \note {4} #0.8
            \normal-text { " = " }
            \teeny \general-align #Y #DOWN \note {4.} #0.8
            \normal-text { "  (= 60)" }
          }
        }

        cis''8 \noBeam cis'' \break |

        d''2 | f'4 e'8 \noBeam e' |
      } \alternative { { d'4. \bar "!" \bar "!!" d'16 [( e'16 )] } { d'2 } } \bar "|."

    }

    \addlyrics {
      Си -- ла, жи
      -- вот, здра -- "ве –" те са ед -- но, те са ед --
      но. Слу -- жи -- те -- ли на Ду -- ха, __ но -- си
      -- те -- ли на ра -- дост -- та, кре -- пи -- те
      -- ли на мла -- дост -- та, кре -- пи -- те -- ли
      на мла -- дост -- та, те са ед -- но, те са ед
      -- но. Слу -- но.}

      \header {
        title = \titleFunc "Сила, живот, здраве" "Sila, Život, zdrave"
      }

      \midi{}

    } % score

  } % bookpart
