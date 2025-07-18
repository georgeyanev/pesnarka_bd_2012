\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref078
  \tocItem \markup "Грее, грее"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 5/4
      \tempoFunc "Andantino" 4 "69"
      

      \autoBeamOff
      b8 d b8 d b8 d  \bar "!" g fis e c | c e c e c e   \bar "!"  \break

      fis8 e d b | b d b d b d \bar "!"  e d a b | \break

      c e c e c e  \bar "!"  fis8 e8 d8 b8 | b8 d8 b8 d8 b d  \bar "!"  \break

      e8 d a b | c e c e c e \bar "!"  fis e d b  \bar "!"  \break

      b d b d b d  \bar "!" b d b \tempo "   Fine"  d \fermata  \bar "||" | \time 4/4 b'b b b c b b a   \bar "!"  \break

      a8 g g fis fis e e d | \time 3/4 c' b b a a g | g 4 g2 | \break

      \time 4/4 d'8 e, e e c' e, e e | a g g fis fis e e d | \break

      \time 3/4 b' b d c b a |\tempo "rit."  a4 g2 \fermata | \bar "|."


    }

    \addlyrics {
      Гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е свет -- ли -- на -- та,

      гре -- е, гре -- е, гре -- е гре -- е гре -- е.

      На тре --  ви -- те, на во -- ди -- те,

      на цве -- тя -- та, на де -- ца -- та

      ра -- дост но -- си за сър -- ца -- та.

      На тре -- ви -- те, на во -- ди -- те,

      на цве -- тя -- та, на де -- ца -- та

      ра -- дост но -- си за сър -- ца -- та.}

      \header {
        title = \titleFunc #'ref_desc_7 "Грее, грее" "Gree, gree"
      }

      \midi{}

    } % score

    \markup \dc-one "D.C. al Fine"

  } % bookpart
