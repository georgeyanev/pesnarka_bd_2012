\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \repeat volta 2 {
        d''16 [  d''16  d''8 ]  d''16
        [  d''16  d''8 ] | % 2
        g''8 [  d''8 ]  g''8 [  d''8
        ] | % 3
        b'16 [  b'16  b'8 ]  b'16 [
        b'16  b'8 ] | % 4
        d''8 [  a'8 ]  a'8 [  b'8 ] | % 5
        g'2
      }
      \break \repeat volta 2 {
        | % 6
        d'16 [  d'16  d'8 ]  d'16 [
        d'16  d'8 ] | % 7
        g'8 [  d'8 ]  g'8 [  d'8 ] | % 8
        b16 [  b16  b8 ]  b16 [  b16
        b8 ] | % 9
        d'8 [  a8 ]  d'8 [  a8 ] |
        g2
      }
      \break | % 11

    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "Десет теми" "Deset temi"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
