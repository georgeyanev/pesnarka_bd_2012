\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref201
  \tocItem \markup "Една вечна Истина, която е Бог на Любовта"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 6/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff
      d2^\p  g2  d2 |
      d4^\<  g2 (  a4 ) \! \>  g4 \!
      \<  es4 | % 3
      d1 (  es4 ) \! \>  c4 \! \<
      | \break
      bes8 a8 \! bes4 ~ ( \! bes8  [ c8 d8^\>  es8 d8  c8 bes8  a8] |
      bes2 \!  ) g4 r4 r2 | \break % 6
      \time 4/4 g'4 a4 bes2 |
      \time 6/4 a2 (^\<  g4\! )
      \times 2/3  {
        fis8 ( \!^\>  g8  a8 )
      } g4 r4 \! | % 8
      \time 4/4  | % 8
      c4^\mf  bes4^\<  a2 | \break % 9
      c4  d4  es2 \! |
      bes4 ^\p  a4^\>  g2 | % 11
      f4 (  es4 )  d2 \! \break | % 12
      es8 ( [ ^\pp  d8 ) ]  cis8 ( [  d8) ]  es2 ( ~ | % 13
      es4  d4 ) r2 | % 14
      d4. (  c8  f8 [  es8 ) ]  d8
      ( [  cis8 ) ] | % 15
      d2. r4 \break | % 16
      bes4. ( ^\mp^\>  a8 )  g2 | % 17
      a4. ( \! \<  bes8 )  c2 \! | % 18
      a4. ( ^\>  bes8 )  g2 | % 19
      es'2 \! ^\<  d4  fis4 |
      g2 \!  bes2 ^\> \break | % 21
      a2  g2 | % 22
      bes,4. ( \! \p \>  a8 )  g2 | % 23
      a4. ( \! \pp \<  bes8 )  c2 | % 24
      a4. ( \! \>  bes8 ) \!  g2 ^\fermata ^\ppp
      \bar "|."
    }
    \addlyrics {
      Ед -- на -- та, А -- дит -- на,
      Би от -- на Ам -- ри -- хал --
      на. А -- ме -- рун, Ше -- ме --  рун.
      Ил Би -- хар, Ил "Би-" -- хар, Ил "Би-"
      -- хар. Би -- хар, Ил __  Би --
      хар. __  Ил __    ме  --
      зун. Ве -- ю, Ве -- ю Ве -- ю, Та -- о Би Ом, Ом Би --
      ют, Ве -- ю, Ве -- ю, Ве --
      ю.}

      \header {
        title = \titleFunc "Една вечна Истина, която е Бог на Любовта" "Edna večna Istina, kojato e Bog na Ljubovta"
      }

      \midi{}

    } % score


  } % bookpart

  % Più mosso
  %
