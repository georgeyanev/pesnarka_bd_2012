\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref109
  \tocItem \markup "Аз смея да кажа"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Andante" 4 "63"
      \autoBeamOff
      g4 \tuplet 3/2 {  a8   b8   c8  }  d8   e4   a8 | \time 5/4  | g8.   f16   e8   f8   g8 ( [ a8 ) ]   g2 \break |

      \time 4/4  | c4 \tuplet 3/2 {  b8   a8   a8  } b8   g4   e8 | \time 5/4  | g8   f8   e8   d8   d8 ( [ e8 ) ]   c4.   c8 \break |

      \time 4/4  | e4.   c8   d8   c8   b8  a8 |   \time 4/4   a4   b4   g4.   c'8  | \time 5/4 \break

      \tweak direction #up \tuplet 3/2 { \once \override Slur.positions = #'(1 . 1) \tuplet 3/2 { c16 ([ d16  c16 } b8]) b8 }

      \tweak direction #up \tuplet 3/2 { \once \override Slur.positions = #'(1.05 . 0.1) \tuplet 3/2 { b16 [( c16  b16 } a8 )] a8 }

      \tuplet 3/2 { g4 e8 } g4. f8 \break


      f8   f8   a8   g8   g8 e8   g4. g8 | \tempo "(poco rit.)"  \tuplet 3/2 { a4 a8 } \tuplet 3/2 { b4 e,8 } \tweak direction #up \tuplet 3/2 { c'4 c8 } c4. e,8 \break

      \tempo "(a tempo)" e8 e8   f8 d8   d4   c4.   f8 f8   f8   a8   e8   e4 f4.   a8 \break

      \time 6/4   g8   d8   e8   f8   e8 ( [ f8 ) ]   g2   g8   g8 \time 3/4 e'4. d8 c8 b8 \time 4/4 d2 c2 \bar "|." \break

    }

    \addlyrics {

      Аз сме -- я да ка -- жа, че слън
      -- це -- то е свет -- ло. Аз сме
      -- я да ка -- жа, че слън -- це --
      то е свет -- ло. То -- ва не
      мо -- же да се от -- ка -- же. При
      не --   го всич  --
      ко се то -- пи, при не -- го
      всич -- ко тъй ра -- сте, при не --
      го всич -- ко все цъф -- ти, при
      не -- го всич -- ко зре -- е. При
      не -- го всич -- ко ста -- ва, за --
      вив -- ки -- те си сви -- ва и
      на ра -- бо -- та о -- ти -- ва.


    }

    \header {
      title = \titleFunc #'ref_desc_1 "Аз смея да кажа" "Az smeja da kaža"
    }

    \midi{}

  } % score


} % bookpart
