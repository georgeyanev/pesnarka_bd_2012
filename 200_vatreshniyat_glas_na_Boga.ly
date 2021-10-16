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

    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Larghetto " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \partial 4
       d4^\p | % 2
      d'2 c4 | % 3
      bes2 a4 | % 4
      g4 \times 2/3 {
        fis8 ( [g8] ) a8
      }
       g4^\> ~ | % 5
      g2 \! bes4 \break | % 6
      a2 \p g4 | % 7
      fis2 es4 | % 8
      d2 c8 ( [es8] ) | % 9
      d2 \breathe^ \< c4 \break
      es2 d4 | % 11
      d2 bes'4 | % 12
      a2 \!  g4 | % 13
      d'2. \break | % 14
      es8 ( [d8 cis8 d8] )  bes8.^\>  ( [a16] ) | % 15
      bes2 a4 | % 16
      g2 \! d'4^\p \break | % 17
      \time 4/4  c2
      \times 2/3  {
        bes8 [( a8 g8 )]
      }
      \times 2/3  {
        fis8 ( [g8 a8] )
      }
      | % 18
      \time 3/4  g2 es4 \break | % 19
      d2^\markup{ \bold {rall.} } c4 |
      d2 fis4^\ppp | % 21
      g2. ( | % 22
      g2 )\bar "|."
    }

    \addlyrics {
      Ве -- ну Ба
      -- хар са -- ли му -- се -- нет. Ту -- си Ба --
      хар. Ве -- ну се -- нет. Ту -- си Ба -- хар, Ве
      -- ну Ба -- хар Са -- ли му -- се -- нет. Ве --
      ну ил -- би -- ют. Би -- ют, Би -- ют, Би -- ют.}
      \addlyrics {
        Ve -- nu Ba
        -- har sa -- li mu -- se -- net. Tu -- si Ba --
        har. Ve -- nu se -- net. Tu -- si Ba -- har, Ve
        -- nu Ba -- har Sa -- li mu -- se -- net. Ve --
        nu il -- bi -- yut. Bi -- yut, Bi -- yut, Bi -- yut.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Вътрешния глас на Бога }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Vatreshniya glas na Boga}
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      %\include "lyrics_de/lyrics_de_file_name.ly"

    } % bookpart
