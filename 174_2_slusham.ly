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
      \time 5/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 80)" }
        }
      }
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
      e'8 [ fis'8 ) ] e'4 ^\fermata  \bar "|."
    }

    \addlyrics { Слу --    шам -- шам --
  шам, слу --    шам --
  шам -- шам, слу --
  шам -- шам -- шам, слу --
      шам.}
    \addlyrics { Slu --    sham -- sham --
  sham, slu --    sham --
  sham -- sham, slu --
  sham -- sham -- sham, slu --
      sham.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Слушам }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 {Слушам }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/174_2_sluscham_lyrics_de.ly"

} % bookpart
