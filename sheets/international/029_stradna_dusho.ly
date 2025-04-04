\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref029
  \tocItem \markup "Страдна душо – Stradna dušo"
  \include "include/bookpart-paper.ily"
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

      \addlyrics {
      \set stanza = "1. " Strad -- na
      du -- šo, ti __ kop -- ne -- eš, za kak -- vo go --
      riš i __ tle -- eš? Slo -- vo -- to Ti, Bo -- že,
      ča -- kam i o -- bil -- na -- ta Ti __ mi -- lost,
      za tjah stra -- dam i kop -- ne -- ja.}



        \header {
          title = \titleFunc "Страдна душо" "Stradna dušo"
        }

        \midi{}

      } % score

     \markup \vspace #2
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
          \vspace #1
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

      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses

        \line {
            \bold "2."
            \column {
              "I gladuvam, i žaduvam,"
              "tjah očakvam denonoštno."
              "Ti me, Bože, blagoslavjaj,"
              "pri Teb blizo az da băda"
              "i uteha v Teb da najda."
            }
          }
          \vspace #1
          \line {
            \bold "3."
            \column {
              "Tvoja svetăl lik da gledam"
              "i veličieto Tvoe;"
              "da nauča Teb da ljubja."
              "V taz Ljubov kăm Tebe, Bože,"
              "da namerja moštna sila."
            }
          }
          \vspace #1
           \line {
            \bold "4."
            \column {
              "V podvizi i săvăršenstvo"
              "da poznavam milostta Ti,"
              "prevelikata Ti tajna,"
              "što razkriva na čoveka"
              "suetata na života."
            }
          }
          % adds vertical spacing between verses
          \vspace #1
          \line {
            \bold "5."
            \column {
              "Vsičko grešno na zemjata"
              "e prehodno, mimoletno"
              "Samo Ti si večen, Bože,"
              "Tebe hvalim, Tebe slavim,"
              "Teb šte slavjat vekovete."
            }
          }

      }\hspace #0.1
    }
  }
     

      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/029_stradna_dusho_lyrics_de.ly"

    } % bookpart
