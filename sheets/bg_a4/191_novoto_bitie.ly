\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref191
  \tocItem \markup "Новото Битие"
  \label #'ref191_1
  \tocItem \markup "     Първи Божествен ден"
  \include "include/bookpart-paper.ily"
  \markup \center-column \normal-text \fontsize #6.5 {
    \center-align
    \line { \with-link #'ref_desc_18 "     Новото Битие – Създаването на новия Адам" }
    \center-align

    \vspace #-0.1
    \center-align

    \vspace #-0.1
    \center-align
    \hspace #5.1

    \center-align
    \line \fontsize #-3 { " " }
  }
  \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 4/2
      \tempoFunc "Andante cantabile" 2 "60"
      \autoBeamOff
      \partial 4
      c'4 | f'2 g'2
      as'4 as'4 g'4 ( f'4 ) | \time 2/2 g'2 r4 g'4 | % 3
      \time 4/2 c''2 bes'2 as'2 f'2 \break | % 4
      g'4 ( as'4 ) g'1 \fermata g'4. a'8 | % 5
      \time 3/2  bes'2 g'2 c''2 | % 6
      bes'2 as'4 as'4 g'4 f'4 \break | % 7
      \time 4/2  g'4 as'4 g'1 d'4. es'8 | % 8
      \time 4/2  f'2 g'2 es'2 d'2 | % 9
      c'1. r2 \break |
      c'2 g'4 f'4 e'2 f'2 | % 11
      g'4 e'4 f'4 d'4 c'1 | % 12
      c''2 f''2 e''2 d''2 \break | % 13
      c''2 d''4 bes'4 a'2 a'4 a'4 | % 14
      c''2 bes'2 a'2 g'2 \break | % 15
      f'4 ( e'4 f'4 g'4 ) f'2 r4 c'4 | % 16
      f'2 g'2 bes'2. as'4 | % 17
      g'4 ( f'4 ) g'1 r4 g'4 \break | % 18
      c''2 bes'2 as'2 f'2 | % 19
      g'2 as'2 g'2. g'4 |
      c''2 d''4 d''4 es''2 c''2 \break | % 21
      bes'2 as'4 as'4 g'4 ( f'4 )  \tempo "rall." bes'4( as'4 )
      | % 22
      g'1 g'2. g'4 | % 23
      g'2 c''1.  | % 24
      d''4 ( es''4 ) f''2 ( g''2 ) as''2 ~ | % 25
      as''4 g''4 c''1 g'2 | % 26
      \time 2/2  g'2 g'4 g'4 \break | % 27
      \time 3/2  as'2 ( g'2 ) g'4 g'4 | % 28
      bes'2 ( as'2 ) g'4 r4 | % 29
      \time 4/2  c'2 f'4 es'4 d'2 c'2 \break |
      r1 g'4 g'4 c''4 g'4 | % 31
      as'1 g'4 es''4 es''4 d''4 | % 32
      c''1 g'2 d'4 es'4 \break | % 33
      \time 3/2  g'2 f'2 c'2 ~ | % 34
      c'2 r2 r4 c''4 | % 35
      \time 4/2  c''2. c''4 c''2 g'2 \break | % 36
      \time 2/2  r4 c''4 \tempo "rall."  c''4c''4 | % 37
      d''2. c''4 | % 38
      \time 3/2 c''4 c''4 c''2. \bar "|."
    }

    \addlyrics {
      В~на -- ча --
      ло Бог съз -- да -- де не -- бе -- то и зе --
      мя -- та. А зе -- мя -- та бе пус -- та и не
      -- ус -- тро -- е -- на. Ня -- ма -- ше ред по
      не -- я. И тъм -- ни -- на бе вър -- ху безд --
      на -- та, и Дух Бо -- жий се но -- се -- ше
      над во -- ди -- те на жи -- во -- та. И ре --
      че Бог: „Да дой -- де кра -- си -- ва -- та ви
      -- де -- ли -- на“. И тя се я -- ви във сво --
      я -- та свет -- ли -- на. И ви -- дя Бог, че __
      тя __ бе __ до -- бро. И Бог раз -- де -- ли __ свет --
      ли -- на -- та от тъм -- ни -- на -- та. И на --
      ре -- че Бог свет -- ли -- на -- та ден, а тъм
      -- ни -- на -- та нощ. __ И ста -- на ве -- чер, и
      ста -- на ут -- ро, пър -- ви ден.}

      \header {
        title = \titleFunc #'ref_desc_18 "Първи Божествен ден" "Părvi Božestven den"
      }

      \midi{}

    } % score

    \markup \raise #4.5 \override #'(baseline-skip . 2) {
      \column {
        \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
      }
    }

    \label #'ref192
    \tocItem \markup "     Втори Божествен ден"
    \include "include/bookpart-paper.ily"
    \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

      \new Voice \absolute {
        \clef treble
        \key g \major
        \time 4/4
        \tempoFunc "Lento maestoso" 4 "100"
        \autoBeamOff
        \partial 4  d''4 | % 2
        d''2 d'2 | % 3
        g'2. d'4 | % 4
        b'2 b'4. b'8 | % 5
        \time 4/4 b'2 c''4 b'4 \break | % 6
        a'2 a'2 \bar "||"
        | % 7
        \time 6/4  | % 7
        \key d \minor
        d'4 d'4 d'4 a'4 g'4
        f'4 | % 8
        \time 4/4  | % 8
        c''2 c''2 | % 9
        c''4 c''4 c''4 d''4 \break|
        es''2. d''4  | % 11
        c''2 c''2 \caesura | % 12
        c''4 -- c''4 -- c''4 -- d''4
        -- | % 13
        a'4 -- a'4 -- a'4 -- g'4 -- \break | % 14
        g'4 -- e'4 d'2 | % 15
        d'2. d'4  | % 16
        \time 3/4  | % 16
        d'4 d'4 c'4 | % 17
        d'2. | % 18
        r4 c'4 c'4 | % 19
        \time 6/4  | % 19
        f'2 g'2 bes'4 -- as'4 -- |

        g'2 -- f'2 r4 c''4 | % 21
        \time 4/4  | % 21
        f''1  | % 22
        r4 d''4 d''4 d''4 \break | % 23
        a'2 g'4 r4 | % 24
        r4 d''4 d''4 d''4 | % 25
        \time 3/2  | % 25
        e''2. d''4 \tempo "rall." d'4
        d'4 | % 26
        e'1 r4 \bar "|."
      }

      \addlyrics {
        И
        ре -- че Бог: „Да бъ -- де прос --
        тор сред во -- ди -- те“. И на --
        пра -- ви Бог прос -- то -- ра, и
        раз -- де -- ли Бог во -- да -- та
        над прос -- то -- ра от во -- да --
        та под про -- сто -- ра. И ста --
        на та -- ка. И на -- ре -- че Бог
        прос -- то -- ра не -- бе. И ста --
        на ве -- чер, и ста -- на ут -- ро,
        вто -- ри ден.}

        \header {
          title = \titleFunc #'ref_desc_18 "Втори Божествен ден" "Vtori Božestven den"
        }

        \midi{}

      } % score

      \markup \raise #4.5 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
        }
      }

      \label #'ref193
      \tocItem \markup "     Трети Божествен ден"
      \include "include/bookpart-paper.ily"
      \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

        \new Voice \absolute {
          \clef treble
          \key e \minor
          \time 3/2
          \tempo "Lento cantabile"
          \autoBeamOff
          \partial 2.
          e'4  fis'4
          e'4 | % 2
          \time 4/4  | % 2
          e'1 | % 3
          e'4  e'4  e'4  e'4 | % 4
          e''2. d''4 \break  | % 5
          \time 3/2   | % 5
          c''2 c''2 b'4  a'4 | % 6
          c''2 b'2 r2 | % 7
          r2  e'4  e'4  e'4  d'4 \break | % 8
          e'1 r2 \bar "||"
          \key a \minor | % 9
          \tempo "Più mosso"e'2 f'?4  a'2
          gis'4 |
          b'4 ( d''4 ) c''4 b'2. \break | % 11
          b'4 c''4  a'2 b'4 b'4
          | % 12
          c''2 b'4 (  a'4 ) b'2 -- | % 13
          \time 4/4  | % 13
          b'4 b'4 e''4 e''4 | % 14
          d''4 ( c''4 ) b'4 (  a'4 )
          \break | % 15
          b'2 r4 b'4 | % 16
          d''2 c''4  a'4 | % 17
          b'1 | % 18
          r2.  \tempo "Tempo I" e'4 | % 19
          e'2  d'2 |
          e'1 \breathe  \break | % 21
          \time 3/4  | % 21
          e'2  e'4  | % 22
          a'2  gis'4 | % 23
          b'4 d''4 c''4 | % 24
          b'2 r4 | % 25
          c''2 \tempo"sostenuto" c''8 --
          c''8 -- \break | % 26
          \time 5/4  | % 26
          fis''2 fis''4 e''4 dis''4 | % 27
          \time 3/4  | % 27
          fis''2 e''4 ~ | % 28
          \time 4/4  | % 28
          e''4 r4  \tempo"a tempo"e'4
          b'4 | % 29
          \time 6/4  | % 29
          a'2.  a'4  a'4  a'4 \break |
          \time 5/4  |
          e''2 d''4 c''4  a'4  | % 31
          b'2 b'2 r4 | % 32
          \time 3/4  | % 32
          gis'2  gis'4 | % 33
          b'2 (  gis'4 ) | % 34
          gis'2. ~ \break | % 35
          gis'4 b'4 ( cis''4 ) | % 36
          \time 4/4  | % 36
          dis''2 e''2  | % 37
          fis''2. ^\fermata e''4 -- | % 38
          e''1 | % 39
          \time 2/4  | % 39
          r4  f'?4 |
          \time 3/4  |
          f'2  e'4 \break | % 41
          b'2  a'4 | % 42
          \time 4/4  | % 42
          r4  e'4  e'4  e'4 | % 43
          \time 6/4  | % 43
          b'2.  a'4   % 44
          \tempo"rall."e'4 e'4 | e'2. \fermata
          \bar "|."
        }

        \addlyrics {
          И
          ре -- че Бог: „Да се съ -- бе --
          ре во -- да -- та под не -- бе --
          то“. И ста -- на та -- ка. И я --
          ви се су -- ша -- та. И на --
          ре -- че я Бог зе -- мя. И съ
          -- бра -- на -- та __  во -- да на
          -- ре -- че мо -- ре. И ре -- че
          Бог, и из -- рас -- на све -- жа
          тре -- ва със се -- ме -- на "спо-" --
          ред ви -- да си __  и дър -- во
          със пло -- до -- ве спо -- ред ви --
          да си. И ви -- дя __  Бог, __ че __
          всич -- ко бе доб -- ро. И ста
          -- на ве -- чер, и ста -- на ут --
          ро, тре -- ти ден.}

          \header {
            title = \titleFunc #'ref_desc_18 "Трети Божествен ден" "Treti Božestven den"
          }

          \midi{}

        } % score

        \markup \raise #4.5 \override #'(baseline-skip . 2) {
          \column {
            \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
          }
        }

        \label #'ref194
        \tocItem \markup "     Четвърти Божествен ден"
        \include "include/bookpart-paper.ily"
        \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

          \new Voice \absolute {
            \clef treble
            \key e \minor
            \time 3/4
            \tempoFunc "Moderato espressivo" 4 "88"
            \autoBeamOff
            \partial 8
            f'8  | % 2
            f'2  e'4 | % 3
            a'2  gis'4 | % 4
            b'4 ( d''4 c''4 ) | % 5
            b'2. | % 6
            r4 c''4 c''4 \break  | % 7
            e''4 e''4 c''4 | % 8
            g''4 ^\fermata -- g''4 -- fis''4
            | % 9
            e''2 ^\fermata  e'4 -- |
            e'4 --  e'4 --  d'4 -- | % 11
            \time 4/4  | % 11
            e'2 ^\fermata  e'4  e'4 \break | % 12
            a'2 b'2 | % 13
            c''4 (  a'4 ) d''2 | % 14
            c''4  a'4 b'2 ~ | % 15
            b'2 r4 b'4 | % 16
            fis''2. e''4 \break  | % 17
            d''2 d''4 d''4 | % 18
            c''4 (  a'4 ) b'4 ( c''4 ) | % 19
            b'2 r4 b'4 |
            \time 5/4  |
            \tempo"poco rit." c''2 b'4
            f'4  d'4 \break | % 21
            \time 4/4  | % 21
            e'2. r4 | % 22
            \time 3/4  | % 22
            \tempo"a tempo"e'2 f'4 | % 23
            a'2 b'4 | % 24
            b'2 r8 b'8 | % 25
            \time 5/4  | % 25
            g''2 fis''?4 e''4 d''4 \break  | % 26
            e''2 c''4 ( b'4 )  a'4 | % 27
            \time 4/4  | % 27
            d''4 d''4 c''4  a'4 | % 28
            b'2 ^\fermata \tempo"Poco lento" e'4
            e'4 | % 29
            f'2 (  e'2 ) \break |
            a'2 b'4 ( c''4 ) | % 31
            d''2 e''2 | % 32
            f''2. -- e''4 --  | % 33
            a'2. -- r4 | % 34
            r4  fis'?4  fis'4  fis'4 \break | % 35
            fis'2  e'2 | % 36
            r4  fis'4  fis'4  fis'4 | % 37
            a'2.  fis'4 | % 38
            \time 6/4  | % 38
            fis'4  \tempo "rall." e'4  fis'2
            fis'4. \bar "|."
          }

          \addlyrics {
            И
            ре -- че Бог: „Да грей --
            нат све -- ти -- ла на не -- бес --
            ни -- я свод“. И ста -- на та --
            ка. И на -- пра -- ви Бог __  две
            све -- ти -- ла: __  го -- ля -- мо --
            то да вла -- дей __  де -- ня,
            а мал -- ко -- то нощ -- та. И на --
            пра -- ви Бог, че грей -- на -- ха
            звез -- ди на __  не -- бес -- ни --
            я прос -- тор. И ви -- дя __  Бог,
            че __  всич -- ко бе доб -- ро. И
            ста -- на ве -- чер, и ста -- на
            ут -- ро, ден чет -- вър -- ти.}

            \header {
              title = \titleFunc #'ref_desc_18 " Четвърти Божествен ден" "Četvărti Božestven den"
            }

            \midi{}

          } % score

          \markup \raise #4.5 \override #'(baseline-skip . 2) {
            \column {
              \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
            }
          }

          \label #'ref195
          \tocItem \markup "     Пети Божествен ден "
          \include "include/bookpart-paper.ily"
          \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

            \new Voice \absolute {
              \clef treble
              \key g \minor
              \time 4/4
              \tempoFunc "Andante risoluto" 4 "66"
              \autoBeamOff
              \partial 4
              g'4
              | % 146
              g'4 g'4 c''2 ^\fermata | % 147
              bes'4  c''4  d''4  es''4 | % 148
              c''2 a'2 | % 149
              \acciaccatura {  a'16 [ bes' c''] } bes'2 f'2 |
              \time 4/4
              r4  bes'4  bes'4  c''4 | % 151
              g'2 g'4 es'4 | % 152
              es'4 f'4 d'2 ~ | % 153
              \time 3/4  | % 153
              d'4 r4  b'4 \bar "||"
              \break | % 154
              \key g \major | % 154
              d''2. | % 155
              d''2 g'4 | % 156
              d''2  c''4 | % 157
              g'4 ( a'4 )  b'4 | % 158
              a'2. | % 159
              a'2 r4 \break |
              a'8 a'8  d''8  d''8  d''8
              cis''8 | % 161
              a'2. | % 162
              r4  b'4 a'4 ~ | % 163
              a'4 %\once \omit TupletBracket
              \times 2/3  {
                a'8 a'8 a'8
              }
              b'4 ~ \break | % 164
              b'4 e'2 ~  | % 165
              \time 3/4 e'4 r4 ^\fermata e'4 | % 166
              e'4 e'4 d'4 | % 167
              e'2 r4 \bar "||"
              \key bes \major | % 168
              r2 r4 | \break % 169
              \tempo "Maestoso" d'2 g'4 |

              bes'2 ( ^\fermata g'4 ) | % 171
              a'2. | % 172
              r4 r4 g'4 | % 173
              \time 6/4  | % 173
              d'4 d'4 g'4  d''2. \break | % 174
              c''2 es'4 es'4 es'4. d'8 | % 175
              g'2 fis'4 a'2. | % 176
              \time 4/4  | % 176
              r4 a'4 a'4 a'4 | \break % 177
              bes'2 g'2 | % 178
              r4 a'4 a'4 a'4 | % 179
              \time 3/4  | % 179
              b'2 g'4 |
              \time 2/4  |
              g'4 g'4 | % 181
              \time 3/4 | % 181
              a'2 \fermata \bar "|."
            }

            \addlyrics {
              И ре -- че Бог:
              „Да се ро -- дят във во --
              да -- та ри -- би и мор -- ски
              чу -- до -- ви -- ща __  и пти -- ци
              да хвър -- кат над __  зе -- мя --
              та по не -- бес -- ни -- я прос --
              тор, всич -- ки __  "спо-" -- ред ви --
              да __ си“. __  И ста -- на та --
              ка. И ви -- дя __  Бог, че всич --
              ко бе доб -- ро. И бла -- го --
              сло -- ви ги Бог. И ста -- на ве
              -- чер, и ста -- на ут -- ро, пе --
              ти ден.}

              \header {
                title = \titleFunc #'ref_desc_18 "Пети Божествен ден" "Peti Božestven den"
              }

              \midi{}

            } % score

            \markup \raise #4.5 \override #'(baseline-skip . 2) {
              \column {
                \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
              }
            }


            \label #'ref195
            \tocItem \markup "     Шести Божествен ден "

            \include "include/bookpart-paper.ily"
            \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

              \new Voice \absolute {
                \clef treble
                \key d \minor
                \time 3/4
                \tempoFunc "Andante" 4 "66"
                \autoBeamOff
                r8 a'8  d''4 -- a'4 --
                | % 183
                f''2 ~ --  f''8  f''8 -- | % 184
                e''8 --  d''8 --  c''4 a'4 | % 185
                \time 4/4  | % 185
                d''2 ^\fermata a'4. ^\fermata f'8 \break | % 186
                e'8 f'8
                \times 2/3  {
                  g'8  a'8 a'8
                }
                f'4 e'8 f'8 | % 187
                \time 3/4  | % 187
                g'8 g'8 a'8 a'8 d'4 | % 188
                \time 2/4  | % 188
                r4 d'4  \break | % 189
                \time 3/4  | % 189
                d'4 d'4 c'4 |
                d'2 r4 | % 191
                r4 \tempo "a tempo" d'4  d'4 | % 192
                d''2. | % 193
                c''2 bes'8 ( [ g'8 ) ] \break | % 194
                \time 4/4  | % 194
                a'4  bes'4  c''4  d''4  | % 195
                a'4.\caesura a'8 a'4 a'4 | % 196
                a''2.  g''8 f''8 \break | % 197
                e''4 \tempo "poco rall." d''4
                d''8 --  d''8 -- \once \omit TupletBracket
                \times 2/3  {
                  cis''8 ( [  d''8  e''8 ) ]
                } |
                d''2  -- r2 | % 199
                R1 |
                \time 6/4  |
                g'2 f'2 e'2 \break | % 201
                d'2 d'2 r2  | % 202
                \time 4/4  | % 202
                bes'2 g'4 e'4 | % 203
                bes'2 a'2 | % 204
                \time 6/4  | % 204
                g'4 a'4  c''2  bes'2 | % 205
                \time 4/4  | % 205
                a'2 r2 ^\fermata \break | % 206
                \tempo"Più mosso" d'4 e'4 f'4
                g'4 | % 207
                a'2 a'2 | % 208
                d''4  b'4 g'4 g'4 | % 209
                a'4  bes'?4  bes'2 |
                a'2 \tempo"poco rall." d'4 e'4 \break  | % 211
                f'2 ( e'2 ) | % 212
                d'2 r2 ^\fermata | % 213
                \time 6/4  | % 213
                \tempo "a tempo" d'4. a8 d'2
                cis'2 | % 214
                f'4 d'4 g'2 a'2 \break | % 215
                d'4 e'4 d'2 bes2 | % 216
                f'4 e'4 d'2 cis'2 | % 217
                e'4 -- e'4 -- f'2 e'4 -- r8
                f'8 \break | % 218
                \tempo "Più mosso" a'4 a'4 a'2 r4
                d'4 | % 219
                \time 4/4  | % 219
                f'2 e'2 |
                d'1  | % 221
                \time 3/4  | % 221
                d'2. | % 222
                d'2. ~ \break | % 223
                d'2 r8  a'8^\markup{\huge \italic { recitativo } } | % 224
                a'4 a'8 a'8 a'8 a'8 | % 225
                a'8 g'16 ( [ a'16 ) ] g'4 f'8
                f'8 \break | % 226
                f'4 f'8 f'8 f'8 f'8  | % 227
                \time 4/4  | % 227
                f'8 e'16 ( [ f'16 ) ] d'4 \tempo"Più lento" e'4  e'4 |
                \grace { e'16 [ ( f' ]  } g'2 ) f'2 | \break
                e'4 d' \grace {
                  e'16 (
                } d'2 ) |
                d'2 \fermata r4 d'4 |
                \tempo"Tempo I" d'2 cis'2 | % 232
                d'2 r2 | \break % 233
                f'2 -- d'2 -- |  \bar "||"  % 234
                \time 3/4  | % 234
                \key d \major r2 \tempo"Più mosso" a'8 a'8  | % 235
                a'4 a'8 a'8 g'8 a'8  | % 236
                \time 4/4  | \break  % 236
                fis'2
                \times 2/3  {
                  fis'8  fis'8 fis'8
                }
                \times 2/3  {
                  a'8  gis'8 fis'8
                }
                |  % 237
                b'4  b'4 r2  | % 238
                r4 fis'4 fis'4 fis'4  | \break % 239
                \tempo "poco rall." d'4 e'4 cis'2~ |
                \time 3/4  |
                cis'4 cis'4 d'4 |  % 241
                \time 4/4  | % 241
                b2 b2 |  % 242
                r4 fis'4 \times 2/3 {
                  a'4 a'4 a'4
                }
                | % 243
                a'2. r4 | \bar "||" \break % 244
                r4 \tempo "Più mosso" gis'2 gis'4 -- |  % 245
                \time 6/4  | % 245
                cis''2. --  b'4 --  b'4 --  b'4
                -- |  % 246
                a'2 -- a'2 -- fis'4 fis'4
                | % 247
                b'2 a'2 ( fis'2 )  |  \break % 248
                gis'2 r2 gis'4 gis'4 | % 249
                \time 4/4  | % 249
                e''1 |
                \time 3/4  |
                d''2  b'4 -- | % 251
                \time 4/4  | % 251
                b'4 --  b'4 --  cis''4 --  b'4
                -- | \break  % 252
                a'4 -- a'4 -- gis'4 -- r8
                ^\markup {
                  \musicglyph #"scripts.caesura.straight"
                }
                ^\fermata
                cis''8  |  % 253
                \key a \major
                fis''2 ^\fermata r8  \tempo"Poco meno mosso" cis''8
                cis''8  cis''8 | \break % 254
                cis''4 a'4 r8  cis''8  cis''8
                cis''8 | % 255
                e''4. ^\fermata  \tempo"rall." cis''8
                cis''4 --  b'4 -- | % 256
                a'2. r4 \bar "|."


              }
              \addlyrics {
                И ре -- че Бог: __  „Да
                "дой-" -- дат над зе -- мя -- та жи --
                вот -- ни и зве -- ро -- ве спо --
                ред ви -- до -- ве -- те им“. И
                ста -- на та -- ка. И ви -- дя Бог,
                че  всич -- ко бе доб -- ро. И
                ре -- че Бог, и съз -- да -- де че
                -- ло -- ве --  ка. Сам го съз
                -- да -- де по Сво -- я об -- раз и
                по -- до -- би -- е. И бла -- го --
                сло -- ви го да вла -- де -- е
                всич -- ко жи -- во по зе -- мя
                -- та, да о -- би -- ча и за --
                кри -- ля всич -- ки тва -- ри във
                во -- да -- та, по зе -- мя -- та и
                въз -- ду -- ха. И ре -- че Бог:
                „Да -- вам  __ тре -- ва -- та
                със се -- ме -- на -- та __  ѝ и
                дър -- во -- то със пло -- до -- ве
                -- те __  си за хра --
                на на че -- ло --  ве -- ка“. И ре --
                че Бог: „Да -- вам и на зем --
                ни -- те зве -- ро -- ве, и на "въз-"
                -- душ -- ни -- те пти -- ци, и всич
                -- ко, що пъл -- зи __ по зе -- мя
                -- та и и -- ма жи -- вот, и чо --
                век да не по -- ся -- га на жи --
                во -- та __ им“. И ви -- дя Бог,
                че всич -- ко, що на -- "пра-" -- ви,
                бе доб -- ро. И "ста-" -- на ве --
                чер, и "ста-" -- на ут -- ро, шес --
                ти ден.
              }

              \header {
                title = \titleFunc #'ref_desc_18 " Шести Божествен ден" "Šesti Božestven den"
              }

              \midi{}

            } % score

            \markup \raise #4.5 \override #'(baseline-skip . 2) {
              \column {
                \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
              }
            }

            \label #'ref199
            \tocItem \markup "     Седми Божествен ден"
            \include "include/bookpart-paper.ily"
            \score {
              \include "include/score-layout.ily"

              \new Voice \absolute {
                \clef treble
                \key e \major
                \time 3/2
                \tempo "Andante cantabile"
                \autoBeamOff
                b'4  b'4 e''2.  dis''4 | % 258
                b''2.  a''4 \tupletUp  \times 2/3 {
                  \once \override Slur.positions = #'(1 . 1) gis''4 (  fis''4 )  e''4
                }
                | % 259
                dis''4  cis''4  dis''4.  dis''8
                fis''2 \break |
                e''2 r2   \tempo "Maestoso" b'2  \bar
                "||"
                \key g \major | % 261
                b'2  b'2  b'2 | % 262
                \time 4/4  |

                \grace { a'16 ([b'16] } c''2) b'2 | a'2 g'4 g'4 | \break

                \time 6/4  | % 264
                fis'2 ( g'2 ) a'2 | % 265
                \time 4/4  | % 265
                g'2 r2 \bar "||"
                \key g \minor | % 266
                d'4 d'4 es'?4. d'8 | % 267
                g'2  bes'2 ^\fermata \break | % 268
                c''2  bes'4  bes'4 | % 269
                a'2 g'4 g'4 |
                bes'2 a'2 | % 271
                g'2 r2 | % 272
                r4 g'4 \times 2/3 {
                  d''4  d''4  d''4
                }
                \break | % 273
                \time 6/4  | % 273
                es''2  c''2  c''4  c''4 | % 274
                d''2 g'2 r4 g'4 | % 275
                d''4  c''4 g'4 a'4  c''2
                \break | % 276
                \time 4/4  | % 276
                bes'2. r4 | % 277
                \time 3/4  | % 277
                g'8 ( [ a'8 bes'8 c''8  ])
                d''4 | % 278
                \time 4/4  | % 278
                g''4  bes''2 ^\fermata  a''4 \break | % 279
                \time 5/4  | % 279
                g''2  f''4  es''4  d''4 |
                \time 3/2  |
                c''4  bes'4 a'2.  c''4 \break | % 281
                bes'2 ^\fermata \breathe g'4 g'2 ^\fermata
                g'4 | % 282
                g'2. r4 g'4 a'4 | % 283
                g'1 r2 \bar "|."
              }
              \addlyrics {
                И та -- ка съз -- да -- де
                Бог не -- бе -- то и зе -- мя --
                та, и всич -- ко -- то
                мно -- же -- ство съ -- ще -- ства __  във
                тях. И бла -- го -- сло -- ви Бог
                сед -- ми -- я ден и го о -- све --
                ти, за -- що -- то във не -- го си
                по -- чи -- на от всич -- ки -- те
                си де -- ла. И __    ви -- дя
                Бог, че всич -- ко, що на -- пра --
                ви, бе доб -- ро! А -- ум! А -- ум!
                А -- у -- мен!}

                \header {
                  title = \titleFunc #'ref_desc_18 " Седми Божествен ден" "Sedmi Božestven den"
                }

                \midi{}

              } % score


            } % bookpart

            % Più mosso
            %
