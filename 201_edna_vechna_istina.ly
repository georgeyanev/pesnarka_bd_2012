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
      ragged-last = ##t % do not spread last line to fill the whole space
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
      \time 6/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andantino" \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      d2 \p  g2  d2 | % 2
      \time 4/2  | % 2
      d2 \<  g2. (  a4 ) \! \>  g4 \!
      \<  es4 | % 3
      d2. (  es4 ) \! \>  c2 \! \<
      bes4  a4\!  \break | % 4

      bes2. ( _\!  c4  d4 _\>  es4
      d4  c4 | % 5
      bes4  a4  bes2 ) _\!  g2 r2 | % 6
      g4  a4  bes2  a2 ( _\<  g2\! 
      ) \break | % 7



    }

    \addlyrics { Ед -- на -- та, А -- дит -- на, Би
  -- от -- на Ам -- ри -- хал --
         на. А --
  ме -- рун, Ше -- ме --  рун.
  Ил Би -- хар, Ил Би -- хар, Ил Би
  -- хар. Би -- хар, Ил  Би --
  хар.   Ил    ме  --
  зун. Ве -- ю, Ве Ве -- ю, Ве
  -- ю, Та -- о Би Ом, Ом, Би --
  ют, Ве -- ю, Ве -- ю, Ве --
  ю.}
    \addlyrics {}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Една вечна истина, която е Бог на Любовта}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Edna vechna istina, koyato e Bog na Lyubovta }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      \line { 2. Текст на кирилица }
      \line {   "   " Текст на кирилица }
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 2. Tekst na latinica }
      \line {   "   " Tekst na latinica }
    } %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  %\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
