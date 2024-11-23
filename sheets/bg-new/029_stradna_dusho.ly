\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref029
  \tocItem \markup "Страдна душо"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #15
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      d'8 d' g'8 ([ a' ]) a'2 | \time 2/4 bes'8 ([ a' ])  bes' ([ c'' ])  |

      \time 4/4 bes'4 a'2 a'8 a' | \break
      d''4. d''8 c'' ([ d'' ]) d'' ([ c'' ]) \time 3/4  bes'4 a'2 |
      \time 4/4  a'8 ([ bes' ]) c'' ([ d'' ]) c'' bes' a' g' |\break
      \time 3/4  f'8 ([ g' ]) a'2 | \time 6/4  bes'4. a'8 bes' ([ a' ]) bes' ([ c'' ]) d'' ([ c'' ]) bes' ([ a' ]) \break |
      \time 3/4  |a'8 ([ g'8 ]) a'2 | \time 6/4  d'4. e'8 f'4\staccato e'4\staccato d'\staccato cis'\staccato | \time 4/4  e'2 d' | \bar "|." \break

    }

    \addlyrics {
      \set stanza = "1. " Страд -- на
      ду -- шо, ти __ коп -- не -- еш, за как -- во го --
      риш и __ тле -- еш? Сло -- во -- то Ти, Бо -- же,
      ча -- кам и о -- бил -- на -- та Ти __ ми -- лост,
      за тях стра -- дам и коп -- не -- я.}

      \header {
        title = \titleFunc #'ref_desc_3 "Страдна душо" "Stradna dušo"
      }

      \midi{}

    } % score



    \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
      \fill-line {
        \hspace #0.1
        \column {
          \line {
            \bold "2."
            \column {
              "И гладувам, и жадувам,"
              "тях очаквам денонощно."
              "Ти ме, Боже, благославяй,"
              "при Теб близо аз да бъда"
              "и утеха в Теб да найда."
            }
          }
          \vspace #1
          \line {
            \bold "3."
            \column {
              "Твоя светъл лик да гледам"
              "и величието Твое;"
              "да науча Теб да любя."
              "В таз Любов към Тебе, Боже,"
              "да намеря мощна сила."
            }
          }

        }
        \hspace #0.1
        % adds horizontal spacing between columns
        \column {
          \line {
            \bold "4."
            \column {
              "В подвизи и съвършенство"
              "да познавам милостта Ти,"
              "превеликата Ти тайна,"
              "що разкрива на човека"
              "суетата на живота."
            }
          }
          % adds vertical spacing between verses
          \vspace #1
          \line {
            \bold "5."
            \column {
              "Всичко грешно на земята"
              "е преходно, мимолетно"
              "Само Ти си вечен, Боже,"
              "Тебе хвалим, Тебе славим,"
              "Теб ще славят вековете."
            }
          }
        }\hspace #0.1
      }
    }
  } % bookpart
