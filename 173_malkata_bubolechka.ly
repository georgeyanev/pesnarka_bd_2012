% Виж за разположението на текста.
\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref173
  \tocItem \markup "Малката буболечица – Malkata bubolechitsa"
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
      \autoBeamOn b'4  ( ~  b'16   a'16  )   g'16 (
      f'16  )  | % 5
      e'2 r8 \autoBeamOff e'8  a'8  c''8 \break | % 6
      e''4.  d''8 \tweak direction #up \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) c''8  (  [ b'8 ])  a'8 
      }
      gis'16  f'16  e'16  d'16 | % 7
      f'2  e'2 | % 8
      \autoBeamOn a'4  g'8.  f'16  e'2 \break
      \repeat
      volta 2 {
        | % 9
        \autoBeamOff  r8  c'8  e'8  g'8  a'4  a'4 |
        c''16 ( [  b'16 ] )  a'16  g'16
        f'8.  e'16  d'2 ~ | % 11
        d'16  b16  c'16  d'16  c'4 ~
        c'16  b16  d'16  c'16  b16
        a16  gis16  a16 | % 12
        b4.  a8  a2 \break
      }

      e'4 e'8. e'16 e'4. e'8 |\autoBeamOn f'8. f'16  e'4. \autoBeamOff e'8 a'8 b'8 |  c''4 b'16[ ( a'16 ) ] gis'16 a'16 b'4  ( ~ b'16 [a'16] ) g'16 f'16 | \break

      e'2 r8 e'8 a'8 c''8 | e''4. d''8  \tweak direction #up \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) \autoBeamOn c''8  (   b'8 )  a'8
      } \autoBeamOff gis'16 f'16 e'16 d'16 | f'2 e'2 | \break


      \autoBeamOn  a'4 g'8.  f'16  e'2 |  \bar ".|:"  \autoBeamOff r8 c'8 e' g' a'4 a'4 |  c''16 b' a' g' f'8. ( e'16 ) d'2 (| \break

      d'16)  b16  c'16  d'16  c'4 ~
      c'16  b16  d'16  c'16  b16
      a16  gis16  a16 | % 12
      b4. ( a8 ) a2 \break \bar ":|."


      e'4 e'8. e'16 e'4. e'8 | \autoBeamOn f'8. f'16 e'4. \autoBeamOff e'8 a'8 b'8 |  c''4 b'16  a'16 gis'16 a'16 \autoBeamOn b'4  ( ~ b'16 a'16 ) g'16 f'16 | \break

      e'2 r8 \autoBeamOff e'8 a'8 c''8 | e''4. d''8  \tweak direction #up \times 2/3 {
        \once \override Slur.positions = #'(1 . 1) c''8  ( [  b'8 ) ] a'8
      } gis'16 [( f'?16 )] e'16 [(d'16) ] | f'2 e'2 | \break


      \autoBeamOn  a'4 g'8.  f'16  e'2 |  \bar ".|:"  \autoBeamOff r8 c'8 e' g' a'4 a'8. a'16 |  c''16 b' a' g' e'4 \tempo "V.S." d'2 (| \break

      d'16)  b16  c'16  d'16  c'4 ~
      c'16  b16  d'16  c'16  b16 a16 \times 2/3 { gis16 [ ( a16 ) ] b16 }| \time 2/4 a2 \break \bar ":|."
    }

    \addlyrics {
      Мен ме ро -- ди Бог със "Лю-" --
      бов и о -- за -- ри със Жи
      -- во -- та __ нов. Ед --
      вам, ед -- вам рас -- те __  и зре
      -- е ми ду -- ша -- та, но е -- то
      веч вър -- вя на -- го -- ре, Слън
      -- це -- то где бле -- сти.
      Ще ви -- дя туй, ду -- ша -- та
      ми що лю -- би и коп -- ней.

      Тъй бу -- бо -- леч -- ка -- та "шеп-" -- ти
      и се стре -- ми по "на-" -- на -- гор -- ни -- я път,
      и преч -- ки -- те ед -- на след "дру-" -- га
      "по-" -- беж -- да -- ва.
      Без -- брой "ска-" -- ли, по -- ля, до -- ли -- ни
      "сме-" -- ло "пре-" -- ми -- на -- ва __
      и все на -- пред се тя към вър -- ха
      въз -- ви -- ся -- ва.

      Тъй ве -- ко -- ве без -- брой "ле-" -- тят
      и вре -- ме -- то я пре -- "о-" -- "бра-" -- зя -- """"ва.
      И тъй по -- раст  -- на тя __ де -- ви -- ца ми -- ла.
      Чи -- ста "ро-" -- са, ду -- ша кра -- си -- ва,
      тво -- ре -- ни -- е на Бо -- га, __
      раз -- ли -- ва Мир и свет -- ла Ра -- дост
      по све -- та.

    }
    \addlyrics {
      Men me ro -- di Bog sas "Lyu-" --
      bov i o -- za -- ri sas Zhi
      -- vo -- ta __ nov. Ed --
      vam, ed -- vam ras -- te __  i zre
      -- e mi du -- sha -- ta, no e -- to
      vech var -- vya na -- go -- re, Slan
      -- tse -- to gde ble -- sti.
      Shte vi -- dya tuy, du -- sha -- ta
      mi shto lyu -- bi i kop -- ney.

      Tay bu -- "bo-" -- lech -- ka -- ta shep -- ti
      i se stre -- mi po na -- na -- gor -- ni -- ya pat,
      i prech -- ki -- te ed -- na sled "dru-" -- ga
      "po-" -- bezh -- da -- va.
      Bez -- broy "ska-" -- li, po -- lya, do -- li -- ni
      "sme-" -- lo pre -- mi -- na -- va __
      i vse na -- pred se tya kam var -- ha
      vaz -- vi -- sya -- va.

      Tay ve -- ko -- ve bez -- broy "le-" -- tyat
      i vre -- me -- to ya pre -- "o-" -- "bra-" -- zya -- """"va.
      I tay po -- rast  -- na tya __ de -- vi -- tsa mi -- la.
      Chi -- sta "ro-" -- sa, du -- sha kra -- si -- va,
      tvo -- re -- ni -- e na Bo -- ga, __
      raz -- li -- va Mir i svet -- la Ra -- dost
      po sve -- ta.
    }

    \header {
      title = \titleFunc "Малката буболечица" "Malkata bubolechitsa"
    }

    \midi{}

  } % score



  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/173_malkata_bubolechiza_lyrics.de.ly"

} % bookpart

% Più mosso
%
