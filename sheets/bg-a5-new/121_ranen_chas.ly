\version "2.24.3"

\include "include/globals.ily"

\bookpart {
  \label #'ref121
  \tocItem \markup "Ранен час"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 13)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 0.75))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 3))
          includeGraceNotes = ##t
        }
      } % layout


    \new Voice \relative c' {
      \clef treble
      \key bes \minor
      \time 2/4
      \tempoFunc "Larghetto" 4 "56"
      \autoBeamOff

      bes'4.  des8 | % 2
      c8  bes8  a8  c8 | % 3
      bes4.  f8 | % 4
      bes2 \break | % 5
      \time 3/4  | % 5
      as8.  as16  as2 | % 6
      as16  bes16  as16  ges16
      f8.  es16  des8  es8 | % 7
      \time 2/4  | % 7
      f2 \break | % 8
      es4.  f8 | % 9
      ges8  ges8  as8 bes8 |
      \barNumberCheck #10
      f2 | % 11
      \time 3/4  | % 11
      des'8.  des16  des2 \break | % 12
      c16  des16  es16  des16
      c16  bes16  a16  ges16
      f16  es16  des16  c16 | % 13
      bes8  a8  ges'4.  f8 \break | % 14
      f2 ^\fermata
      \tuplet 3/2 {   a,8 ( [  bes8 ) ]  c8 }
      | % 15
      des4 ^\fermata  c4. ^\fermata \caesura f8 | % 16
      \time 4/4  | % 16
      bes4.  as8  bes8  as8
      ges8  f8 \break | % 17
      es4.  f8  ges4  as8  bes8
      | % 18
      \time 2/4  | % 18
      f2 | % 19
      \time 3/4  | % 19
      f4.  es8  f8  es8 |
      \time 2/4  |
      des4  c4  | % 21
      ges'2 \break | % 22
      f4  des4 | % 23
      \tempo "rall." c16  des16  es16
      des16  c8.  des16 | % 24
      \time 3/4 bes2 \caesura % 25
      bes'8.  bes16 |
      \tempo "a tempo" bes2 % 26
      c16  des16  c16  bes16 |
      \time 2/4
      \tupletUp \tuplet 3/2 {a8  bes8  c8 }
      bes8 ( [  ges8 ) ] | % 27
      \time 3/4 f2 aes?8.  as16 | % 28
      as2  as16  bes16  as16
      ges16 \break | % 29
      \time 2/4  | % 29
      f8.  es16  des8  es8 |
      \time 3/4  | f2
      \tuplet 3/2 {a,8 ( [  bes8 ) ]  c8 }
      | % 31
      des4 ^\fermata  c2 | % 32
      f4.  es8  f8  es8 \break | % 33
      \time 2/4  | % 33
      des4  c4 | % 34
      ges'2 | % 35
      \time 3/4  | % 35
      \tuplet 3/2 { f8 \tempo "rit.               " es des } des4 \fermata  c8. bes16 | \time 2/4 bes2 \fermata \bar "|." \break
    }

    \addlyrics {
      Ра -- нен час е, всич -- ко пей,
      треп -- ти. Слън -- це грей, рад --
      ва се ду -- ша -- та на све -- та
      за ве -- ли -- ка -- та Лю -- бов.
      Пей, "сър-" -- це, за -- бра -- ви
      "скръб-" -- та и бу -- ри -- те чо --
      веш -- ки в~то -- я ди -- вен час.
      Чуй __  гла -- са ми! Ве -- ли --
      ки -- ят жи -- вот се раж -- да
      в~теж -- ка -- та скръб. Ти -- ха
      "ра-" -- дост, нов жи -- вот но -- си
      та -- зи бу -- ря на све -- та.
      Нов жи -- вот на "лю-" -- бов ду --
      ша ми да стоп -- ли. Сво -- бо
      -- да, "си-" -- лен дух и мир ще и --
      маш ти. Чуй __  гла -- са ми!
      Ти -- хи зву -- ци теб зо -- ват,
      веч -- на Лю -- бов там ца -- ри!}
      \addlyrics {
        \repeat unfold 52 { \skip 2 } (*Ве -- лик жи -- вот се раж -- да са -- мо в~теж -- ка -- та скръб.)
      }

      \header {
        title = \titleFunc #'ref_desc_12 "Ранен час" "Ranen čas"
      }

      \midi{}

    } % score


  } % bookpart
