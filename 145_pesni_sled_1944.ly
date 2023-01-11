\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 4/4
      \tempoFunc "Moderato" 4 "69"
      \autoBeamOff
      %c % notes here
    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "" ""
    }

    \midi{}

  } % score
 
 \markup\fontsize  #+8.5  {\bold {  \hspace #10  \vspace #13.5 LIEDER NACH 1944} }

  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%