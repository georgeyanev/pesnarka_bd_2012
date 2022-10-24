\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      e''2d''16 [c''16b'16.
      a'32 ] | % 76
      a'8. [  g'16 ]  g'2 | % 77
      f'2  f'8 [  g'16  a'16 ] | % 78
      g'8 [  f'8 ]  e'2 \break | % 79
      a'2b'16 [c''16d''16
      e''16 ] |
      f''8 [g''16f''16 ]e''2 | % 81
      a''2g''16 [f''16e''16
      g''16 ] | % 82
      f''8. [e''16 ]e''2| % 83
      d''2d''4 | % 84
      d''8 [e''8 ]d''16 [c''8
      b'16 ]b'4 | % 85
      a'2  a'4 | % 86
      a'8 [  b'8 ]c''8 [c''16
      d''16 ]c''8. [b'16 ] \break | % 87
      b'4.  a'8  a'4 ( | % 88
      a'4 )  g'2 | % 89
      f'2  f'4 |
      f'8 [  a'8 ]  g'4  f'4 | % 91
      e'2. \bar "|."
      \break | % 92

    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "9" ""
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  % \include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
