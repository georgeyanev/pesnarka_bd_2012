\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "84"
      \once \omit TupletBracket
      \partial 4
      \times 2/3  {
        c'8 [  e'8  g'8 ]
      } | % 31
      c''8. [  b'16 ]  b'8. [  a'16 ]
      a'8. [  g'16 ] | % 32
      g'2 \once \omit TupletBracket
      \times 2/3  {
        g'8 [  a'8  b'8 ]
      }
      | % 33
      d''8. [  c''16 ]  c''8. [  b'16
      ]  b'8. [  a'16 ] \break | % 34
      a'8. [  g'16 ]  d'4 \once \omit TupletBracket
      \times 2/3  {
        e'8 [  f'8  a'8 ]
      }
      | % 35
      \time 4/4  | % 35
      g'8. [  f'16 ]  e'8 [  f'8 ]  g'2
      ( | % 36
      g'4. )  e'8  g'4 \once \omit TupletBracket
      \times 2/3  {
        f'8 [  e'8  d'8 ]
      }
      | % 37
      a4 \once \omit TupletBracket
      \times 2/3  {
        b8 [  c'8  e'8 ]
      }
      d'2 | % 38
      c'2 r4 s4 \bar "|."
      \break | % 39


    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "4" ""
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  % \include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
