\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \minor
      \time 5/4
      \tempoFunc "Andante" 4 "80"
      c'4 es'4 d'4 c'2 | \time 7/4 c'4 es'4 d'4 c'4 b4 c'2 |  \break
      \time 6/4 g'4 c''4 bes'4 as'4 g'4 f'4 |  es'2 d'4 c'2 c'8 ( d'8 ) | \break
      \repeat volta 2 {
        es'4 d'4 c'4 c'2 f'8 ( g'8 ) | as'4 g'4 f'4 es'2  g'8 ( c''8 ) | \time 4/4 \break
        c''4 bes'4 as'4 g'4
      } \alternative {
        { \time 6/4 f'4 es'4 d'4 c'2 c'8 ( d'8 ) }
        {
          f'4 \override Staff.BarLine.stencil = ##f es'4 d'4 c'2.
          \revert Staff.BarLine.stencil
          \bar "|."
        }
      }
    }

    \addlyrics {
      Те -- бе по -- ем, Те -- бе бла -- го -- да -- рим.
      Те -- бе бла -- го -- сло -- вим, Бо -- же наш.  И
      мо -- лим Ти ся, и  мо -- лим Ти ся,  и
      мо -- лим Ти ся, o, Бо -- же наш. И o, Бо -- же наш.
    }

    \addlyrics {
      Te -- be po -- em, Te -- be bla -- go -- da -- rim.
      Te -- be bla -- go -- slo -- vim, Bo -- zhe nash.  I
      mo -- lim Ti sya, i  mo -- lim Ti sya,  i
      mo -- lim Ti sya, o, Bo -- zhe nash. I o, Bo -- zhe nash.
    }
    \header {
      title = \titleFunc "Тебе поем" "Tebe poem"
    }

    \midi{}

  } % score


  

  % include foreign translation(s) of the song
  \include "lyrics_de/066_2_tebe_poem_lyrics_de.ly"

} % bookpart
