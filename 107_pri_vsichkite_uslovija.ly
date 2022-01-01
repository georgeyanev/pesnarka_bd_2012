\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}


\bookpart {
  #(define-bar-line "!!" "!!" #f "!")
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
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
          (basic-distance . 4.5)
          (padding . 0.5)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \time 6/8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegretto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4." #0.8
          \normal-text { " = 84)" }
        }
      }


      \partial 8
      bes'8 | c4 bes8 a4 g8 | f4 d8 c4. | g'4  g8 g8 (a b)  | \break

      \time 3/4 \tempo \markup {
        % make tempo note smaller
        \concat {
          \normal-text { "        " }
          \teeny \general-align #Y #DOWN \note #"4." #0.8
          \normal-text { " = " }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
        }
      }
      c2 \tuplet 3/2 { g4 g8} | c2 \tuplet 3/2 { a4 a8 } | d4 (c) \tupletUp \tuplet 3/2 { b b8 } | \tupletNeutral \break

      c2 \mark \markup { \bold \fontsize #-2 { "Fine" } } \bar "!!" a8 ( f8 ) \autoBeamOff \repeat volta 2 { e4 d a8. a16 | \time 2/4 d4. f8 | \break
      e4 a,8. a16 | d8 [(e8)] f8 e | }
      \alternative {
       {\time 3/4 d2 a'8 [(f)] }
       {\time 2/4 d2 }
      }
      \bar "|."

    }

    \addlyrics {
      При всич -- ки -- те у -- сло -- ви -- я на жи -- во -- та

      не гу -- би сво -- я Мир, сво -- я Мир.

      Жи -- во -- тът е кра -- сив,

      ко -- га -- то чо -- ве -- кът е смел.

      Жи -- смел.
      }
      \addlyrics { 
      Pri vsich -- ki -- te u -- slo -- vi -- ya na zhi -- vo -- ta

      ne gu -- bi svo -- ya Mir, svo -- ya Mir.

      Zhi -- vo -- tat e kra -- siv,

      ko -- ga -- to cho -- ve -- kat e smel.

      Zhi -- smel.
      }

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line {При всичките условия}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Pri vsichkite usloviya }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

  \markup \halign #-15.5 \raise #3 \override #'(baseline-skip . 2) {
    \column  {
      \line \right-align {
        \bold  { "D.C. al Fine" }
      }
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
    }
  }

    % include foreign translation(s) of the song
    \include "lyrics_de/107_pri_vsichkite_uslovija_lyrics_de.ly"

  } % bookpart
