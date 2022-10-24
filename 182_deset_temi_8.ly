\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      g''4.fis''16 [g''16 ] |
      a''16 [bes''16a''16g''16
      ]fis''16 [es''16d''16c''16
      ] | % 61
      bes'16 [a'16c''16bes'16 ]
      a'16 [  g'16  fis'16  g'16 ] \break | % 62
      a'16 [  g'16  fis'16  es'16 ]
      d'16 [  c'16  bes16  a16 ] | % 63
      \time 3/4  | % 63
      c'16 [  bes16  a16  g16 ]  d'2
      \break | % 64
      d'4  g'4.  a'8 | % 65
      bes'8 [c''8 ]d''8es''4
      d''8 | % 66
      \time 2/4  | % 66
      d''4.d''8 \break | % 67
      g''4.f''8 | % 68
      es''8 [d''8 ]c''8 [d''8 ]
      | % 69
      bes'4.bes'8 |
      \time 3/4  |
      a'8 [  bes'8 ]c''8 [d''8 ]
      es''8. [d''16 ] \break | % 71
      d''2  d'4 | % 72
      g'4.  a'8  bes'8 [  a'8 ] | % 73
      bes'8 [  a'8 ]  g'8 [  fis'8 ]
      a'8. [  g'16 ] | % 74
      g'2. \bar "|."
      \break | % 75

    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "8" ""
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  % \include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
