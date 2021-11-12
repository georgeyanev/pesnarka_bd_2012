\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      %ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \partial 4
      g'4
      | % 146
      g'4 g'4 c''2 ^\fermata | % 147
      bes'4  c''4  d''4  es''4 | % 148
      c''2 a'2 | % 149
      \grace {  [a'16 ( bes' c''] } ) bes'2 f'2 |
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
      r4  b'4 a'4 ~ \break | % 163
      a'4 \once \omit TupletBracket
      \times 2/3  {
        a'8 [ a'8 a'8 ]
      }
      b'4 ~  | % 164
      b'4 e'2 ~  | % 165
      e'4 r4 ^\fermata e'4 \break | % 166
      e'4 e'4 d'4 | % 167
      e'2 r4 \bar "||"
      \key bes \major | % 168
      r2 r4 | % 169
      d'2 ^\markup{ \bold {Maestoso} } g'4 |

      bes'2 ( ^\fermata g'4 ) | % 171
      a'2. \break | % 172
      r4 r4 g'4 | % 173
      \time 6/4  | % 173
      d'4 d'4 g'4  d''2. | % 174
      c''2 es'4 es'4 es'4. d'8
      \break | % 175
      g'2 fis'4 a'2. | % 176
      \time 4/4  | % 176
      r4 a'4 a'4 a'4 | % 177
      bes'2 g'2 \break | % 178
      r4 a'4 a'4 a'4 | % 179
      \time 3/4  | % 179
      b'2 g'4 |
      \time 2/4  |
      g'4 g'4 | % 181
      \key c \major \time 3/4 | % 181
      a'2. \bar "|."



    }

    \addlyrics {
      И ре -- че Бог:
      „Да се ро -- дят във во --
      да -- та ри -- би и мор -- ски
      чу -- до -- ви -- ща  и пти -- ци
      да хвър -- кат над  зе -- мя --
      та по не -- бес -- ни -- я прос --
      тор всич -- ки  спо -- ред ви --
      да  си.“  И ста -- на та --
      ка. И ви -- дя  Бог, че всич --
      ко бе до -- бро. И бла -- го --
      сло -- ви ги Бог. И ста -- на ве
      -- чер, и ста -- на ут -- ро, пе --
      ти ден.}
      \addlyrics { I re -- che Bog:
      „Da se ro -- dyat vav vo --
      da -- ta ri -- bi i mor -- ski
      chu -- do -- vi -- shta  i pti -- tsi
      da hvar -- kat nad  ze -- mya --
      ta po ne -- bes -- ni -- ya pros --
      tor vsich -- ki  spo -- red vi --
      da  si.“  I sta -- na ta --
      ka. I vi -- dya  Bog, che vsich --
      ko be do -- bro. I bla -- go --
      slo -- vi gi Bog. I sta -- na ve
      -- cher, i sta -- na ut -- ro, pe --
      ti den.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Пети божествен ден }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Peti bozhestven den}
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score
    
       \markup \halign #-27.9 \raise #2.8 \override #'(baseline-skip . 2) {
        \column  {
          \line  {
            \italic \right-align { "attacca" }
          }
        }
      }



    % include foreign translation(s) of the song
    \include "lyrics_de/195_peti_bozhestven_den_lyrics_de.ly"

  } % bookpart
