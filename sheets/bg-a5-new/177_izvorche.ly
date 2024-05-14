\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref177
  \tocItem \markup "Изворче"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 4/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 8
      e'8 | % 2
      b'4  a'8  g'8  fis'8  g'8
      a'8 c''8 | % 3
      b'4 b'8 b'8 e''8
      e''8 d''8 d''8 | % 4
      \time 3/4  |  \break % 4
      g'8  a'8 b'4 b'4 | % 5
      \time 4/4  | % 5
      a'8  a'8  a'8 b'8  g'4
      g'4 | % 6
      fis'8  e'8  dis'8  e'8  fis'4
      b4 \break | % 7
      \bar ".|:-||"
      e'8  fis'8  g'8  a'8 b'8
      b'8 c''8 d''8 | % 8
      b'4. b'8 e''8 e''8
      d''8  g'8 \break | % 9
      b'4 b'8 b'8  a'8  a'8
      a'8 b'8 |
      g'4.  g'8  fis'8  e'8  dis'8
      e'8 \break | % 11
      fis'8 ( [  g'8 ] )   a'8 c''8
      b'2 | % 12
      e'8  fis'8  g'8  a'8 b'4
      b'4 \break | % 13
      c''8 c''8 c''8 d''8
      b'4 b'8 b'8 | % 14
      a'8  a'8  a'8 b'8  g'4
      g'4 \break | % 15
      fis'8  e'8  dis'8  e'8  fis'4.
      b8 | % 16
      e'4  e'2 (e'8)
      \bar ":|."
    }

    \addlyrics {
      Там го -- ре, ви -- со -- ко в~пла
      -- ни -- на -- та, из -- ви -- ра из --
      вор -- че кра -- си -- во, то си
      ти -- хо пе -- е и сър -- це си
      ле -- е: „Ка -- то ме -- не дру --
      го из -- вор -- че та -- ка кра --
      си -- во ня -- ма. От мо -- и -- те
      нед -- ра из -- ви -- ра чис -- та
      жи -- ва во -- да. Кой от ме --
      не пи -- е, нов жи -- вот до -- би
      -- ва, у -- че -- ни -- е об -- гръ --
      ща и на ра -- бо -- та се хва --
      ща“. __}

      \header {
        title = \titleFunc #'ref_desc_16 "Изворче" "Izvorče"
      }

      \midi{}
    } % score

    \markup \dc-two "D.C.""senza ripetizione"


  } % bookpart


