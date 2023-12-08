\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref189
  \tocItem \markup "Мелодия 4 – Добрите хора"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/8
      \tempoFunc "Moderato" 8 "120"
      \autoBeamOff
      d''4 (bes'8) | % 2
      d''4 bes'8 | % 3
      d''4. | % 4
      g''8 ( [ f''8 ) ] es''8 | % 5
      es''4 c''8 | % 6
      es''4 (c''8 ) | % 7
      es''4. | % 8
      c''8  d''8 es''8 \break | % 9
      f''4 (es''8) |
      es''4 (d''8 )| % 11
      d''4 (c''8) | % 12
      d''4. | % 13
      g'8 ( [  a'8 ) ] bes'8 | % 14
      bes'4  a'8 | % 15
      a'4  g'8 | \break  % 16
      g'4  d'8 | % 17
      g'4. | % 18
      g'8 ( [  a'8 ) ] bes'8 | % 19
      bes'4  a'8 |
      a'4  g'8 | % 21
      g'4  d'8 | % 22
      g'4. \bar "|."
    }

    \addlyrics {
     Слън -- це -- то грей за доб -- ри -- те хо -- ра
     
     вя -- тър -- а вее и пе -- е за доб -- ри -- те хо -- ра на све -- та, 
     
     за доб -- ри -- те хо -- ра на све -- та.  }

      \header {
        title = \titleFunc "Мелодия 4 – Добрите хора" "Melodija – Ozarenie"
      }

      \midi{}

    } % score


  } % bookpart

  % Più mosso
  %
