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
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
       c'4  g4 |
      c'4  e'8. [  f'16 ] | % 41
      g'2 | % 42
      a'4  g'4 | % 43
      f'4  e'8. [  f'16 ] | % 44
      g'2 \break | % 45
      a'4  g'4 | % 46
      g'4  a'8. [  b'16 ] | % 47
      c''2 | % 48
      c''4  c''4 | % 49
      c''4  c''8. [  c''16 ] |


    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "5" ""
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  % \include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
