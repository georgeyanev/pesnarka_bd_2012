\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref108
  \tocItem \markup "Мога да кажа – Moga da kaža"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Moderato" 4 "72"

      \autoBeamOff
      c4 e8. f16 |\time 3/4  g4 e  a4 |\time 2/4  g8 f8 e4 |  g8 f e f |

      g2 | \break c4 b8 a8 | a4. (b8) | g4. b8 | d8 f, a g |


      \time 3/4 c2 c,8. e16 | \break g4 a g8. e16 | \time 2/4 g4. c8 |

      \time 3/4  b4  f4  a8.  b16 | \time 2/4  | c2 | c4  b8  a8 | \break a4. (  b8 )  |

      g4.  e8 |  g8  f8  e8  d8 | c2
      | \bar ".|:"  \key a \minor a'4  e4  |
      a4  b8 ( [  c8 ) ] | \break  a2 | b4  c4 | a2 | d4  e4  |
      c4  a4 | b4  d8  c8 |  b4  a4 ^\fermata


      \tempoFunc "Meno mosso " 4 "63"| \break  \bar ":|.|:" c4  b8  a8 |

      \time 3/4  | gis8 ( [  f8 ) ]  e4.  e8 | \time 2/4  | g?8  f8  e8  d8 | e2
      \bar ":|."

    }

    \addlyrics {
      Мо -- га да ка -- жа,

      че Слън -- "-це" -- то у -- тре ще из -- грей

      и на Зе -- мя -- та ли -- це -- то ще ог -- рей.

      Топ -- ли -- на то ще вне -- се

      за всич -- ко, що ра -- сте.

      Грей, "мощ-" -- но Слън -- це,

      да у -- чим ний доб -- ре.

      Всич -- ко ра  -- зум  -- но ще

      ста  -- не и на ра  -- бо  -- та ще

      се хва  -- не. Грей, мощ  -- но Слън

      -- це, да у  -- чим ний доб  --
      ре!
    }

    \addlyrics {
      Mo -- ga da ka -- ža,

      če Slăn -- ce -- to u -- tre šte iz -- grej

      i na Ze -- mja -- ta li -- ce -- to šte og -- rej.

      Top -- li -- na to šte vne -- se

      za vsič -- ko, što ra -- ste.

      Grej, "mošt-" -- no Slăn -- ce,

      da u -- čim nij dob -- re.

      Vsič -- ko ra  -- zum  -- no šte

      sta  -- ne i na ra  -- bo  -- ta šte

      se hva  -- ne. Grej, mošt  -- no Slăn

      -- ce, da u  -- čim nij dob  --
      re!
    }

    \header {
      title = \titleFunc "Мога да кажа "" Moga da kaža"
    }

    \midi{}

  } % score

  %\markup \dc-one "D.C. al Fine"
  %

  % include foreign translation(s) of the song

  \markup \vspace #3
  \include "../../lyrics/de/108_az_moga_da_kazha_lyrics_de.ly"

} % bookpart
