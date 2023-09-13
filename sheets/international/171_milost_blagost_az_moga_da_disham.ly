\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref171_1
  \tocItem \markup "Милост, благост – Milost, blagost"


  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Moderato" 4 "80"
      \autoBeamOff

      a'2 e'4 | % 2
      a'2 e'4 | % 3
      a'2. | % 4
      \key c \major
      g'2 e'4 | % 5
      g'2. | % 6
      d'4 ( e'4 ) f'4 | % 7
      f'2 e'4 \break | % 8
      g'2. | % 9
      f'2 e'4 |
      e'2. | % 11
      d'4 ( e'4 ) f'4 | % 12
      e'2. | % 13
      \tempo "rit."  d'4  ( e'4 ) f'4 | % 14
      e'2.\bar "|."

    }

    \addlyrics {
      Ми -- лост, бла -- гост в~мен Той все -- ли.  Ми -- лост, бла -- гост   в~мен Той все -- ли, в~мен все -- ли, в~мен все -- ли.}
     
     
      \addlyrics {
      Mi -- lost, bla -- gost v~men Toj vse -- li.  Mi -- lost, bla -- gost   v~men Toj vse -- li, v~men vse -- li, v~men vse -- li.}
     


        \header {
          title = \titleFunc "Милост, благост" "Milost, blagost"
        }

        \midi{}

      } % score

      \markup \dc-one "D.C."

      % include foreign translation(s) of the song
      \include "../../lyrics/de/171_2_milost_blagost_lyrics_de.ly"

       \markup \empty-three

         \label #'ref171_2
        \tocItem \markup "Аз мога да дишам – Az moga da dišam"

      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key c \major
          \time 2/4
          \tempoFunc "Moderato" 4 "88"
          \autoBeamOff
          \partial 4
          g4 \repeat volta 2 {
            |
            c'4 c'8. d'16 | % 3
            e'4 c'4 | % 4
            g'4 e'8. f'16 | % 5
            \time 3/4  g'2 a'4 |  \break
            \time 2/4  g'4 e'8. f'16 | % 7
            e'4 c'4 | % 8
            d'4 e'8. d'16 | % 9
            \time 3/4
          }
          \alternative {
            {
              c'2 g4 |

            }
            {c'2 \bar "|."  }
          }
        }

        \addlyrics {
          Аз мо -- га
          да ди -- шам ве -- че до -- бре, аз мо -- га
          да ди -- шам ве -- че до -- бре. Аз  бре.}
         \addlyrics {
          Az mo -- ga
          da di -- šam ve -- če do -- bre, az mo -- ga
          da di -- šam ve -- če do -- bre. Az bre.}

            \header {
              title = \titleFunc "Аз мога да дишам " "Az moga da dišam"
            }

            \midi{}

          } % score




          % include foreign translation(s) of the song
          \include "../../lyrics/de/171_3_az_moga_da_disham_dobre_lyrics_de.ly"

        } % bookpart

