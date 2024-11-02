% Виж за разположението на текста.
\version "2.24.4"

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
      \set stanza = "1. " Мен ме ро -- ди Бог със Лю --
      бов и о -- за -- ри със __ жи
      -- во -- та __ нов. Ед --
      вам, ед -- вам рас -- те __  и зре
      -- е ми ду -- ша -- та, но е -- то
      веч вър -- вя на -- го -- ре, слън
      -- це -- то где бле -- сти. __
      Ще ви -- дя туй, __ ду -- ша -- та
      ми що лю -- би и коп -- ней.

      \set stanza = "2. " Тъй бу -- бо -- леч -- ка -- та шеп -- ти
      и се стре -- ми по __ на -- на -- гор -- ни -- я път,
      и преч -- ки -- те ед -- на __ след дру -- га
      по -- беж -- да -- ва.
      Без -- брой ска -- ли, по -- ля, до -- ли -- ни
      сме -- ло пре -- ми -- на -- ва __
      и все на -- пред __ се тя към вър -- ха
      въз -- ви -- ся -- ва.

      \set stanza = "3. " Тъй ве -- ко -- ве без -- брой ле -- тят
      и вре -- ме -- то я пре -- о -- бра -- зя -- ва.
      И тъй по -- рас  -- на тя __ де -- ви -- ца __ ми -- ла.
      Чи -- ста ро -- са, ду -- ша кра -- си -- ва,
      тво -- ре -- ни -- е на Бо -- га, __
      раз -- ли -- ва мир __ и свет -- ла ра -- дост
      по __ све -- та.

    }

    \header {
      title = \titleFunc #'ref_desc_17 "Малката буболечица" "Malkata bubolečica"
    }

    \midi{}

  } % score
  \markup \vspace #2
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
      \addlyrics {
        \repeat unfold 23 { \skip 2 } (*ду -- ша -- та __ ми.)}

        \header {
          title = \titleFunc #'ref_desc_19 "Радост" "Radost"
        }

        \midi{}

      } % score

      \markup \vspace #2

      \label #'ref174_1
      \tocItem \markup "Да бих Тe слушал"
      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key bes \minor
          \time 2/4
          \tempoFunc "Adagio" 4 "54"
          \autoBeamOff
          \repeat volta 2 {
            f'4 bes'8. as'16 | % 2
            ges'4 es'4 | % 3
            f'4 as'8. ges'16 |  % 4
            f'4 c'4 | \break  % 5
            es'8. es'16 f'8. es'16 | % 6
            des'4 bes4 |   % 7
            c'4 es'8. des'16 |  % 8
            c'4 bes4 | \break % 9
            des'4 c'8. c'16 |
          }
          \alternative {
            {
              bes4 a4 | % 11
              bes2
            }
            {
              bes4 a4 | % 11
              bes2 \bar "|."
            }
          }
        }

        \addlyrics {
          Да бих Те
          слу -- шал, да бих Те слу -- шал! А -- ко бих
          Те слу -- шал, Доб -- ро -- то ще -- ше в~мен да
          се про -- я -- ви. из -- я -- ви.}

          \header {
            title = \titleFunc #'ref_desc_15 "Да бих Тe слушал " "Da bih Te slušal"
          }

          \midi{}

        } % score

        \markup \vspace #2

        \label #'ref174_2
        \tocItem \markup "Слушам"
        \include "include/bookpart-paper.ily"
        \score {
          \include "include/score-layout.ily"
          \new Voice \absolute {
            \clef treble
            \key e \minor
            \time 5/4
            \tempoFunc "Moderato" 4 "80"
            \autoBeamOff
            \partial 4
            e''16 ( [  d''16  c''16  b'16 ] | % 2
            a'4 ) a'4 a'4 a'4  d''16 (
            [  c''16  b'16  a'16 ] | % 3
            g'4 ) g'4 g'4 g'4 c''16 ( [
            b'16 a'16 g'16 ] \break | % 4
            fis'4 ) fis'4 fis'4 fis'4 e'8
            ( [ fis'8 ] | % 5
            g'8 [ fis'8 ] e'8 [ dis'8 ] \stemUp
            e'8 [ fis'8 ])  e'4 ^\fermata  \bar "|."
          }

          \addlyrics {
            Слу --    шам -- шам --
            шам, слу --    шам --
            шам -- шам, слу --
            шам -- шам -- шам, слу --
            шам.}

            \header {
              title = \titleFunc #'ref_desc_20 "Слушам" "Slušam"
            }

            \midi{}

          } % score

          \markup \dcr-one "D.C." #2.1
          \markup \vspace #2

          \label #'ref175
          \tocItem \markup "Писмото"
          \include "include/bookpart-paper.ily"
          \score {
            \include "include/score-layout.ily"

            \new Voice \absolute {
              \clef treble
              \key c \major
              \time 4/4
              \tempoFunc "Andante" 4 "60"
              \autoBeamOff
              \partial 8
              e'8 \repeat volta 2 {
                | % 2
                g'4.  f'8  e'8  d'8  e'8
                f'8 | % 3
                a'2  g'4  d'8  e'8 | % 4
                f'2  e'4 r8  e'8  | \break % 5
                \time 5/4  | % 5
                g'4.  f'8  e'8  d'8  e'4
                f'8  a'8 | % 6
                \time 4/4  | % 6
                c''4 (  b'8 [  a'8 ])   g'4
                ^\fermata  a'4  | % 7
                g'4  fis'4  a'4  c''8
                b'8  % 8
                \time 3/4  \break  | % 8
                a'8 ( [  b'8 ])  g'4.  e'8| % 9
                \time 6/4  | % 9
                f'4  g'4  a'4.  b'8  c''4
                d''4 |
                \time 4/4  |
                e''2  d''4.  c''8 | % 11
                \time 3/4  | % 11
                b'8  a'8  b'8  e''4. |
              }

              \alternative {
                {
                  % 12
                  \time 4/4  % 12
                  d''2  c''4.  e'8 |
                }
                {
                  \time 4/4 d''2  c''4. \bar "|."
                }
              }
            }

            \addlyrics {
              Ко -- га -- то Лю -- бов -- та ца --
              ру -- ва, смут не ста -- ва. Ко --
              га -- то Мъд -- рост -- та у -- прав
              -- ля -- ва, ре -- дът не се
              на -- ру -- ша -- ва. Ко -- га --
              то Ис -- ти -- на -- та гре -- е,
              пло -- дът цъф -- ти и зре -- е.
              Ко -- зре -- е.}

              \header {
                title = \titleFunc #'ref_desc_19 "Писмото" "Pismoto"
              }

              \midi{}

            } % score


          } % bookpart

          % Più mosso
          %
