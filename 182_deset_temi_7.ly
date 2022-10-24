\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \major
      \time 2/4
      \tempoFunc "L’istesso tempo" 4 "72"
      \autoBeamOff
      a'4  e'4 | % 56
      cis'4.  d'8
      e'8   e'8   fis'8  gis'8 | % 58
      a'2 \bar "|."
      \break | % 59

    }

    \addlyrics {
      Аз ще па -- зя то -- пли -- на -- та.}
      \addlyrics {Аz ste -- pa -- zya to -- pli -- na -- ta. }

      \header {
        title = \titleFunc "7" ""
      }

      \midi{}

    } % score



    % include foreign translation(s) of the song
    % \include "lyrics_de/000_empty_template_lyrics_de.ly"

  } % bookpart

  % Più mosso
  %
