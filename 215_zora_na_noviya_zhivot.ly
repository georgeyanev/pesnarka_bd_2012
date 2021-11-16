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
      \key g \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
        }
      }
      \autoBeamOff
      r8  d'8  g'8  b'8 | % 2
      d''4.  c''8 | % 3
      \grace {  b'16 ( [  c''16 ] }  b'8 )
      a'8  g'8 ( [  b'8 ) ] | % 4
      a'2 \break | % 5
      r8  d'8  e'8  fis'8 | % 6
      g'4. (  a'32 [  g'32  fis'32  g'32
      ] | % 7
      b'4. )  c''8 | % 8
      a'2 \break | % 9
      r8  d'8  g'8  fis'8 | \barNumberCheck #10
      b'8  a'8  d''8  c''8 | % 11
      \grace {  b'16 ( [  c''16 ] }  b'8 )
      a'8  a'8 ( [  b'8 ) ] | % 12
      g'2 \break | % 13
      r8  d'8  d'8  d'8 | % 14
      c''4.  b'8 | % 15
      a'8  g'8  a'16 ( [  g'32  a'32
      b'32  a'32  g'32  a'32 ) ] | % 16
      g'2 \break | % 17
      r8  d'8  d'8  d'8 | % 18
      d''8 ( ^\fermata [  e''16  d''16 ]
      c''16 [  b'16 ) ]  a'16 ( [  g'16 )
      ] | % 19
      b'4. (  c''16 [  b'16 ) ] |
      \barNumberCheck #20
      a'8 ( [ \once \omit TupletBracket
      \times 2/3  {
        b'16  a'16  g'16 ]
      }
      a'8 [  b'8 ) ] | % 21
      g'2 \bar "|."
    }

    \addlyrics {
      Зо -- ра се чуд -- на за --
      зо -- ря -- ва, зо -- ра на нов
      Жи -- вот, ко --
      я -- то мен в~Жи -- во -- та
      при -- зо -- ва -- ва. Зо --
      ра се чуд -- на за -- зо -- ря --
      ва, зо -- ра на
      но -- ви -- я
      жи -- вот.}
      \addlyrics {
        Zo -- ra se chud -- na za --
        zo -- rya -- va, zo -- ra na nov
        Zhi -- vot, ko --
        ya -- to men v~Zhi -- vo -- ta
        pri -- zo -- va -- va. Zo --
        ra se chud -- na za -- zo -- rya --
        va, zo -- ra na
        no -- vi -- ya
        zhi -- vot.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Зора на Новия Живот }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Zora na Novia Zhivot  }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score


      % include foreign translation(s) of the song
      \include "lyrics_de/215_zora_na_noviya_zhivot_lyrics_de.ly"

    } % bookpart
