\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andandtinio" 4 "69"
      \partial 4
      \autoBeamOff

      \repeat volta 2 {
        b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break |

        g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4^\markup { \concat {"              (" \fermata ")"}} |  g'2
        \break
      }
    }

    \addlyrics {
      Из -- гря --
      ва Слън -- це -- то, пра -- ща Свет -- ли -- на,
      но -- си Ра -- дост за Жи -- во -- та тя.
    }

    \addlyrics {
      Iz -- grya --
      va Slan -- tse -- to, pra -- shta Svet -- li -- na,
      no -- si Ra -- dost za Zhi -- vo -- ta tya.
    }
    \header {
      title = \titleFunc "Изгрява слънцето" "Izgryava slantzeto"
    }

    \midi{}

  } % score
  
  \markup \italic \dc-one-nobold "attacca „Сила жива, изворна/Sila zhiva, izvorna“"
  
  % include foreign translation(s) of the song
  \include "lyrics_de/071_1_izgryava_slunzeto_lyrics_de.ly"
    \markup \empty-one

   \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
     \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "84"
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

  
  % include foreign translation(s) of the song
  \include "lyrics_de/071_2_sila_zhiva_izvorna_lyrics_de.ly"

} % bookpart