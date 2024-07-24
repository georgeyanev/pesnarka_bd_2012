\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref204
  \tocItem \markup "Молитва (Вярвам в теб) – Molitva (Vjarvam v teb)"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \time 5/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \override Hairpin.to-barline = ##f
      \override Hairpin.after-line-breaking = ##t

      d'2  a2^\<
      a4 | % 81
      \time 3/4  | % 81
      d4. (  e8  \! )  d4 ^\> | % 82
      bes4 (  a4 )  g4 | % 83
      a2. \! | \time 5/4 \break % 84

      g8. ( [  ^\<  a16 ) ]  bes4  c4
      bes4  c4 | % 85
      \time 3/4  | % 85
      d2 \!  f,4 | % 86
      \time 4/4 bes4  ^\>  a4  g4. (  a8 ) | % 87
      g2 \! r2 \bar "||" | \break % 88

      \key b \minor | % 88
      r4  b4. ( ^\pp  cis8 ) ^\<  fis,4 | % 89
      b2.  \! a4 |
      g2^\>  a4  fis4  \! | % 91
      e4. ( ^\mf  fis8 )  d4  cis8
      d8 | \break % 92
      e4  d4  cis4 (  d4 ) | % 93
      b2. r4 \bar "||"
      | % 94
      \key b \major | % 94
      b'4. (^\mf ^\<  cis8 )  dis4 \!
      cis8 ( [  b8 ~ ] | % 95
      b8 )  ais4 ^\>  gis4  ais8
      fis4 ~ | \break % 96
      fis2 r2 \! | % 97
      \time 4/4 gis4. (  ais8 )  b4  ais4 | % 98
      \time 3/4 gis4  fis4  e8. (  fis16 ) | % 99
      \time 4/4 dis2. r4  |
      \time 3/4  |
      cis4 ^\p  \tempo "rall. " b4 ais4 | \break % 101
      b2 r4 | % 102
      \time 4/4  | % 102
      \tempo"Largo" dis4^\p  e4 \grace {
        dis16 ( [  e16 ]
      }
      fis4 )  dis4
      | % 103
      b'4  ais8 ( [  gis8 ) ]  fis4
      e4 | % 104
      dis4  cis4  dis8 ( [  b'8 )
      ^\fermata ]  ais8  gis8 \break | % 105
      \times 2/3  {
        ais8 ( [  b8 )]  ais8
      }
      gis8  fis8  gis8  ais8
      \times 2/3  {
        ais8. ( [  gis16 )  ] fis8
      }
      | % 106
      ais8  ais8  b4 ^\<  ais4
      b8 ( [  cis8 ) ] \bar "||"
      | % 107
      \key dis \minor | \break % 107
      ais4 (  fis'2. | % 108
      eis4 )  \tempo"rall." dis4
      cisis4  cisis4 ~
      ^\mf | % 109
      cisis2. ^\fermata r8 \caesura \tempo"Tempo I" b8
      ^\> | \bar "||"
      \time 6/8  |
      ais4  gis8  fis4  dis8 \break | % 111

      eis4  \! fis8 \!  dis4  dis8 | % 112
      \time 3/4  | % 112
      b'4. (  ais8 )  b8 ( [  cis8
      ) ] | % 113
      \time 5/4  | % 113
      b2  ais2  dis,4 ^\mf | \break % 114
      \time 4/4  | % 114
      dis'4.  cis8  dis8
      cis8   b8 ( [  cis8 ) ] | % 115
      ais2. r4 \break  | % 116
      fis4. ^\p  gis8 ^\<  ais8   b8
      cis8  ais8  | % 117
      gis'2 ^\fermata \! ^\ff  fis4. ^\fermata
      fis,8 ^\pp | \break % 118
      ais4.  gis8  fis8 eis8
      dis8  cisis8  | % 119
      eis2  dis4 r8  \tempo "Meno mosso" ais8^\pp


      | \break
      b4  ais8.  ais16  gisis8 ( [
      ais8 ) ]  b8  b8 | % 121
      b4  ais4  ais4  gis?4 \break | % 122
      ais2 r4  gis4 ^\p | % 123
      ais2.  \tempo "rall." ais4 |
      ais4 ais4 ais4 ( dis4 ) | % 124
      dis2. \! ^\ppp r4 \bar "|."


    }
    \addlyrics {
      Вяр --
      вам във Те -- бе, Гос -- по
      -- ди, Кой -- то Си ми го -- во
      -- рил в~ми -- на -- ло -- то. Вяр -- вам в~Те -- бе, Гос -- по
      -- ди, Кой -- то ми го -- во --
      риш се -- га. Вяр -- вам
      в~Те -- бе, Гос -- по -- ди, __
      Кой -- то ще ми -- го -- во
      -- риш в~бъ -- де -- ще -- то. Да
      се  сла -- ви И -- ме --
      то Ти и във Тво -- я -- та
      сла -- ва да жи -- ве -- ем ни
      -- е. Да се въд -- во -- ри __
      Цар -- ство -- то Ти __
      и ни -- е да у -- част -- ва -- ме
      във Твой -- та __ ра -- дост.
      Да бъ -- де Во -- ля -- та Ти
      как -- то на Не -- бе -- то го --
      ре, та -- ка и до -- лу на Зе --
      мя -- та. И ни -- е да ра -- бо
      -- тим с~Те -- бе на -- ед -- но. А
      -- мин. Та -- ка да бъ -- де.}
      \addlyrics {
        Vjar --
        vam văv Te -- be, Gos -- po
        -- di, Koj -- to Si mi go -- vo
        -- ril v~mi -- na -- lo -- to. Vjar -- vam v~Te -- be, Gos -- po
        -- di, Koj -- to mi go -- vo --
        riš se -- ga. Vjar -- vam
        v~Te -- be, Gos -- po -- di, __
        Koj -- to šte mi -- go -- vo
        -- riš v~bă -- de -- šte -- to. Da
        se  sla -- vi I -- me --
        to Ti i văv Tvo -- ja -- ta
        sla -- va da ži -- ve -- em ni
        -- e. Da se văd -- vo -- ri __
        Car -- stvo -- to Ti __
        i ni -- e da u -- čast -- va -- me
        văv Tvoj -- ta __ ra -- dost.
        Da bă -- de Vo -- lja -- ta Ti
        kak -- to na Ne -- be -- to go --
        re, ta -- ka i do -- lu na Ze --
        mja -- ta. I ni -- e da ra -- bo
        -- tim s~Te -- be na -- ed -- no. A
        -- min. Ta -- ka da bă -- de.}

        \header {
          title = \titleFunc "Молитва" "Molitva"
        }

        \midi{}

      } % score
      \markup \vspace #3

      % include foreign translation(s) of the song
      \include "../../lyrics/de/204_molitva_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
