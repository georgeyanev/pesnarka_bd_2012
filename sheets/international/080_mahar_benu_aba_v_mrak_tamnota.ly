\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref080
  \tocItem \markup "Махар Бену Аба – Mahar Benu Aba"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \minor
      \time 3/4
      \tempoFunc "Adagio" 4 "56"

      \autoBeamOff

      \partial 4

      \repeat volta 2 {
        g4 | c2 d4 | es2 c 4 |  g2 g'4 | g2 c8 c8 | c2 b4 |\break  c2 as4 |


        g2 fis4 |g2 f?4 | es2 d4 |  es2 d4 | c2 b4 | c2 es4 | g2 f4 | \break

        es2 d4 | c2 d8 d | f2 es4 | d2 c4 | es2 d4 | \tempo "          Fine" c2
      }

    }

    \addlyrics {
      Ма -- хар Бе -- ну А -- ба, Ве -- ют
      Би -- ла -- дер А -- дер Бе -- ну ше -- ла,
      Бе -- ну ше -- ла, Бе -- ну ше -- ла,
      ше -- ла, ше -- ла, ше -- ла,
      Би -- ла -- дер А -- дер Бе -- ну ше -- ла.
    }

   \addlyrics {
      Ma -- har Be -- nu A -- ba, Ve -- jut
      Bi -- la -- der A -- der Be -- nu še -- la,
      Be -- nu še -- la, Be -- nu še -- la,
      še -- la, še -- la, še -- la,
      Bi -- la -- der A -- der Be -- nu še -- la.
    }

    \header {
      title = \titleFunc "Махар Бену Аба" "Mahar Benu Aba"
    }

    \midi{}

  } % score

  \markup \italic \dc-one-nobold "attacca „В мрак тъмнота“/„V mrak tămnota“"

    \label #'ref080_1
  \tocItem \markup "В мрак тъмнота – V mrak tămnota"


  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 3/4
      \tempoFunc "Andante" 4 "66"

      \partial 4

      g4  | c'2 \autoBeamOff b8 c' | \autoBeamOn d'2 g4 | es'2 d'4 | \break c'2 ( d'16 c' b c'  |

      d'2 ) c'4 | c'2 f'4 |  \autoBeamOff f'2 es'8 d' | es'2 f'4 |\break g'2 as'4

      g'2 fis'4 | g'2 as'4 | g'2 f'4 | \break  \repeat volta 2 {
        f'2 es'8 d' |  es'2 f'4

        g'2 as'4 \break  | g'2 f'4 | es'2 d'4
      }  \alternative { { c'2 f'4 } {  c'2. } } \bar "||"  \break  |

      c'2 d'4 |  es'2. |  d'2 c'4 | c'2. | b2 b4 | c'2  \bar "|."
    }

    \addlyrics {
      Във мрак, тъм
      -- но -- та е бил жи -- во -- тът наш, но Слън
      -- це -- то на Жи -- во -- та про -- си -- я у
      нас и ний тръг -- нах -- ме във пъ -- тя чист 
      и свят за нас, и нас. Свят за нас, свят за
      нас, свят за нас.
    }
      \addlyrics {
      Văv mrak, tăm
      -- no -- ta e bil ži -- vo -- tăt naš, no Slăn
      -- ce -- to na Ži -- vo -- ta pro -- si -- ja u
      nas i nij trăg -- nah -- me văv pă -- tja čist
      i svjat za nas, i nas. Svjat za nas, svjat za
      nas, svjat za nas.
    }

      \header {
        title = \titleFunc "В мрак тъмнота" "V mrak tămnota"
      }

      \midi{}

    }

    \markup \dc-two "D.C. al Fine „Mahar Benu Aba“" "senza ripetizione"

    \markup \empty-two

    % include foreign translation(s) of the song
    \include "../../lyrics/de/080_2_v_mrak_tamnota_lyrics_de.ly"

  } % bookpart
