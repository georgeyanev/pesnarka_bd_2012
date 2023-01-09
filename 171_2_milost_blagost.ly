\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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
      Ми -- лост, бла -- гост в~мен Той все -- ли.  Ми -- лост, бла -- гост   в~мен Той все -- ли, в~мен все -- ли, в~мен все -- ли..}
      \addlyrics {
        Mi -- lost,
        bla -- gost v_men Toi vse -- li. Mi -- lost, bla
        -- gost v_men Toi vse -- li, v_men vse -- li,
        v_men vse -- li.}


        \header {
          title = \titleFunc "Милост, благост" "Milost, blagost"
        }

        \midi{}

      } % score

      \markup \dc-one "D.C."

   


      % include foreign translation(s) of the song
      \include "lyrics_de/171_2_milost_blagost_lyrics_de.ly"

    } % bookpart


