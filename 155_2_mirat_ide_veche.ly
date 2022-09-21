\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Andante" "4" "69"
      \autoBeamOff
      \repeat volta 2 {
        g8 a bes c d4 d4 | g8 f es d c4 c |  \break

        f8 es d c bes 4 bes 4 | g8 a bes a g4 g4 | \break

        g8 a bes c d4 d4 | g8 f es d c4 c |  \break

        f8 es d c bes 4 bes 4 |  g8 a bes a g4 g4 |
      }


    }

    \addlyrics {
      Ми -- рът и -- де ве -- че, Ми -- рът и -- де ве -- че, Ми -- рът и -- де ве -- че!-
      тъй наш Гос -- под ре -- че.
      Tъй наш Гос -- под ре -- че: Ми -- рът и -- де ве -- че, Ми -- рът и -- де ве -- че!-
      тъй наш Гос -- под ре -- че.
    }
    \addlyrics {}

    \header {
      title = \titleFunc "Мирът иде вече" "Mirat ide veche"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/155_2_mirat_ide_veche.ly"

} % bookpart

% Più mosso
%
