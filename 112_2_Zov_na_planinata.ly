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
      \key c \minor
      \time 7/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      }
      \autoBeamOff
      \partial 4
      bes4 | % 1
      es4.  g,8  bes2.  bes4  es4 | % 2
      g4  f4 ~  f2  f4  g4
      as4 \break | % 3
      \time 5/4  | % 3
      bes2.  bes4  bes4 | % 4
      \time 3/4  | % 4
      c4  bes2 | % 5
      \time 5/4  | % 5
      as4  g2  f4  bes4 | % 6
      f2  es2. \bar "|."
    }

    \addlyrics {
      И -- ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.
    }
    \addlyrics {}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Зов на планината }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Zov na planinata }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  \markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

      \line {  2. Запявам аз  песен чудна}
      \line {   "   "  за Слънцето,}
      \line {   "   "  бистри изворчета зашумяват.}
      \line {   "   " }
      \line {3. И виждам аз връх изправен}
      \line {   "   " пред мен стои.}
      \line {   "   " Той зове ме кротко там нагоре.}
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line {  2. Zapyavam az  pesen chudna}
      \line {   "   "  za Slantseto,}
      \line {   "   "  bistri izvorcheta zashumyavat.}
      \line {   "   " }
      \line {3. I vizhdam az vrah izpraven}
      \line {   "   " pred men stoi.}
      \line {   "   " Toy zove me krotko tam nagore.}
    } %column
  } % markup

  \markup \halign #-9.3 \raise #3 \override #'(baseline-skip . 2) {
    \column  {
      \line {" "}
      \line {" "}
      \line {" "}
      \line {" "}
      \line {" "}
    }
  }

  % include foreign translation(s) of the song
  \include "lyrics_de/112_2_zov_na_planinata_lyrics_de.ly"

} % bookpart
