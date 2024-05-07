\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref175_2
  \tocItem \markup "Ме-хейн – Me-hejn "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8 ( [g'8])  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      \slurSolid
      es'4

      ( fis'4 )| % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "||" \break


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8 g'8  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      es'4

      (fis'4) | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "|."
    }

    \addlyrics {
      "1. Без" теб е мрак, без теб е скръб. Бо -- "же-" -- ствен лъч,
      о -- грей ме ти. В~сър -- це -- то ми ти вне -- си, в~сър -- це -- то ми вне -- си ра -- дост, мир.
      "2. Про-" -- буж -- дам се от сън дъл -- бок и те зо -- ва  ка -- то  де -- те.
      Аз  ви -- на -- ги  вяр -- вам,  че  ти над  мен  със лю -- бов  бдиш  май -- чи -- на.
    }
    \addlyrics {
      "1. Bez" teb e mrak, bez teb e skrăb. Bo -- že -- stven lăč,
      o -- grej me ti. V~săr -- ce -- to mi ti vne -- si, v~săr -- ce -- to mi vne -- si ra -- dost, mir.
      "2. Pro" -- buž -- dam se ot săn dăl -- bok i te zo -- va  ka -- to  de -- te.
      Az  vi -- na -- gi  "vjar-" -- vam,  če  ti nad  men  săs lju -- bov  bdiš  maj -- či -- na.
    }

    \header {
      title = \titleFunc "Ме-хейн" "Me-hejn"
    }

    \midi{}

  } % score

  \markup \vspace #2

  \include "../../lyrics/de/175_mehein_lyrics_de.ly"


  \label #'ref175_3
  \tocItem \markup "Ме-хейн II – Me-hejn II "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8  g'8  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      \slurSolid
      es'4

      fis'4 | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "|." \break



    }

    \addlyrics {
      В~дни на бор -- ба, в~дни на пе -- чал да -- леч от теб,
      мой ро -- ден край, аз ви -- на -- ги мис -- ля за теб,
      аз ви -- на -- ги мис -- ля  мис -- ля за теб.
    }

    \addlyrics {
      V~dni na bor -- ba, v~dni na pe -- čal da -- leč ot teb,
      moj ro -- den kraj, az vi -- na -- gi mis -- lja za teb,
      az vi -- na -- gi mis -- lja  mis -- lja za teb.
    }

    \header {
      title = \titleFunc "Ме-хейн II" "Me-hejn II"
    }

    \midi{}

  } % score
  \markup \vspace #1

  \include "../../lyrics/de/175_2_mehein_II_lyrics.ly"

  \markup \vspace #1
  \label #'ref174_3
  \tocItem \markup "Радост – Radost"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      b'4 e'4 | % 2
      b'4 e'4 | % 3
      a'4. ( b'8 ) | % 4
      g'4  e'8. fis'16 | % 5
      g'8 ( [fis'8] ) e'8 ( [dis'8] ) | % 6
      e'2 | % 7
      c''4  b'8. ais'16 \break | % 8
      b'4. e'8 | % 9
      a'4  g'8. [( fis'16 )] |
      e'2 | % 11
      c''4  b'8. ais'16 | % 12
      b'4. e'8 | % 13
      fis'8 ([ a'8 ]) g'8 ( [fis'8] ) | % 14
      e'2 \bar "|."
    }

    \addlyrics {
      Ра -- дост,
      ра -- дост, ра -- дост на жи -- во -- та __ ми, ти
      ве -- се -- лиш сър -- це -- то __ ми, ти ве -- се
      -- лиш сър -- це -- то __ ми.}
      \addlyrics {
        \repeat unfold 23 { \skip 2 } (*ду -- ша -- та __ ми.)}
        \addlyrics {
          Ra -- dost,
          ra -- dost, ra -- dost na ži -- vo -- ta __ mi, ti
          ve -- se -- liš săr -- ce -- to __ mi, ti ve -- se
          -- liš săr -- ce -- to __ mi.}
          \addlyrics {
            \repeat unfold 23 { \skip 2 } (*du -- ša -- ta __ mi.)}

            \header {
              title = \titleFunc "Радост" "Radost"
            }

            \midi{}

          } % score

          \markup \vspace #1

          % include foreign translation(s) of the song
          \include "../../lyrics/de/174_radost_lyrics_de.ly"





        } % bookpart