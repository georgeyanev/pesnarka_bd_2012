\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 6/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff
      \autoBeamOff
      d2^\p  g2  d2 | % 2
      \time 4/2  | % 2
      d2^\<  g2. (  a4 ) \! \>  g4 \!
      \<  es4 | % 3
      d2. (  es4 ) \! \>  c2 \! \<
      bes4  a4\!  \break | % 4
      bes2. (\!  c4  d4^\>  es4
      d4  c4 | % 5
      bes4  a4  bes2 ) \!  g2 r2 | % 6
      g4  a4  bes2  a2 (^\<  g2\!
      ) \break | % 7
      \times 2/3  {
        fis'4 ( \!^\>  g4  a4 )
      }
      g1 r2 \! | % 8
      \time 4/4  | % 8
      c4^\mf  bes4^\<  a2 | % 9
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
      Ил Би -- хар, Ил Би -- хар, Ил Би
      -- хар. Би -- хар, Ил  Би --
      хар.   Ил    ме  --
      зун. Ве -- ю, Ве -- ю Ве -- ю, Та -- о Би Ом, Ом Би --
      ют, Ве -- ю, Ве -- ю, Ве --
      ю.}
      \addlyrics {
        Ed -- na -- ta, A -- dit -- na,
        Bi ot -- na Am -- ri -- hal --
        na. A -- me -- run, She -- me --  run.
        Il Bi -- har, Il Bi -- har, Il Bi
        -- har. Bi -- har, Il  Bi --
        har.   Il    me  --
        zun. Ve -- yu, Ve -- yu Ve -- yu, Ta -- o Bi Om, Om Bi --
        yut, Ve -- yu, Ve -- yu, Ve --
        yu.}

        \header {
          title = \titleFunc "Една вечна истина, която е Бог на Любовта" "Edna vechna istina, koyato e Bog na Lyubovta"
        }

        \midi{}

      } % score

      % include foreign translation(s) of the song
      %\include "lyrics_de/000_empty_template_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %