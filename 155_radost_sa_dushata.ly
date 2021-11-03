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
      %  ragged-last = ##t % do not spread last line to fill the whole space
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
      \key d \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Adagio " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 54)" }
        }
      }
      \autoBeamOff
      d''4.  cis''8  e''16  d''16
      cis''16  b'16 | % 2
      a'4 ( ~  a'8 [ \once \omit TupletBracket
      \times 2/3  {
        g'16  a'16  b'16 ) ]
      }
      a'8. ( [  g'16 ) ] \break | % 3

      \times 2/3  {
        fis'8 ( [  d'8 ) ] e'8
      }

      \times 2/3  {
        d'8   e'8  fis'8
      }
      e'4 ^\fermata \break | % 4

      \times 2/3  {
        d'8 [  fis'8 ] a'8
      }
      b'16  a'16  d''16  cis''16
      e''16  d''16  cis''16  d''16
      \break | % 5
      \time 2/4
      b'4  a'8. [(  g'16 )]
      \times 2/3  {
        fis'8 ( [  e'8 ) ] fis'8
        |
      }
      % 6
      g'8  fis'8  e'4  d'4 \break \repeat
      volta 2 {
        | % 7
        d'4  d'4.  d'8 | % 8
        d'4  d'2 | % 9
        e'4  e'4.  g'8 |
        fis'4  fis'2 \break | % 11
        a'4  a'4.  a'8 | % 12
        b'4  b'2 | % 13
        cis''4  cis''4.  cis''8 | % 14
        d''4  d''2
      }
    }

    \addlyrics {
      Ра -- дост, Ра -- дост за ду -- ша
      --    та  но -- си
      Чис -- то -- та -- та. Ра -- дост,
      Ра -- дост, Ра -- дост, Ра -- дост
      за ду -- ша -- та  но -- си
      Чис -- то -- та -- та. Чис -- ти бъ --
      де -- те ка -- то пче -- ли -- те.
      Чис -- ти бъ -- де -- те ка -- то
      цве -- тя -- та.}
      \addlyrics {
        Ra -- dost, Ra -- dost za du -- sha
        --    ta  no -- si
        Chis -- to -- ta -- ta. Ra -- dost,
        Ra -- dost, Ra -- dost, Ra -- dost
        za du -- sha -- ta  no -- si
        Chis -- to -- ta -- ta. Chis -- ti ba --
        de -- te ka -- to pche -- li -- te.
        Chis -- ti ba -- de -- te ka -- to
        tsve -- tya -- ta.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Радост за душата }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Radost za dushata }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score


      % include foreign translation(s) of the song
      \include "lyrics_de/155_radost_sa_dushata_lyrics_de.ly"

    } % bookpart
