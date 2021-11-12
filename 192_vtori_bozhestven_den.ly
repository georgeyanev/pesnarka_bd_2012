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

    \new Voice \absolute{
      \clef treble
      \key c \minor
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
       r4 d''4 s2| % 2
          d''2 d'2 | % 3
          g'2. d'4 | % 4
          b'2 b'4. b'8 | % 5
          b'2 c''4 b'4 \break | % 6
          a'2 a'2 \bar "||"
           | % 7
          \time 6/4  | % 7
          d'4 d'4 d'4 a'4 g'4
          f'4 | % 8
          \time 4/4  | % 8
          c''2 c''2 | % 9
          c''4 c''4 c''4 d''4 \break|
          es''2. d''4  | % 11
          c''2 c''2 | % 12
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
          e''2. d''4 d'4 ^\markup{ \bold {rall.} }
          d'4 | % 26
          e'1 r2 _ "attacca" \bar "|."
    }

    \addlyrics {И
          ре -- че Бог: „Да бъ -- де прос --
          тор сред во -- ди -- те.“ И на --
          пра -- ви Бог прос -- то -- ра, и
          раз -- де -- ли Бог во -- да -- та
          над прос -- то -- ра от во -- да --
          та под про -- сто -- ра. И ста --
          на та -- ка. И на -- ре -- че Бог
          прос -- то -- ра не -- бе. И ста --
          на ве -- чер, и ста -- на ут -- ро,
          вто -- ри ден.}
    \addlyrics { I
            re -- che Bog: „Da ba -- de pros --
            tor sred vo -- di -- te.“ I na --
            pra -- vi Bog pros -- to -- ra, i
            raz -- de -- li Bog vo -- da -- ta
            nad pros -- to -- ra ot vo -- da --
            ta pod pro -- sto -- ra. I sta --
            na ta -- ka. I na -- re -- che Bog
            pros -- to -- ra ne -- be. I sta --
            na ve -- cher, i sta -- na ut -- ro,
            vto -- ri den.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Втори Божествен ден }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 {Vtori bozhestven den }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score


  % include foreign translation(s) of the song
  \include "lyrics_de/192_vtori_bozhestven_den_lyrics_de.ly"

} % bookpart
