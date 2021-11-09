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
          "Allegro" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 126)" }
        }
      }
      
      d''4. cis''16 d''16 | % 2
  e''8 d''8 d''8 c''8 | % 3
  c''8 b'8 b'8 a'8 | % 4
  a'8 g'8 g'8 fis'8 \break | % 5
  a'16 g'16 fis'16 e'16 d'8 c'8 | % 6
  b8 c'8 d'8 e'8 | % 7
  d'2 | % 8
  a8. b16 c'8 d'8 | % 9
  e'8 e'8 e'8 fis'8 \break 

  \time 3/4  a'16 g'16 fis'16 e'16 e'8 d'8 d'4 | % 11
  \time 2/4  b8 d'8 d'8 c'8 | % 12
  c'8 e'8 e'8 d'8 | % 13
  a8 b16 c'16 e'8 d'8 \break | % 14
  d'8 b8 d'4 | % 15
  c''8 e'8 e'8 e'8 | % 16
  e'8 e'8 e'4 | % 17
  c''8 d'8 d'8 d'8 | % 18
  d'8 d'8 d'4 \break | % 19
  g''8 b'8 b'8 b'8 |
  b'8 b'8 b'4 | % 21
  e''8 fis''16 g''16 b''8 a''8 | % 22
  a''8 g''8 g''8 fis''8 | % 23
  a''8 g''8 g''4 \break | % 24
  d''8 e''16 fis''16 g''8 g''8 | % 25
  g''8 fis''16 g''16 a''8 g''8 | % 26
  g''8 fis''8 fis''8 e''8 | % 27
  e''8 d''8 d''4 | % 28
  a'8. b'16 c''8 d''8 \break | % 29
  e''8 e''8 e''8. fis''16 |
  a''16 g''16 fis''16 e''16 e''8 d''8 | % 31
  d''8 b'8 d''16 c''16 b'16 a'16 | % 32
  g'8 fis'8 a'8 g'8 | % 33
  g'2 \break | % 34
  d'8 g'8 g'8 fis'8 | % 35
  fis'8 e'8 e'8 e'8 | % 36
  \time 3/4  g'16 fis'16 e'16 d'16 c'8 c'8 c'8 c'8 | % 37
  \time 2/4  e'8 d'8 d'4 \break | % 38
  \repeat volta 2 {
    a8 b8 c'8 d'8 | % 39
    e'8 d'8 e'16 d'16 c'16 b16 |
    a8 b16 a16 b8 a8 | % 41
    g8 g8 g4 
  }
    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Играта на поточето }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Igrata na potocheto }
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
