\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref108
  \tocItem \markup "Мога да кажа"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Moderato" 4 "72"

      \autoBeamOff
      c4 e8. f16 |\time 3/4  g4 e  a4 |\time 2/4  g8 f8 e4 |  g8 f e f | \break

      g2 | c4 b8 a8 | a4. (b8) | g4. b8 | d8 f, a g | \break


      \time 3/4 c2 c,8. e16 | g4 a g8. e16 | \time 2/4 g4. c8 | \break

      \time 3/4  b4  f4  a8.  b16 | \time 2/4  | c2 | c4  b8  a8 | a4. (  b8 ) \break |

      g4.  e8 |  g8  f8  e8  d8 | c2
      | \bar ".|:"  \key a \minor a'4  e4 \break |
      a4  b8 ( [  c8 ) ] | a2 | b4  c4 | a2 | d4  e4 \break |
      c4  a4 | b4  d8  c8 | b4  a4 ^\fermata


      \tempoFunc "Meno mosso " 4 "63"| \bar ":|.|:" c4  b8  a8 \break |

      \time 3/4  | gis8 ( [  f8 ) ]  e4.  e8 | \time 2/4  | g?8  f8  e8  d8 | e2
      \bar ":|."

    }

    \addlyrics {
      Мо -- га да ка -- жа,

      че Слън -- "-це" -- то у -- тре ще из -- грей

      и на Зе -- мя -- та ли -- це -- то ще ог -- рей.

      Топ -- ли -- на то ще вне -- се

      за всич -- ко, що ра -- сте.

      Грей, мощ -- но Слън -- це

      да у -- чим ний доб -- ре.

      Всич -- ко ра  -- зум  -- но ще

      ста  -- не и на ра  -- бо  -- та ще

      се хва  -- не. Грей, мощ  -- но Слън

      -- це, да у  -- чим ний доб  --
      ре!
    }

    \header {
      title = \titleFunc "Мога да кажа" "Moga da kaža"
    }

    \midi{}

  }



} % bookpart
