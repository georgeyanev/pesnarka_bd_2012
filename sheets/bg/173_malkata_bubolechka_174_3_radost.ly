% Виж за разположението на текста.
\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref173
  \tocItem \markup "Малката буболечица"
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
        f'8.  e'16  d'2 ~ | % 11
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
      "1. Мен" ме ро -- ди Бог със "Лю-" --
      бов и о -- за -- ри със __ жи
      -- во -- та __ нов. Ед --
      вам, ед -- вам рас -- те __  и зре
      -- е ми ду -- ша -- та, но е -- то
      веч вър -- вя на -- го -- ре, Слън
      -- це -- то где бле -- сти. __
      Ще ви -- дя туй, __ ду -- ша -- та
      ми що лю -- би и коп -- ней.

      "2. Тъй" бу -- "бо-" -- леч -- ка -- та "шеп-" -- ти
      и се стре -- ми по __ "на-" -- на -- гор -- ни -- я път,
      и преч -- ки -- те ед -- на __ след "дру-" -- га
      "по-" -- беж -- да -- ва.
      Без -- брой "ска-" -- ли, по -- ля, до -- ли -- ни
      "сме-" -- ло "пре-" -- ми -- на -- ва __
      и все на -- пред __ се тя към вър -- ха
      въз -- ви -- ся -- ва.

      "3. Тъй" ве -- "ко-" -- ве без -- брой "ле-" -- тят
      и вре -- ме -- то я пре -- "о-" -- "бра-" -- зя -- ва.
      И тъй по -- раст  -- на тя __ де -- ви -- ца __ ми -- ла.
      Чи -- ста "ро-" -- са, ду -- ша кра -- си -- ва,
      тво -- ре -- ни -- е на Бо -- га, __
      раз -- ли -- ва мир __ и свет -- ла ра -- дост
      по __ све -- та.

    }

    \header {
      title = \titleFunc "Малката буболечица" "Malkata bubolečica"
    }

    \midi{}

  } % score

  \label #'ref174_3
  \tocItem \markup "Радост"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      b'4 e'4 | % 2
      b'4 e'4 | % 3
      a'4. ( b'8 ) | % 4
      g'4  e'8. fis'16 | % 5
      g'8 ( [fis'8] ) e'8 ( [dis'8] ) | % 6
      e'2 | % 7
      c''4  b'8. ais'16 \break | % 8
      b'4. e'8 | % 9
      a'4  g'8. [( fis'16 )] |
      e'2 | % 11
      c''4  b'8. ais'16 | % 12
      b'4. e'8 | % 13
      fis'8 ([ a'8 ]) g'8 ( [fis'8] ) | % 14
      e'2 \bar "|."
    }

    \addlyrics {
      Ра -- дост,
      ра -- дост, ра -- дост на жи -- во -- та __ ми, ти
      ве -- се -- лиш сър -- це -- то __ ми, ти ве -- се
      -- лиш сър -- це -- то __ ми.}
       \addlyrics {\repeat unfold 23 { \skip 2 } (*ду -- ша -- та __ ми.)}

        \header {
          title = \titleFunc "Радост" "Radost"
        }

        \midi{}

      } % score
  

} % bookpart

% Più mosso
%
