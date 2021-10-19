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
      \time 6/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andantino" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      \autoBeamOff
      d2 \p  g2  d2 | % 2
      \time 4/2  | % 2
      d2^\<  g2. (  a4 ) \! \>  g4 \!
      \<  es4 | % 3
      d2. (  es4 ) \! \>  c2 \! \<
      bes4  a4\!  \break | % 4
      bes2. (\!  c4  d4^\>  es4
      d4  c4 | % 5
      bes4  a4  bes2 ) \!  g2 r2 | % 6
      g4  a4  bes2  a2 (^\<  g2\!
      ) \break | % 7
      \times 2/3  {
        fis'4 ( \!^\>  g4  a4 )
      }
      g1 r2 \! | % 8
      \time 4/4  | % 8
      c4^\mf  bes4^\<  a2 | % 9
      c4  d4  es2 \! |
      bes4 ^\p  a4^\>  g2 | % 11
      f'4 (  es4 )  d2 \! \break | % 12
      es,8 ( [ ^\pp  d8 ) ]  cis8 ( [  d8) ]  es2 ( ~ | % 13
      es4  d4 ) r2 | % 14
      d4. (  c8  f8 [  es8 ) ]  d8
      ( [  cis8 ) ] | % 15
      d2. r4 \break | % 16
      bes4. ( ^\mp^\>  a8 )  g2 | % 17
      a4. ( \! \<  bes8 )  c2 \! | % 18
      a4. ( ^\>  bes8 )  g2 | % 19
      es'2 \! ^\<  d4  fis4 |
      g2 \!  bes2 ^\> \break | % 21
      a2  g2 | % 22
      bes,4. ( \! \p \>  a8 )  g2 | % 23
      a4. ( \! \pp \<  bes8 )  c2 | % 24
      a4. ( \! \>  bes8 ) \!  g2 ^\fermata ^\ppp
      \bar "|."



    }

    \addlyrics {
      Ед -- на -- та, А -- дит -- на,
      Би-- от -- на Ам -- ри -- хал --
      на. А -- ме -- рун, Ше -- ме --  рун.
      Ил Би -- хар, Ил Би -- хар, Ил Би
      -- хар. Би -- хар, Ил  Би --
      хар.   Ил    ме  --
      зун. Ве -- ю, Ве -- ю Ве -- ю, Та -- о Би Ом, Ом Би --
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

    % include foreign translation(s) of the song
    %\include "lyricsde/lyricsdefilename.ly"

  } % bookpart
