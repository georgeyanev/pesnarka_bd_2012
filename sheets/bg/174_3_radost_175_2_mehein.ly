\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

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
      Ра -- дост, Ра -- дост на Жи -- во -- та __ ми, ти
      ве -- се -- лиш сър -- це -- то __ ми, ти ве -- се
      -- лиш сър -- це -- то __ ми.}

        \header {
          title = \titleFunc "Радост" "Radost"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      

      \markup \empty-two

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
          "1. Без" теб е мрак, без теб е скръб. Бо "же-" -- ствен лъч,
          о -- грей ме ти. В~сър це то ми ти вне -- си, в~сър -- це то ми вне -- си Ра дост, Мир.
          "2. Про-" -- буж -- дам се от сън дъл -- бок и те зо -- ва  ка -- то  де -- те.
          Аз  ви -- на -- ги  вяр -- вам,  че  ти над  мен  със Лю -- бов  бдиш  май -- чи -- на.
        }

        \header {
          title = \titleFunc "Ме-хейн" "Me-hejn"
        }

        \midi{}

      } % score


      \markup \empty-one

      % include foreign translation(s) of the song
      
      \markup \empty-two

      \markup \fill-line { \fontsize #deTitleFontSize "Ме-хейн II*" }

      \markup  \fontsize #bgCoupletFontSize {
        \vspace #1
        \hspace #2
        \override #'(baseline-skip . 1.8)
        \column {
          \line { 1. В'дни на борба, в'дни на печал, }
          \line {   "   "  далеч от теб мой роден край,}
          \line {   "   " аз винаги мисля за теб,}
          \line {   "   " аз винаги мисля  мисля за теб.}
        }

      } % markup
      \markup \empty-two
      

    } % bookpart
