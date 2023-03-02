\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key g \minor
      \time 2/4
      \tempoFunc "Andantino" 4 "69"
      \autoBeamOff

      d''8 c'' bes' a' | c''8 bes' a' g' | a'8 g' fis' es' \break

      d' c' d'4 | g'2|  \time 5/4 a'4 c''8 bes'8 a' g' a'2 | \break

      g'4  a'8 g' fis'8 es' d'2 | \time 2/4 c'4 d'8 es'8| g'2 | \break

      a'4 g'8 fis' | es'2 |  c'4 d'8 es'8 | g'2 |fis'4 \fermata  es'4 \fermata  | d'2 \fermata  \bar "|."
    }

    \addlyrics {
      Тъ -- ги, скър -- би са бо  --  гат -- ство
      за Жи -- во -- та, в~ду -- ша скри -- ти
      за бъд -- ни До -- бри -- ни,
      за бла -- ги пло -- до -- ве,
      за свет -- ли дни,
      за свет -- ли дни,
      за свет -- ли дни,
      дни, дни.
    }

    \addlyrics {
      Ta -- gi, skar -- bi sa bo  --  gat -- stvo
      za Zhi -- vo -- ta, v~du -- sha skri -- ti
      za bad -- ni Do -- bri -- ni,
      za bla -- gi plo -- do -- ve,
      za svet -- li dni,
      za svet -- li dni,
      za svet -- li dni,
      dni, dni.
    }


    \header {
      title = \titleFunc "Тъги, скърби са богатство" "Tagi, skarbi sa bogatstvo"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."
  

  % include foreign translation(s) of the song

  \include "lyrics_de/101_tagi_skarbi_sa_bogatstvo_lyrics_de.ly"

} % bookpart
