\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
       bes'2  a'4 | % 24
      g'2  d''4 | % 25
      g''2  es''4 | % 26
      d''2. | % 27
      bes''4  a''4  g''8 [  d''8 ] | % 28
      bes'8 [  a'8 ]  g'8 [  d'8 ]
      bes4 | % 29
      a4  g2 ^\fermata \bar "|."
      \break |
    
    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "3" ""
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  % \include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
