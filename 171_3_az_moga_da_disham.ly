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
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 4
      g4 \repeat volta 2 {
        |
        c'4 c'8. d'16 | % 3
        e'4 c'4 | % 4
        g'4 e'8. f'16 | % 5
        \time 3/4  g'2 a'4 |  \break
        \time 2/4  g'4 e'8. f'16 | % 7
        e'4 c'4 | % 8
        d'4 e'8. d'16 | % 9
        \time 3/4
      }
      \alternative {
        {
          c'2 g4 |

        }
        {c'2 \bar "|."  }
      }
    }

    \addlyrics {
      Аз мо -- га
      да ди -- шам ве -- че до -- бре, аз мо -- га
      да ди -- шам ве -- че до -- бре. \skip4 бре.}
      \addlyrics {
        Az mo -- ga
        da di -- sham ve -- che do -- bre, az mo -- ga
        da di -- sham ve -- che do -- bre. \skip4 bre.}

        \header {
          title = \titleFunc "Аз мога да дишам " "Az moga da disham"
        }

        \midi{}

      } % score


    

      % include foreign translation(s) of the song
      \include "lyrics_de/171_3_az_moga_da_disham_dobre_lyrics_de.ly"

    } % bookpart