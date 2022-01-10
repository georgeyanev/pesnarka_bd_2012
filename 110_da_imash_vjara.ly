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
      \time 8/16
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 126)" }
        }
      }

      \autoBeamOff
      d'8. d8 d8. | % 2
      d8. c8 ~ c8. | % 3
      d8. bes8 ~ bes8. | % 4
      c8. c8 c8. \break | % 5
      c8. bes8 ~ bes8. | % 6
      a8. ( g8 ~ g8. | % 7
      bes8. ~ bes8 ~ bes8. | % 8
      a8. ) g8 ~ g8. \break | % 9
      a8. c8 c8. |
      bes8. a8 ( a8. ) | % 11
      bes8. ( a8 g8. ) | % 12
      d'8. ~ d8 ~ d8. \break | % 13
      \repeat volta 2 {
        c,8. d8 es8. | % 14
        es8. d8 ~ d8. | % 15
        es8. c8 ~ c8. | % 16
        f8. ( ~ f8 es8. ) | % 17
        d8. ~ d8 ~ d8.
      }

    }

    \addlyrics {Да и -- маш
  вя -- ра, вя -- ра, да и -- маш вя -- ра, вя --
  ра, да и -- маш вя -- ра, вя -- ра, да и --
  маш вя -- ра, вя -- ра, вя -- ра.}
    \addlyrics {Da i -- mash vya
  -- ra, vya -- ra, da i -- mash vya -- ra, vya -- ra, da i --
  mash vya -- ra, vya -- ra, da i -- mash vya -- ra, vya --
  ra, vya -- ra.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Да имаш вяра }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Da imash vyara }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \markup \halign #-38.5 \raise #3 \override #'(baseline-skip . 2) {
    \column  {
      \line \right-align {
        \bold  { "D.C." }
      }
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
    }
  }


  % include foreign translation(s) of the song
  \include "lyrics_de/110_da_imash_vyara_lyrics_de.ly"

} % bookpart
