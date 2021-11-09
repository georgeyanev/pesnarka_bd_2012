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
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
        }
      }
      \autoBeamOff
      \partial 8
     e'8 \repeat volta 2 {
    | % 2
     g'4.  f'8  e'8  d'8  e'8
     f'8 | % 3
     a'2  g'4  d'8  e'8 | % 4
     f'2  e'4 r8  e'8 \break | % 5
    \time 5/4  | % 5
     g'4.  f'8  e'8  d'8  e'4
     f'8  a'8 | % 6
    \time 4/4  | % 6
     c''4 (  b'8 [  a'8 ) ]  g'4
    ^\fermata  a'4 | % 7
     g'4  fis'4  a'4  c''8
    b'8 \break | % 8
    \time 3/4  | % 8
     a'8 ( [  b'8 ) ]  g'4.  e'8 | % 9
    \time 6/4  | % 9
     f'4  g'4  a'4.  b'8  c''4
     d''4 |
    \time 4/4  |
     e''2  d''4.  c''8 \break | % 11
    \time 3/4  | % 11
     b'8  a'8  b'8  e''4. | }

     \alternative {
       { % 12
      \time 4/4  % 12
       d''2  c''4.  e'8 | }
       {
       \time 4/4 d''2  c''2 | \bar "|." }
     }
    }

    \addlyrics {  Ко -- га -- то Лю -- бов -- та ца --
  ру -- ва, смут не ста -- ва. Ко --
  га -- то Мъ -- дрост -- та у -- прав
  -- ля -- ва, ре -- дът не се
  на -- ру -- ша -- ва. Ко -- га --
  то Ис -- ти -- на -- та гре -- е,
  пло -- дът цъф -- ти и зре -- е.
  Ко -- зре -- е.}
    \addlyrics {Ko -- ga -- to Lyu -- bov -- ta tsa --
  ru -- va, smut ne sta -- va. Ko --
  ga -- to Ma -- drost -- ta u -- prav
  -- lya -- va, re -- dat ne se
  na -- ru -- sha -- va. Ko -- ga --
  to Is -- ti -- na -- ta gre -- e,
  plo -- dat tsaf -- ti i zre -- e.
  Ko -- zre -- e.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Писмото}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Pismoto}
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
 \include "lyrics_de/175_pismoto_lyrics_de.ly"

} % bookpart
