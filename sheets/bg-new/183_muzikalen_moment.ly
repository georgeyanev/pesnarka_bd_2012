\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
     \label #'ref183
  \tocItem \markup "Музикален момент"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

     \new Voice \absolute {
      \clef treble
       \key g \major
      \time 4/4
      \tempo "Andantino"
       g''2 fis''16 [g''16 a''16 g''16 ] fis''16 [e''16 d''16cis''16 ]  |
      d''4e''8. [d''16 ] d''2
      \break | % 94
      e''2 d''16 [c''16 b'16
      a'16 ] b'16 [c''16 d''16
      c''16 ] | % 95
      \once \omit TupletBracket
      \times 2/3  {
        b'8 [  a'8  b'8 ]
      }
      a'8. [  g'16 ]  g'2 \break | % 96
      e''2 d''16 [e''16 d''16
      e''16 ] d''16 [c''16 b'16
      a'16 ] | % 97
      a'8. [  g'16 ]  g'2. \break | % 98
      g16 [  a16  b16  c'16 ]  d'8. [
      e'16 ]  e'2 | % 99
      \once \omit TupletBracket
      \times 4/5  {
        d'16 [  e'16  d'16  c'16  b16
        ]
      }
      d'2. \break |
      \once \omit TupletBracket
      \times 4/6  {
        c'16 [  d'16  c'16  d'16  c'16
        b16 ]
      }
      a2. | % 101
      \once \omit TupletBracket
      \times 2/3  {
        b8 [  c'8  d'8 ]
      }
      e'8. [  e'16 ]  g'2 \break | % 102
      d'16 [  c'16  b16  a16 ]  b16 [
      c'16  d'16  e'16 ] \once \omit TupletBracket
      \times 2/3  {
        fis'8 [  g'8  a'8 ]
      }
      b'4 ( | % 103
      b'4 ) \once \omit TupletBracket
      \times 4/5  {
        a'16 [  b'16  a'16  g'16
        fis'16 ]
      }
      a'4  g'4 \break | % 104
      g16 [  a16  b16  c'16 ] \once \omit
      TupletBracket
      \times 4/5  {
        d'16 [  e'16  d'16  c'16  b16
        ]
      }
      a4.  g8 | % 105
      g1 \bar "|."
    }

    \addlyrics {}

    \header {
      title = \titleFunc "Музикален момент" "Zaglavie"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  

} % bookpart

% Più mosso
%
