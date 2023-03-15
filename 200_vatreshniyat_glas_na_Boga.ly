\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
     \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Larghetto" 4 "60"
      \autoBeamOff
       
      \partial 4
       d4^\p | % 2
      d'2 c4 | % 3
      bes2 a4 | % 4
      g4 \times 2/3 {
        fis8 ( [g8] ) a8
      }
       g4^\> ~ | % 5
      g2 \! bes4 \break | % 6
      a2^\p g4 | % 7
      fis2 es4 | % 8
      d2 c8 ( [es8] ) | % 9
      d2 \breathe  c4^\< \break
      es2 d4 | % 11
      d2 bes'4 | % 12
      a2 \!  g4 | % 13
      d'2. \break | % 14
      es8 ( [d8 cis8 d8] )  bes8.^\>  ( [a16] ) | % 15
      bes2 a4 | % 16
      g2 \! d'4^\p \break | % 17
      \time 4/4  c2
      \times 2/3  {
        bes8 [( a8 g8 )]
      }
      \times 2/3  {
        fis8 ( [g8 a8] )
      }
      | % 18
      \time 3/4  g2 es4 \break | % 19
      d2^\markup{ \bold {rall.} } c4 |
      d2 fis4^\ppp | % 21
      g2. ( | % 22
      g2 )\bar "|."
    }

\addlyrics {
      Ве -- ну Ба
      -- хар са -- ли му -- се -- нет. Ту -- си Ба --
      хар. Ве -- ну се -- нет. Ту -- си Ба -- хар, Ве
      -- ну Ба -- хар Са -- ли му -- се -- нет. Ве --
      ну ил -- би -- ют. Би -- ют, Би -- ют, Би -- ют.}
      \addlyrics {
        Ve -- nu Ba
        -- har sa -- li mu -- se -- net. Tu -- si Ba --
        har. Ve -- nu se -- net. Tu -- si Ba -- har, Ve
        -- nu Ba -- har Sa -- li mu -- se -- net. Ve --
        nu il -- bi -- yut. Bi -- yut, Bi -- yut, Bi -- yut.}


    \header {
      title = \titleFunc "Вътрешният глас на Бога – медитация " "Vatreshniyat glas na Boga – meditazia"       
      
    }

    

   

    \midi{}

  } % score

  \markup \dc-one "D. C."

  % include foreign translation(s) of the song
  \include "lyrics_de/200_vatreshniya_glas_na_boga_lyrics_de.ly"

} % bookpart

% Più mosso
%
