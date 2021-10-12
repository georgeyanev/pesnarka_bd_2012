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
      \key g \minor
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andantino " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \partial 4
      g'8. a'16 | bes'4. a'8 g'8. fis'16 g'8 a'8 | d'2. es'8. d'16 | \break

      c'4. d'8 bes8. a16 bes8 c'8  d'2. g'8. a'16 | bes'4. c''8 d''8 c''8 bes'8 a'8 |\break |


      g'2. g'8. a'16 | bes'4. a'8 g'8 fis'8 g'8 a'8 | g'2. \bar "|."


    }

    \addlyrics {Слу  --  шай  --
   те   гла  --  са   на   пе  --  сен  --  та,   що   раз  --  на  --
   ся   ве  --  че   про  --  лет  --  та.   Дар   ве  --  лик   е
   за   Жи  --  во  --  та   тя,   дар   ве  --  лик   е   за   Жи  --
   во  -- та тя.
}
    \addlyrics {Slu  --  shay  --
   te   gla  --  sa   na   pe  --  sen  --  ta,   shto   raz  --  na  --
   sya   ve  --  che   pro  --  let  --  ta.   Dar   ve  --  lik   e
   za   Zhi  --  vo  --  ta   tya,   dar   ve  --  lik   e   za   Zhi  --
   vo  -- ta tya.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Пролет }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Prolet }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score





  % include foreign translation(s) of the song
  \include "lyrics_de/118_2_prolet_lyrics_de.ly"

} % bookpart
