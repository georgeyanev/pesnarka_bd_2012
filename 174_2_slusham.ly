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
      \time 5/4
      \tempoFunc "Moderato" 4 "80"
      \autoBeamOff
      \partial 4
      e''16 ( [  d''16  c''16  b'16 ] | % 2
      a'4 ) a'4 a'4 a'4  d''16 (
      [  c''16  b'16  a'16 ] | % 3
      g'4 ) g'4 g'4 g'4 c''16 ( [
      b'16 a'16 g'16 ] \break | % 4
      fis'4 ) fis'4 fis'4 fis'4 e'8
      ( [ fis'8 ] | % 5
      g'8 [ fis'8 ] e'8 [ dis'8 ] \stemUp
      e'8 [ fis'8 ) ] e'4 ^\fermata  \bar "|."
    }

    \addlyrics {
      Слу --    шам -- шам --
      шам, слу --    шам --
      шам -- шам, слу --
      шам -- шам -- шам, слу --
      шам.}
      \addlyrics {
        Slu --    sham -- sham --
        sham, slu --    sham --
        sham -- sham, slu --
        sham -- sham -- sham, slu --
        sham.}


        \header {
          title = \titleFunc "Слушам" "Slusham"
        }

        \midi{}

      } % score

      \markup \dc-one "D.C."

      \markup \empty-two

      % include foreign translation(s) of the song
      \include "lyrics_de/174_2_sluscham_lyrics_de.ly"

    } % bookpart
