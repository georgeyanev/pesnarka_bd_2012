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
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 80)" }
        }
      }
      \autoBeamOff
      b'4 e'4 | % 2
      b'4 e'4 | % 3
      a'4. ( b'8 ) | % 4
      g'4  e'8. fis'16 | % 5
       g'8 ( [fis'8] ) e'8 ( [dis'8] ) | % 6
      e'2 | % 7
      c''4  b'8. ais'16 \break | % 8
      b'4. e'8 | % 9
      a'4  g'8. ( fis'16 ) |
      e'2 | % 11
      c''4  b'8. ais'16 | % 12
      b'4. e'8 | % 13
       fis'8 ( a'8 ) g'8 ( fis'8 ) | % 14
      e'2 \bar "|."
    }

    \addlyrics {Ра -- дост,
  Ра -- дост, Ра -- дост на Жи -- во -- та ми, ти
  ве -- се -- лиш сър -- це -- то ми, ти ве -- се
  -- лиш сър -- це -- то ми.}
    \addlyrics {Ra -- dost,
  Ra -- dost, Ra -- dost na Zhi -- vo -- ta mi, ti
  ve -- se -- lish sar -- tse -- to mi, ti ve -- se
  -- lish sar -- tse -- to mi.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Радост }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Radost }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \include "lyrics_de/174_radost_lyrics_de.ly"

} % bookpart
