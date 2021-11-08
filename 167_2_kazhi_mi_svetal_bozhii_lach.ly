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
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
        }
      }
      \autoBeamOff
      g4  b4  d'4 | % 2
      b'2  a'4 | % 3
      \time 2/4  | % 3
      g'4 (  a'16 [  g'16  fis'16  g'16
      ] | % 4
      a'4. )  fis'8 | % 5
      g'2 \break | % 6
      \time 4/4  | % 6
      c''4.  b'8  b'4  a'4 | % 7
      g'4  g'16 ( [  fis'16  g'16  a'16
      ) ]  g'2 | % 8
      \time 3/4  | % 8
      b'4.  b'8  b'4 \break | % 9
      \time 4/4  | % 9
      d''2  c''4.  b'8 |
      c''8.  b'16  a'8.  gis'16
      a'2 | % 11
      \time 5/4  | % 11
      g'4  fis'4  e'8.  e'16  e'2
      \break | % 12
      d'4  c'4  c'8.  c'16  e'2 | % 13
      d'4  a4  a8.  a16  b2 ^\fermata
      \bar "|."
    }

    \addlyrics {
      Ка -- жи ми, свет -- ли Бо --
      жи лъч, бла -- го -- то
      на Жи -- во --   та, свет --
      ли -- я прав път на чис -- ти --
      те ду -- ши, чис -- ти -- те ду --
      ши, чис -- ти -- те ду -- ши, чис --
      ти -- те ду -- ши.}
      \addlyrics {
        Ka -- zhi mi, svet -- li Bo --
        zhi lach, bla -- go -- to
        na Zhi -- vo --   ta, svet --
        li -- ya prav pat na chis -- ti --
        te du -- shi, chis -- ti -- te du --
        shi, chis -- ti -- te du -- shi, chis --
        ti -- te du -- shi.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Кажи ми, светли Божи лъч }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Kazhi mi, svetli Bozhi lach,  }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/167_2_kazhi_mi_svetli_bozhi_lach_lyrics_de.ly"

    } % bookpart
