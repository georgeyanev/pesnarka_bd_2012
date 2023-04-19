\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref108
  \tocItem \markup "Мога да кажа – Moga da kazha "
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

      \time 3/4  | gis8 ( [  f8 ) ]  e4.  e8 | \time 2/4  | g!8  f8  e8  d8 | e2
      \bar ":|."

    }

    \addlyrics {
      Мо -- га да ка -- жа,

      че Слън -- "-це" -- то у -- тре ще из -- грей

      и на зе -- мя -- та ли -- це -- то ще о -- грей.

      То -- пли -- на то ще вне -- се

      за всич -- ко, що ра -- сте.

      Грей, мощ -- но слън -- це

      да у -- чим ний до -- бре.

      Всич -- ко ра  -- зум  -- но ще

      ста  -- не и на ра  -- бо  -- та ще

      се хва  -- не. Грей, мощ  -- но слън

      -- це, да у  -- чим ний до  --
      бре!
    }
    \addlyrics {
      Mo -- ga da ka -- zha,

      che Slan -- tse -- to u -- tre shte iz -- grey

      i na ze -- mya -- ta li -- tse -- to shte o -- grey.

      To -- pli -- na to shte vne -- se

      za vsich -- ko, shto ra -- ste.

      Grey, mosht -- no slan -- tse

      da u -- chim niy do -- bre.

      Vsich -- ko ra  -- zum  -- no shte

      sta  -- ne i na ra  -- bo  -- ta shte

      se hva  -- ne. Grey, mosht  -- no slan

      -- tse, da u  -- chim niy do  --
      bre!
    }

    \header {
      title = \titleFunc "Мога да кажа" "Moga da kazha"
    }

    \midi{}

  } % score

  %\markup \dc-one "D.C. al Fine"
  %

  % include foreign translation(s) of the song

  %\pageBreak
  \include "lyrics_de/108_az_moga_da_kazha_lyrics_de.ly"

} % bookpart
