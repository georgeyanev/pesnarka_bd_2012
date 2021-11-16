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
      \time 6/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante sustenuto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 76)" }
        }
      }
      \autoBeamOff
      \partial 2
      d'4  d'4 | % 2
      b'2  a'2  g'4  fis'4 | % 3
      a'2.  g'4 r4  g'4 \break | % 4
      \time 4/4  | % 4
      fis'4  d'4  g'4  a'4 | % 5
      \time 6/4  | % 5
      b'2 r4 r8 b'8 d''4 b'4 | % 6
      \time 5/4  | % 6
      e''2  a'2 r4 \break | % 7
      g'2  e'8  fis'8  g'4  a'4 | % 8
      \time 3/4  | % 8
      b'2 b'8 ( [ c''8 ) ] | % 9
      \time 4/4  | % 9
      c''4 b'4 ^\markup{ \bold {rit.} }  a'4
      b'8 ( [ cis''8 ) ] \break |
      d''2 r2 \repeat volta 2 {
        | % 11
        \key bes \major \time 6/4 | % 11
        d'2 (   \tempo \markup {
          % make tempo note smaller
          \concat {
            "Lento" \normal-text { "" }
          }
        } bes'2 )
        a'2 | % 12
        g'2.  \breathe fis'4  g'4  a'4 \break
        | % 13
        \time 4/4  | % 13
        c''2 bes'2 | % 14
        r4 bes'4 bes'4 c''4 | % 15
        es''2. d''4 | % 16
        \time 6/4  | % 16
        d''2 r4 ^\fermata c''4 bes'4
        g'4 \break | % 17
        \time 4/4  | % 17
        c''2 bes'2 | % 18
        r4  d'4  d'4  d'4 | % 19
        bes'2.  a'4 |
        g'1
      }
    }

    \addlyrics {
      Аз ще па -- зя то -- пли -- на --
      та на мо -- е -- то сър -- це, ко --
      я -- то вна -- ся Бо -- жи -- и -- те
      бла -- га във  мо -- я -- та ду
      -- ша. От -- че наш, не ни
      въ -- веж -- дай във из -- ку -- ше
      -- ни -- е, не ни въ -- веж -- дай
      във из -- ку -- ше -- ни -- е.}
      \addlyrics {
        Az shte pa -- zya to -- pli -- na --
        ta na mo -- e -- to sar -- tse, ko --
        ya -- to vna -- sya Bo -- zhi -- i -- te
        bla -- ga vav  mo -- ya -- ta du
        -- sha. Ot -- che nash, ne ni
        va -- vezh -- day vav iz -- ku -- she
        -- ni -- e, ne ni va -- vezh -- day
        vav iz -- ku -- she -- ni -- e.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line {Отче наш, не ни въвеждай в искушение}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 {Otche nash, ne ni vavezhday v iskushenie }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score


      % include foreign translation(s) of the song
      \include "lyrics_de/216_otche_nash_ne_ni_vavezhday_lyrics_de.ly"

    } % bookpart
