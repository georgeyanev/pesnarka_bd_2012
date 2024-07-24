\version "2.24.4"

\include "include/globals.ily"

\bookpart {
  \label #'ref121
  \tocItem \markup "Ранен час – Ranen čas"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


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
        Ra -- nen čas e, vsič -- ko pej,
        trep -- ti. Slăn -- ce grej, rad --
        va se du -- ša -- ta na sve -- ta
        za ve -- li -- ka -- ta Lju -- bov.
        Pej, "săr-" -- ce, za -- bra -- vi
        skrăb -- ta i bu -- ri -- te čo --
        veš -- ki v~to -- ja di -- ven čas.
        Čuj __  gla -- sa mi! Ve -- li --
        ki -- jat ži -- vot se raž -- da
        v~tež -- ka -- ta skrăb. Ti -- ha
        ra -- dost, nov ži -- vot no -- si
        ta -- zi bu -- rja na sve -- ta.
        Nov ži -- vot na lju -- bov du --
        ša mi da stop -- li. Svo -- bo
        -- da, si -- len duh i mir šte i --
        maš ti. Čuj __  gla -- sa mi!
        Ti -- hi zvu -- ci teb zo -- vat,
        več -- na Lju -- bov tam ca -- ri!}


        \addlyrics {
          \repeat unfold 52 { \skip 2 } (*Ве -- лик жи -- вот се раж -- да са -- мо в~теж -- ка -- та скръб.)
        }

        \addlyrics {
          \repeat unfold 52 { \skip 2 } (*Ve -- lik ži -- vot se raž -- da sa -- mo v~tež -- ka -- ta skrăb.)
        }
        \header {
          title = \titleFunc "Ранен час" "Ranen čas"
        }

        \midi{}

      } % score

      \markup \vspace #3

      % include foreign translation(s) of the song
      \include "../../lyrics/de/121_ranen_chas_lyrics_de.ly"

    } % bookpart
