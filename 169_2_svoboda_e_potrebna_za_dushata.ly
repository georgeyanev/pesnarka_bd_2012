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
      \key d \minor
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \repeat volta 2 {
        r4  d'8  d'8 | % 2
        a'4  a'8  a'8 | % 3
        c''4  bes'4 | % 4
        a'4  g'4 | % 5
        f'8 ( [  g'8 ) ]  a'4 ~ | % 6
        a'4  a8  a8 | % 7
        d'4  e'8  e'8 \break | % 8
        g'4  f'4 | % 9
        e'4  d'4 |
        d'2 | % 11
        d'2 | % 12
        a8  a8  a4 | % 13
        d'2 | % 14
        a8  a8  a4 | % 15
        d'2
      }
    }

    \addlyrics {
      Сво -- бо -- да е по -- треб -- на
      за ду -- ша -- та. Сво -- бо
      -- да е по -- треб -- на за ду --
      ша -- та, за ду -- ша -- та, за ду
      -- ша -- та.}
      \addlyrics {
        Svo -- bo -- da e po -- treb -- na
        za du -- sha -- ta. Svo -- bo
        -- da e po -- treb -- na za du --
        sha -- ta, za du -- sha -- ta, za du
        -- sha -- ta.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Свобода е потребна за душата }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Svoboda e potrebna za dushata }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/169_2_svoboda_e_potrebna_sa_dushata_lyrics_de.ly"

    } % bookpart
