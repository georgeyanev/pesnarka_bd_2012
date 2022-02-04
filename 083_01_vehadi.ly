\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Addagio, ad libitum" "4" "56"

      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines


      \repeat volta 2 {
        \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral a' \bar "!"  \breathe  d''4^\mp  e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2 \bar "!" \breathe \break |

        \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2
        \override BreathingSign.text = \markup {
          \musicglyph "scripts.caesura.straight"
        }
        \breathe
        a4^\pp \bar "!" \break |


        bes2 a2 a4 \bar "!"  bes2 a a4  \bar "!"  bes2 a r4
      } \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
    \addlyrics {
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di,
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di.}
      \header {
        title = \titleFunc "Вехади" "Vehadi"
      }

      \midi{}

    } % score
    \markup \empty-three


    % include foreign translation(s) of the song
    %\include "lyrics_de/082_bog_e_ljubov_lyrics_de.ly"

  } % bookpart
