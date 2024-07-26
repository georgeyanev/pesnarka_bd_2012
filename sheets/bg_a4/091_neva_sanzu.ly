\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref091
  \tocItem \markup "Нева санзу"
  \include "include/bookpart-paper.ily"
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

    \header {
      title = \titleFunc #'ref_desc_10 "Нева санзу" "Neva sanzu"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."
} % bookpart
