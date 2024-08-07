\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref079
  \tocItem \markup "Духът Божи – Duhăt Boži"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 6/4
      \tempoFunc "Andante" 4 "65"

      c4 e g (a ) g2 | e4 g c4 ( \acciaccatura {d16c b c}) d4 c2 |

      b4 d c (b8 a ) g2 | \break e 4 g a ( g8 fis ) g2

      e4 g f? e e c | \time 4/4 d e c2 \break

      \time 6/4  e4 g f e e c | \time 4/4 d e c2

      \bar ".|:-|"
      e4 g g2 | \break e4 g g2 | e4 c' c2 |

      \time 6/4  b4 d c b a g | \break \time 4/4 e g g2 |

      \time 6/4 e4 g f e e c | \time 4/4 d e c2 \break

      \bar ":|."


    }

    \addlyrics {
      Ду -- хът Бо -- жи, Ду -- хът веч -- ни,

      Ду -- хът Свя -- ти, Ду -- хът бла -- ги,

      Кой пъл -- ни сър -- ца ни със Лю -- бов,

      Кой пъл -- ни сър -- ца ни със Лю -- бов.

      \set stanza = "1." Кой пъл -- ни, Кой пъл -- ни, Кой пъл -- ни,

      Кой пъл -- ни сър -- ца ни със Лю -- бов.

      Кой пъл -- ни сър -- ца ни със Лю -- бов.
    }



    \addlyrics {
      Du -- hăt Bo -- ži, Du -- hăt več -- ni,

      Du -- hăt Svja -- ti, Du -- hăt bla -- gi,

      Koj păl -- ni săr -- ca ni săs Lju -- bov,

      Koj păl -- ni săr -- ca ni săs Lju -- bov.

      \set stanza = "1." Koj păl -- ni, Koj păl -- ni, Koj păl -- ni,

      Koj păl -- ni săr -- ca ni săs Lju -- bov.

      Koj păl -- ni săr -- ca ni săs Lju -- bov.
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      \set stanza = "2." Със Лю -- бов, със Лю -- бов, със Лю -- бов,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      \set stanza = "2." Săs Lju -- bov, săs Lju -- bov, săs Lju -- bov,

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc "Духът Божи" "Duhăt Boži"
    }

    \midi{}

  } % score

  \markup \vspace #3


  % include foreign translation(s) of the song
  \include "../../lyrics/de/079_Duhat_Bozhii_lyrics_de.ly"

} % bookpart
