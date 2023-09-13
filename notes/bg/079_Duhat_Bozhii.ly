\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref079
  \tocItem \markup "Духът Божий – Duhăt Božij"
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

      \bar ".|:-|" 
      e4 g g2 | e4 g g2 | e4 c' c2 | \break

      \time 6/4  b4 d c b a g | \time 4/4 e g g2 | \break

      \time 6/4 e4 g f e e c | \time 4/4 d e c2 \break

      \bar ":|."


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
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      "2. Със" Лю -- бов, със Лю -- бов, със Лю -- бов,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc "Духът Божий" "Duhăt Božij"
    }

    \midi{}

  } % score

  \pageBreak

  % include foreign translation(s) of the song
  

} % bookpart
