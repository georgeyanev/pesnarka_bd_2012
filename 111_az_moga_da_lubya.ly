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
      \key f \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      \autoBeamOff

      \partial 4

      c4 | % 2
      f4 a,8. bes16 | % 3
      c4 c8. c16 | % 4
      f4 ( g8. ) a16 | \break |% 5
      g4 g4 | % 6
      a4 a16 a16 a16  bes16
      % 7
      c4  c4 | \break | % 8
      d4 -> g,8. a16 | % 9
      f4 f4 ~ |
      f4 f8 f8 \repeat volta 2 \relative c {
        | % 11
        f''4.  e8 | \break |% 12
        d4  e4 | % 13
        c2 ~ | % 14
        c4 f,8 f8 | % 15
        f'4.  e8 | \break |% 16
        d4  e4 | % 17
        c2  | % 18
        a4 a8 a8 | % 19
        bes2 | \break |
        g4. g8 | % 21
        c4. (  bes8 ) | % 22
        a4 g4 | % 23
        bes4. e,8  |\break  % 24
        g4 ( a4 ) f2~
      }
      \alternative {
       { f4 f8 f8  | }
        { f2~ f4 }
       }
       \bar "|."
    }
    \addlyrics {
  Аз мо -- га да лю -- бя, до -- бър
  да ста -- на; аз мо -- га да
  о -- би -- чам, си -- лен да ста --
  на.  Лю -- бов -- та и О -- бич --
  та,  Лю -- бов -- та и О -- бич --
  та ще ме на -- у -- чат на Бо
  -- га слу -- га да ста -- на.
  Лю -- бов -- на.
  }
  \addlyrics {
      Az mo -- ga da lyu -- bya, do -- bar
   da sta -- na; az mo -- ga da
  o -- bi -- cham, si -- len da sta --
  na.  Lyu -- bov -- ta i O -- bich --
  ta,  Lyu -- bov -- ta i O -- bich --
  ta shte me na -- u -- chat na Bo
  -- ga slu -- ga da ysta -- na.
  Lyu -- bov -- na.
  }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Мога да любя }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Moga da lyubya }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/111_az_moga_da_lyubya_lyrics_de.ly"

} % bookpart
