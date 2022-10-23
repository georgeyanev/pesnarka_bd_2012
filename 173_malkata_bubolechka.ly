% Виж за разположението на текста.
\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      e'4  e'8.  e'16  e'2 | % 2
      f'4  e'8.  dis'16  e'2 | % 3
      r8  e'8  a'8  b'8  c''2 \break | % 4
      b'8 ( [  a'8  ])   gis'8 ( [  a'8 ])
      b'4 ( ~  b'16 [  a'16 ] )   g'16 ( [
      f'16 ] )  | % 5
      e'2 r8  e'8  a'8  c''8 \break | % 6
      e''4.  d''8 \times 2/3 {
        % Триолата да дойде отгоре.
        c''8 ( [  b'8 ])  a'8
      }
      g'16  f'16  e'16  d'16 | % 7
      f'2  e'2 | % 8
      a'4  g'8.  f'16  e'2 \break
      \repeat
      volta 2 {
        | % 9
        r8  cis'8  e'8  f'8  g'4  a'4 |
        bes'16 ( [  a'16 ] )   g'16  f'16
        e'8.  d'16  d'2 ~ | % 11
        d'16  b16  c'16  d'16  c'4 ~
        c'16  b16  d'16  c'16  b16
        a16  gis16  a16 | % 12
        b4.  a8  a2
      }
    }

    \addlyrics {
      Мен ме ро -- ди Бог със Лю --
      бов и о -- за -- ри със Жи
      -- во -- та нов. Ед --
      вам, ед -- вам рас -- те  и зре
      -- е ми ду -- ша -- та, но е -- то
      веч вър -- вя на -- го -- ре, Слън
      -- це -- то где бле -- сти.
      Ще ви -- дя туй, ду -- ша -- та
      ми що лю -- би и коп -- ней.}
      \addlyrics {
        Men me ro -- di Bog sas Lyu --
        bov i o -- za -- ri sas Zhi
        -- vo -- ta nov. Ed --
        vam, ed -- vam ras -- te  i zre
        -- e mi du -- sha -- ta, no e -- to
        vech var -- vya na -- go -- re, Slan
        -- tse -- to gde ble -- sti.
        Shte vi -- dya tuy, du -- sha -- ta
        mi shto lyu -- bi i kop -- ney.}

        \header {
          title = \titleFunc "Малката буболечка" "Malkata bubolechka"
        }

        \midi{}

      } % score
      \pageBreak
      \markup \fontsize #bgCoupletFontSize {
        \hspace #-5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Тъй буболечката шепти }
          \line {   "   " и се стреми по нанагорния път, }
          \line {   "   " и пречките една след друга побеждава. }
          \line {   "   " Безброй скали, поля, долини смело преминава }
          \line {   "   "  и все напред се тя към върха възвисява. }
          \line {   "   "}


          \line {    3. Тъй векове безброй летят }
          \line {   "   "  и времето я преобразява. }
          \line {   "   "  И тъй порасна тя – девица мила, }
          \line {   "   "  чиста роса, душа красива. Творение на Бога}
          \line {   "   "  разлива Мир и светла Радост по света. }
        }

        \hspace #-5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {    2. Tay bubolechkata shepti }
          \line {   "   " i se stremi po nanagornia pat, }
          \line {   "   " i prechkite edna sled druga pobezhdava. }
          \line {   "   " Bezbroy skali, polya, dolini smelo preminava }
          \line {   "   "  i vse napred se tya kam varha vazvisyava. }
          \line {   "   "}
          \line {    3. Tay vekove bezbroy letyat }
          \line {   "   "  i vremeto ya preobrazyava. }
          \line {   "   "  I tay porasna tya – devitsa mila, }
          \line {   "   "  chista rosa, dusha krasiva.  Tvorenie na Boga,}
          \line {   "   "  razliva Mir i svetla Radost po sveta. }
        } %column
      } % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/173_malkata_bubolechiza_lyrics.de.ly"

    } % bookpart

    % Più mosso
    %
