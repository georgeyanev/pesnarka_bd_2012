\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref073
  \tocItem \markup "Сладко медено – Sladko medeno"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Allergetto" 4 "104"
      \autoBeamOff


      d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2  \bar ":|.:"   \break |

      a'8 a' a'4 | b'8 b' b'4 | d''8 c'' b' a' | \tempo "                 Fine" g'2  \bar ":|.:"  \break |



      d''4 g'' | fis''4 e'' | e''4 fis''8 e'' | d''2 \break |

      b'4 d'' | c''4 b' | a'4 b'8 a' | g'2
      \bar ":|."
    }

    \addlyrics {
      Слад -- ко,
      ме -- де -- но, слад -- ко, ме -- де -- но, ме --
      де -- но, ме -- де -- но, слад -- ко, ме -- де --
      но. От Слън -- це -- то из -- пра -- те -- но,
      от пче -- ли -- те до -- не -- се -- но.
    }

    \header {
      title = \titleFunc "Сладко медено" "Sladko medeno"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C. al Fine" "con ripetizioni"

  \markup \empty-two

  % include foreign translation(s) of the song
  

} % bookpart
