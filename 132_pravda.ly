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
      \key c \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      c'4  g2 | % 2
      e'4  c'2 | % 3
      a'2. | % 4
      g'2 r8  e'8 | % 5
      e'4.  e'8  e'8  e'8 \break | % 6
      f'2  d'4 | % 7
      c'4 (  e'4  g'8 ) --   c''8 -- | % 8
      \time 4/4  | % 8
      e''4. (  b'8  c''8 [  b'8 ] )
      c''8  g'8  | % 9
      a'4  e'8.  e'16  g'4.  g'8
      \break |
      g'8  g'8  a'8  a'8  d'4
      g'8.  g'16 | % 11
      \time 3/4  | % 11
      e'2 r8  c''8 | % 12
      \time 4/4  | % 12
      e''4. (  b'8  c''8 [  b'8 ) ]
      c''8  g'8 \break | % 13
      a'4  e'8.  e'16  g'4.  g'8 | % 14
      g'8  g'8  a'8  a'8  d'4
      g'8.  g'16 | % 15
      \time 3/4  | % 15
      c'4 (  e'4  g'4 ) \break | % 16
      c''4. ( ^\markup{ \bold {Rubato} }  b'16 -- [
      c''16 -- ]
      \times 4/5  {
        d''16 -- [  b'16 --  c''16 --
        a'16 --  b'16 ) -- ]
      }
      | % 17
      g'2. | % 18
      \time 2/4  | % 18
      a'4 ( ~  a'16 [  b'16  c''16
      d''16 ] | % 19
      \time 3/4  | % 19
      e''2  d''4 ) |
      c''2. \bar "|."
    }

    \addlyrics {
      Прав -- да, Прав -- да, Прав -- да,
      що вна -- сяш Сво -- бо -- да в~у
      -- ма.   Кра -- си --
      ва и мощ -- на си ти и раз --
      пре -- де -- ляш всич -- ко в~све --
      та; кра -- си --   ва и
      мощ -- на си ти и раз -- пре -- де
      -- ляш всич -- ко в~све -- та.
      Прав --
      да, Прав --
      да!}
      \addlyrics {
        Prav -- da, Prav -- da, Prav -- da,
        shto vna -- syash Svo -- bo -- da v~u
        -- ma.   Kra -- si --
        va i mosht -- na si ti i raz --
        pre -- de -- lyash vsich -- ko v~sve --
        ta; kra -- si --   va i
        mosht -- na si ti i raz -- pre -- de
        -- lyash vsich -- ko v~sve -- ta.
        Prav --
        da, Prav --
        da!}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Правда }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 {Pravda}
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/132_pravda_lyrics_de.ly"

    } % bookpart
