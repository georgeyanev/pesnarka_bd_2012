\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref095
  \tocItem \markup "Вдъхновение – Vdăhnovenie"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 6/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
      \repeat volta 3 {
        g4 c' e' c' g2 | g4 c' e' c' g2 | \time 4/4  e'4 g' c''2 \break |

        b'4 ( a' ) g'2 | \time 6/4
      } \alternative {
        { a'4 f' a' g' e'2 | g'4 e' f' d' c'2 | \break }
        {
          \once \override Score.TimeSignature.break-visibility = ##(#f #f #t)
          \time 6/4 a'4 ( f' a' g' ) e'2 |  g'4 e'8 e' f'4 d' c'2
        }
      }
      \bar "|."
    }

    \addlyrics {
      Вдъх -- но -- ве -- ни -- е,
      вдъх -- но -- ве -- ни -- е,
      вдъх -- но -- ве -- ни -- е, вдъх -- но -- ве -- ни -- е,
      вдъх -- но -- ве -- ни -- е, ти __ си бла -- го --
      сло -- ве -- ни -- е.

    }
    
    \header {
      title = \titleFunc "Вдъхновение" "Vdahnovenie"
    }

    \midi{}

  } % score

  
  

  % include foreign translation(s) of the song
  

} % bookpart
