\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

    \label #'ref067_2
    \tocItem \markup "Мирът иде вече"
    \include "include/bookpart-paper.ily"
    \score {
      \include "include/score-layout.ily"

      \new Voice \relative c' {
        \clef treble
        \key g \minor
        \time 4/4
        \tempoFunc "Andante" 4 "69"
        \autoBeamOff
        \repeat volta 2 {
          g8 a bes c d4 d4 | g8 f es d c4 c | \break

          f8 es d c bes 4 bes 4 | es8 d c bes d4 d4 |\break

          g,8 a bes a g4 g4 | g8 a bes c d4 d4 | \break

          g8 f es d c4 c | f8 es d c bes 4 bes 4 | \break

          es8 d c bes d4 d4 | g,8 a bes a g4 g4 | \break


        }
      }

      \addlyrics {
        „Ми -- рът и -- де ве -- че, ми -- рът и -- де ве -- че, ми -- рът и -- де ве -- че, ми -- рът и -- де ве -- че!“,
        тъй наш Гос -- под ре -- че.
        Tъй наш Гос -- под ре -- че: „Ми -- рът дой -- де ве -- че, ми -- рът дой -- де ве -- че, ми -- рът дой -- де ве -- че!“,
        тъй наш Гос -- под ре -- че.
      }

      \header {
        title = \titleFunc #'ref_desc_13 "Мирът иде вече" "Mirat ide veche"
      }

      \midi{}

    } % score

  } % bookpart

  % Più mosso
  %
