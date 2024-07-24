\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref101_1
  \tocItem \markup "Тъги, скърби са богатство – Tăgi, skărbi sa bogatstvo"
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
      за жи -- во -- та, в~ду -- ша скри -- ти
      за бъд -- ни доб -- ри -- ни,
      за бла -- ги пло -- до -- ве,
      за свет -- ли дни,
      за свет -- ли дни,
      за "свет-" -- ли дни,
      дни, дни, дни.
    }

    \addlyrics {
      Tă -- gi, skăr -- bi sa bo  --  gat -- stvo
      za ži -- vo -- ta, v~du -- ša skri -- ti
      za băd -- ni dob -- ri -- ni,
      za bla -- gi plo -- do -- ve,
      za svet -- li dni,
      za svet -- li dni,
      za svet -- li dni,
      dni, dni, dni.
    }

    \header {
      title = \titleFunc "Тъги, скърби са богатство" "Tăgi, skărbi sa bogatstvo"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \dc-one "D.C."


  % include foreign translation(s) of the song
  \markup \vspace #3

  \include "../../lyrics/de/101_tagi_skarbi_sa_bogatstvo_lyrics_de.ly"

} % bookpart
