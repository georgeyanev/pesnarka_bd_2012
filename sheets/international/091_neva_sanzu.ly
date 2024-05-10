\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref091
  \tocItem \markup "Нева санзу – Neva sanzu"
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
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 8)
       (padding . 2)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Rubato" 4 "56"
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \autoBeamOff
      a''2 ( \tuplet 3/2 { bes''8 [a'' gis''8] } \tuplet 3/2 { a''8 [f'' e''8] } g''16 [f'' e'' d''] )  f''8--  f''-- f''2   e''16 ( [f'' g'' a''] g''[ f'' e'' d''] ) e''8-- e''-- e''2  \break

      \time 7/4 g''4-- g''-- \tuplet 3/2 { f''8 ([e'' d''8]  } \tuplet 3/2 {cis''8 [d'' e''8] }) d''2  f''8. f''16 f''4 e''8-- d''-- \tuplet 3/2 {cis''!8 [( d'' e''8 )] } d''2  \break

      e''16-- f''16-- g''16-- a''-- bes''2-- a''8-- g''8-- \tuplet 3/2 { f''8 ( [e''8 d''8] } \tuplet 3/2 { cis''!8 [d''8 e''8] ) } d''2--  \break

      f''8-- f''-- e''-- d''-- cis''!4-- bes'8-- a'8-- \tuplet 3/2 {g'8-- ( [a' bes'--])} a'2-- \fermata   \break

      g16-- a-- bes--  a-- c'2-- bes8 a8 \tuplet 3/2 {g [( a bes-. )] } a2 r4    \break

      \tempo "rit. e morendo" g16 a bes  a c'2-- bes8 a8  \tuplet 3/2 {g [(a bes )]}  a2.  r4 \bar "|."

    }

    \addlyrics {
      Не -- ва сан -- зу,
      не -- ва сан -- зу би -- ю мен -- си,
      ха -- ри -- ен ха -- ди хен -- зи.
      А -- ва Ма -- хар вен ха -- бер мен -- си,
      А -- ва Ма -- хар вен ха -- бер мен -- си,
      А -- ва Ма -- хар вен ха -- бер мен -- си,
      А -- ва Ма -- хар вен ха -- бер мен -- си.

    }

    \addlyrics {
      Ne -- va san -- zu,
      ne -- va san -- zu bi -- ju men -- si,
      ha -- ri -- en ha -- di hen -- zi.
      A -- va Ma -- har ven ha -- ber men -- si,
      A -- va Ma -- har ven ha -- ber men -- si,
      A -- va Ma -- har ven ha -- ber men -- si,
      A -- va Ma -- har ven ha -- ber men -- si.

    }

    \header {
      title = \titleFunc "Нева санзу" "Neva sanzu"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-one "D.C."
  % include foreign translation(s) of the song
  %\include "../../lyrics/de/000_empty_template_lyrics_de.ly"

} % bookpart
