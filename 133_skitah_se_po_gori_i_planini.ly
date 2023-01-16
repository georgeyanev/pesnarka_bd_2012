\version "2.24.0"

\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key bes \major
      \time 2/4
      \tempoFunc "Lento" 4 "54"
      \autoBeamOff
      d4  g8. (  [a16] ) | % 2
      bes4. (  a8 ) | % 3
      g16  fis16  g16  a16  g8
      es8 \break | % 4
      \time 3/4  | % 4
      d2
      \tupletUp \times 2/3  {
        a'8   bes8  c8
      }
      | % 5
      d4.  a8
      \times 2/3  {
        c8   bes8  a8
      }
      | % 6

      \times 2/3  {
       \stemUp bes8 (   a8 )  g8
      } \stemNeutral
      g2 \break | % 7
      d'4 (
      \times 2/3  {
        d8 )   cis8  d8
      }

      \times 2/3  {
        es8   d8  cis8
      }
      | % 8
      d2
      \times 2/3  {
        a8   bes8  c8
      }
      | % 9
      d4.  c8  d8  c8 \break
      |
      bes2
      \times 2/3  {
        a8   bes8  c8
      }
      | % 11
      d4.  a8  c16  bes16
      a16  g16 | % 12
      g2 r4 \break \repeat volta 2 {
        | % 13
        \time 4/4  | % 13
        d'8 ^\fermata
        \times 2/3  {
          d16  d16  d16 ]
        }
        d8 ( [  g8 ) ]  bes2 | % 14
        a16  g16  fis16  g16
        a8.  g16  g2 \break | % 15
        \tempo "rall." f!16 es16
        d16  cis16  d2
        \times 2/3  {
          \tempo "a tempo" c8 bes8
          a8
        }
        | % 16
        \time 3/4  | % 16
        bes2
        \times 2/3  {
          a8  bes8  c8
        }
        \break | % 17
        d4.  c8  d16 ( [  c16
        ) ]  bes16  a16 | % 18
        bes2
        \times 2/3  {
          a8   bes8  c8 } \time 2/4 \break | % 19
          d4.  c8 |
          \times 2/3  {
            bes8   a8  g8
          }
          \times 2/3  {
            fis8   g8    a8
          } |
          \tempo "rit." g2

        }
      }

      \addlyrics {
        Ски -- тах  се  по го -- ри
        и пла -- ни -- ни. Е -- дин Не --
        зна -- ен ме "при-" -- дру -- жа  --
        ва -- ше. Кач -- вах -- ме и сли
        -- зах -- ме "пла-" -- "нин-" -- ски свет --
        ли вър -- хо -- ве и, хо -- дей --
        ки, Той ви -- на -- ги с‿мен бе.
        Там го -- ре ви -- дях  аз Не --
        го -- ва -- та Свет -- ли -- на, що
        ме о -- за -- ри, и ка -- за Той:
        „Пом -- ни, че тряб -- ва го --
        ре да си, слез -- ни и знай– на
        вси -- чки по -- ле -- зен бъ --
        ди.“ }
        \addlyrics {  Ski -- tah  se  po go -- ri
        i pla -- ni -- ni. E -- din Ne --
        zna -- en me pri -- dru -- zha  --
        va -- she. Kach -- vah -- me i sli
        -- zah -- me pla -- nin -- ski svet --
        li var -- ho -- ve i, ho -- dey --
        ki, Toy vi -- na -- gi s‿men be.
        Tam go -- re vi -- dyah  az Ne --
        go -- va -- ta Svet -- li -- na, shto
        me o -- za -- ri, i ka -- za Toy:
        „Pom -- ni, che tryab -- va go --
        re da si, slez -- ni i znay– na
        vsi -- chki po -- le -- zen ba --
        di.“}

        \header {
          title = \titleFunc "Скитах се по гори и планини" "Skitah se po gori i planini"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/133_skitah_se_po_gori_i_planini_lyrics_de.ly"

    } % bookpart
