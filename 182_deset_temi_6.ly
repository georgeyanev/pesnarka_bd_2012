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
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff
      a4. b8|
      c'8  c'8  b8  a8
      f'2 | % 54
      e'2 \bar "|."
      \break | % 55
    }

    \addlyrics {
      Аз ще па -- зя то -- пли -- на -- та.}
      \addlyrics {Аz ste -- pa -- zya to -- pli -- na -- ta. }
      \header {
        title = \titleFunc "6" ""
      }

      \midi{}

    } % score



    % include foreign translation(s) of the song
    % \include "lyrics_de/000_empty_template_lyrics_de.ly"

  } % bookpart

  % Più mosso
  %
