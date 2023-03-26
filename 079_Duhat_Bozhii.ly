\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref079
  \tocItem \markup "Духът Божий – Duhat Bozhiy"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 6/4
      \tempoFunc "Andante" 4 "65"


      c4 e g (a ) g2 | e4 g c4 ( \acciaccatura {d16c b c}) d4 c2 \break

      b4 d c (b8 a ) g2 | e 4 g a ( g8 fis ) g2 \break

      e4 g f e e c | \time 4/4 d e c2 \break

      \time 6/4  e4 g f e e c | \time 4/4 d e c2 \break

      \repeat volta 2 {
        e4 g g2 | e4 g g2 | e4 c' c2 | \break

        \time 6/4  b4 d c b a g | \time 4/4 e g g2 | \break

        \time 6/4 e4 g f e e c | \time 4/4 d e c2 \break



      }


    }

    \addlyrics {
      Ду -- хът Бо -- жи, Ду -- хът веч -- ни,

      Ду -- хът Свя -- ти, Ду -- хът бла -- ги,

      Кой пъл -- ни сър -- ца ни със Лю -- бов,

      Кой пъл -- ни сър -- ца ни със Лю -- бов.

      "1. Кой" пъл -- ни, Кой пъл -- ни, Кой пъл -- ни,

      Кой пъл -- ни сър -- ца ни със Лю -- бов.

      Кой пъл -- ни сър -- ца ни със Лю -- бов.
    }

    \addlyrics {
      Du -- hat Bo -- zhi, Du -- hat Vech -- ni,

      Du -- hat Svya -- ti, Du -- hat Bla -- gi,

      koy pal -- ni sar -- tsa ni sas Lyu -- bov,

      koy pal -- ni sar -- tsa ni sas Lyu -- bov.

      "1. Koy" pal -- ni, koy pal -- ni, koy pal -- ni,

      koy pal -- ni sar -- tsa ni sas Lyu -- bov.

      Koy pal -- ni sar -- tsa ni sas Lyu -- bov.
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "2. Със" Лю -- бов, със Лю -- бов, със Лю -- бов,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "2. Sas" Lyu -- bov, sas Lyu -- bov, sas Lyu -- bov,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc "Духът Божий" "Duhat Bozhiy"
    }

    \midi{}

  } % score

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/079_Duhat_Bozhii_lyrics_de.ly"

} % bookpart
