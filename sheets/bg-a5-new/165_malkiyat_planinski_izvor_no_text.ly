\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref165
  \tocItem \markup "Малкият планински извор"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative  c'{
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Tempo di valzer" 2. "56"

      g'4. g8 g4 | % 2
      a2 e4 | % 3
      g2 f8 e8 | % 4
      f2. | % 5
      b2 a8  b8 | % 6
      c4. b8 b4 | \break % 7
      b2 a8  b8 | % 8
      g2. | % 9
      g4. g8 g4 |
      e'4.  d8  c4 | \break % 11
      c4.  b8  b4 | % 12
      a2.  | % 13
      g2 a8 g8 | % 14
      e2 f4 | % 15
      e2 d8 e8 | \break % 16
      c2. \repeat volta 2 {
        | % 17
        c'2  c4 | % 18
        b2 f4  | % 19
        a2.  |
        g2. | % 21
        e2 e4 | \break % 22
        d2 d4
      }
      \alternative {
        {
          | % 23
          c2. | % 24
          c2.
        }
        {
          | % 25
          c2. | % 26
          c2 g'4
        }
      }
      a2 g4 \break | % 28
      f2 e8 f8 | % 29
      g2 f4 |
      e2  c'4 | % 31
      a2  b4 | % 32
      c2 a4 | \break % 33
      g2.  | % 34
      g2   c4

      | % 35
      d2  c4 | % 36
      b2 a8 b8 | % 37
      c2. | \break  % 38
      g2. | % 39
      a4 g4 e4 |
      d2 d4

      | % 41
      c2. ( | % 42
      c2 )
      \bar "|."
    }

    \addlyrics {


    }

    \header {
      title = \titleFunc #'ref_desc_15 "Малкият планински извор" "Malkijat planinski izvor"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repitione"



} % bookpart

% Più mosso
%
