
\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref175_2
  \tocItem \markup "Ме-хейн"

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
      \set stanza = "1. " Без теб е мрак, без теб е скръб. Бо -- же -- ствен лъч,
      о -- грей ме ти. В~сър -- це -- то ми ти вне -- си, в~сър -- це -- то ми вне -- си ра -- дост, мир.
      \set stanza = "2. " Про -- буж -- дам се от сън дъл -- бок и те зо -- ва  ка -- то  де -- те.
      Аз  ви -- на -- ги  вяр -- вам,  че  ти над  мен  със лю -- бов  бдиш  май -- чи -- на.
    }

    \header {
      title = \titleFunc #'ref_desc_17 "Ме-хейн" "Me-hejn"
    }

    \midi{}

  } % score


  \tocItem \markup "Ме-хейн II"
  \label #'ref175_2_2

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

    \header {
      title = \titleFunc #'ref_desc_17 "Ме-хейн II" "Me-hejn II"
    }

    \midi{}

  } % score







} % bookpart