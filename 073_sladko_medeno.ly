\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Allergetto" "4" "104"
      \autoBeamOff


      \repeat volta 2 {d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2 }   \break |

      \repeat volta 2 {  a'8 a' a'4 | b'8 b' b'4 | d''8 c'' b' a' | \tempo "                 Fine" g'2 }  \break |


      \repeat volta 2 {
        d''4 g'' | fis''4 e'' | e''4 fis''8 e'' | d''2 \break |

        b'4 d'' | c''4 b' | a'4 b'8 a' | g'2
      }
    }

    \addlyrics {
      Слад -- ко,
      ме -- де -- но, слад -- ко, ме -- де -- но, ме --
      де -- но, ме -- де -- но, слад -- ко, ме -- де --
      но. От Слън -- це -- то из -- пра -- те -- но,
      от пче -- ли -- те до -- не -- се -- но.
    }

    \addlyrics {
      Slad -- ko, me -- de -- no, slad -- ko, me --
      de -- no, me -- de -- no, me -- de -- no, slad -- ko, me --
      de -- no. Ot Slan -- tse -- to iz -- pra -- te -- no, ot pche --
      li -- te do -- ne -- se -- no.
    }
    \header {
      title = \titleFunc "Сладко медено" "Sladko medeno"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C. al Fine" "con ripetizioni"
  \markup \empty-two
  % include foreign translation(s) of the song
  \include "lyrics_de/073_sladko_medeno_lyrics_de.ly"

} % bookpart
