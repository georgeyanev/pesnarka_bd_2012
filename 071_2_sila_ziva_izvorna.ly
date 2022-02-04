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
      \tempoFunc "Moderato" "4" "84"
      \autoBeamOff

      \repeat volta 2 {
        d'8 d' g' g' | a'8 a' b' b' | d''4 d'' | e''8 c'' c'' b' \break |

        d''8 c'' b' a' |
      } \alternative { { \time 3/4 a'4 g'2 |} { \time 4/4  a'4 g'2 d'8. e'16 | } } \repeat volta 2 {
        \time 3/4 d'2 d'8. e'16 \break |

        d'4. g'8 g'8. a'16 |
      }
      \alternative  {
        {\time 4/4 b'4 g'2 d'8. e'16 | }
        { b'4 g'2 \bar "|."}
      }
    }

    \addlyrics {
      Си --
      ла жи -- ва, из -- вор -- на, те -- чу -- ща, си
      -- ла жи -- ва, из -- вор -- на, те -- чу -- ща.
      чу -- ща. Зун ме -- зун, зун ме -- зун, би --
      ном ту ме -- то. Зун ме -- ме -- то.
    }
    \addlyrics {
      Si --
      la zhi -- va, iz -- vor -- na, te -- chu -- shta, si
      -- la zhi -- va, iz -- vor -- na, te -- chu -- shta.
      chu -- shta. Zun me -- zun, zun me -- zun, bi --
      nom tu me -- to. Zun me -- me -- to.
    }
    \header {
      title = \titleFunc "Сила жива, изворна" "Sila ziva, izvorna"
    }

    \midi{}

  } % score

  \markup \empty-three
  % include foreign translation(s) of the song
  \include "lyrics_de/071_2_sila_zhiva_izvorna_lyrics_de.ly"

} % bookpart
