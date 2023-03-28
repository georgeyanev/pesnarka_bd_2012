\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref091
  \tocItem \markup "Нева Сензу – Neva Senzu"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Rubato" 4 "56"
      \autoBeamOn

      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \autoBeamOff
      a''2 ( \tuplet 3/2 { bes''8 [a'' gis''8] } \tuplet 3/2 { a''8 [f'' e''8] } g''16 [f'' e'' d''] )  f''8--  f''-- f''2 \bar "|" e''16 ( [f'' g'' a''] g''[ f'' e'' d''] ) e''8-- e''-- e''2 \bar "|" \break

      \time 7/4 g''4-- g''-- \tuplet 3/2 { f''8 ([e'' d''8]  } \tuplet 3/2 {cis''8 [d'' e''8] })   d''2 \bar "|" f''8. f''16 f''4 e''8-- d''-- \tuplet 3/2 {cis''!8 [( d'' e''8 )] } d''2 \bar "|" \break

      e''16-- f''16-- g''16-- a''-- bes''2-- a''8-- g''8--  f''8 ( [e''8 d''8] \tuplet 3/2 { cis''!8 [d''8 e''8] ) } d''2-- \bar "|" \break

      f''8-- f''-- e''-- d''-- cis''!4-- bes'8-- a'8-- \tuplet 3/2 {g'8-- ( [a' bes'--])} a'2--  \fermata  g16-- a-- bes--  a-- \bar "|" \break

      c'2-- bes8 a8 \tuplet 3/2 {g [( a bes-. )] } a2 r8 \tempo "rit. e morendo" g16 a bes  a \bar "|" \break

      c'2-- bes8 a8  \tuplet 3/2 {g [(a bes )]}  a2.  r4 \bar "|."


    }



    \addlyrics {
      Не -- ва сен -- зу,
      не -- ва сан -- зу би -- ю мен -- си,
      ха -- ри -- ен ха -- ди хен -- зи.
      А -- ва Ма -- хар вен ха -- бер мен -- си,
      А -- ва Ма -- хар вен ха -- бер мен -- си,
      А -- ва Ма -- хар вен ха -- бер мен -- си,
      А -- ва Ма -- хар вен ха -- бер мен -- си.

    }

    \addlyrics {
      Ne -- va sen -- zu,
      ne -- va san -- zu bi -- yu men -- si,
      ha -- ri -- en ha -- di hen -- zi.
      A -- va Ma -- har ven ha -- ber men -- si,
      A -- va Ma -- har ven ha -- ber men -- si,
      A -- va Ma -- har ven ha -- ber men -- si,
      A -- va Ma -- har ven ha -- ber men -- si.

    }

    \header {
      title = \titleFunc "Нева Сензу" "Neva Senzu"
    }

    \midi{}

  } % score

\markup \dc-one "D. C"
  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart
