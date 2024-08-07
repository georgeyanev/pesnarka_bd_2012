% Виж за разположението на текста.
\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref173
  \tocItem \markup "Малката буболечица – Malkata bubolečica"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 4/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      e'4  e'8.  e'16  e'2 | % 2
      f'4  e'8.  dis'16  e'2 | % 3
      r8  e'8  a'8  b'8  c''2 \break | % 4
      b'8 ( [  a'8  ])   gis'8 ( [  a'8 ])
      b'4  ( ~  b'16  [ a'16]  )  g'16 (
      [f'16 ]  )  | % 5
      e'2 r8 e'8  a'8  c''8 \break | % 6
      e''4.  d''8 \tweak direction #up \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) c''8  (  [ b'8 ])  a'8
      }
      gis'16  f'16  e'16  d'16 | % 7
      f'2  e'2 | % 8
      a'4  g'8.  f'16  e'2 \break
      \repeat
      volta 2 {
        | % 9
        \autoBeamOff  r8  c'8  e'8  g'8  a'4  a'4 |
        c''16 ( [  b'16 ] )  a'16  g'16
        f'8.  e'16  d'2 ~ | \break % 11
        d'16  b16  c'16  d'16  c'4 ~
        c'16  b16  d'16  c'16  b16
        a16  gis16  a16 | % 12
        b4.  a8  a2 \caesura \break
      }

      e'4 e'8. e'16 e'4. e'8 | f'8. f'16  e'4. e'8 a'8 b'8 |  c''4 b'16[ ( a'16 ) ] gis'16 a'16 b'4  ( ~ b'16 [a'16] ) g'16 f'16 | \break

      e'2 r8 e'8 a'8 c''8 | e''4. d''8  \tweak direction #up \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) c''8  [ ( b'8 ) ] a'8
      } gis'16 f'16 e'16 d'16 | f'2 e'2 | \break


      a'4 g'8.  f'16  e'2 |  \bar ".|:" r8 c'8 e' g' a'4 a'4 |  c''16 b' a' g' f'8. ( e'16 ) d'2 (| \break

      d'16)  b16  c'16  d'16  c'4 ~
      c'16  b16  d'16  c'16  b16
      a16  gis16  a16 | % 12
      b4. ( a8 ) a2 \caesura \break \bar ":|."


      e'4 e'8. e'16 e'4. e'8 | f'8. f'16 e'4. e'8 a'8 b'8 |  c''4 b'16  a'16 gis'16 a'16 \autoBeamOn b'4  ( ~ b'16 a'16  g'16 f'16 ) | \break

      e'2 r8 \autoBeamOff e'8 a'8 c''8 | e''4. d''8  \tweak direction #up \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) c''8  ( [  b'8 ) ] a'8
      } gis'16 [( f'16 )] e'16 [(d'16) ] | f'2 e'2 | \break


      a'4 g'8.  f'16  e'2 |  \bar ".|:" r8 c'8 e' g' a'4 a'8. c''16 |

      b'16 a'16 g' f' e'4 d'2 (| \break

      d'16)  b16  c'16  d'16  c'4 ~
      c'16  b16  d'16  c'16  b16 a16 \times 2/3 { gis16 [ ( a16 ) ] b16 }| \time 2/4 a2 \break \bar ":|."
    }

    \addlyrics {
      \set stanza = "1." Мен ме ро -- ди Бог със Лю --
      бов и о -- за -- ри със __ жи
      -- во -- та __ нов. Ед --
      вам, ед -- вам рас -- те __  и зре
      -- е ми ду -- ша -- та, но е -- то
      веч вър -- вя на -- го -- ре, Слън
      -- це -- то где бле -- сти. __
      Ще ви -- дя туй, __ ду -- ша -- та
      ми що лю -- би и коп -- ней.

      \set stanza = "2." Тъй бу -- бо -- леч -- ка -- та шеп -- ти
      и се стре -- ми по __ на -- на -- гор -- ни -- я път,
      и преч -- ки -- те ед -- на __ след дру -- га
      по -- беж -- да -- ва.
      Без -- брой ска -- ли, по -- ля, до -- ли -- ни
      сме -- ло пре -- ми -- на -- ва __
      и все на -- пред __ се тя към вър -- ха
      въз -- ви -- ся -- ва.

      \set stanza = "3." Тъй ве -- ко -- ве без -- брой ле -- тят
      и вре -- ме -- то я пре -- о -- бра -- зя -- ва.
      И тъй по -- рас  -- на тя __ де -- ви -- ца __ ми -- ла.
      Чи -- ста ро -- са, ду -- ша кра -- си -- ва,
      тво -- ре -- ни -- е на Бо -- га, __
      раз -- ли -- ва мир __ и свет -- ла ра -- дост
      по __ све -- та.

    }

    \addlyrics {
      \set stanza = "1." Men me ro -- di Bog săs Lju --
      bov i o -- za -- ri săs __ ži
      -- vo -- ta __ nov. Ed --
      vam, ed -- vam ras -- te __  i zre
      -- e mi du -- ša -- ta, no e -- to
      več văr -- vja na -- go -- re, Slăn
      -- ce -- to gde ble -- sti. __
      Šte vi -- dja tuj, __ du -- ša -- ta
      mi što lju -- bi i kop -- nej.

      \set stanza = "2." Tăj bu -- bo -- leč -- ka -- ta šep -- ti
      i se stre -- mi po __ na -- na -- gor -- ni -- ja păt,
      i preč -- ki -- te ed -- na __ sled dru -- ga
      po -- bež -- da -- va.
      Bez -- broj ska -- li, po -- lja, do -- li -- ni
      sme -- lo pre -- mi -- na -- va __
      i vse na -- pred __ se tja kăm văr -- ha
      văz -- vi -- sja -- va.

      \set stanza = "3." Tăj ve -- ko -- ve bez -- broj le -- tjat
      i vre -- me -- to ja pre -- o -- bra -- zja -- va.
      I tăj po -- ras  -- na tja __ de -- vi -- ca __ mi -- la.
      Či -- sta ro -- sa, du -- ša kra -- si -- va,
      tvo -- re -- ni -- e na Bo -- ga, __
      raz -- li -- va mir __ i svet -- la ra -- dost
      po __ sve -- ta.

    }



    \header {
      title = \titleFunc "Малката буболечица" "Malkata bubolečica"
    }

    \midi{}

  } % score



  \markup \vspace #4

  % include foreign translation(s) of the song
  \include "../../lyrics/de/173_malkata_bubolechiza_lyrics.de.ly"

} % bookpart

% Più mosso
%
