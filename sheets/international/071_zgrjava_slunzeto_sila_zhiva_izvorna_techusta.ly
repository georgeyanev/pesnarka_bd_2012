\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref071_1
  \tocItem \markup "Изгрява слънцето – Izgrjava slănceto"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andantino" 4 "69"
      \partial 4
      \autoBeamOff
        b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break |

        g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4^\markup { \concat {"              (" \fermata ")"}} |  g'2
        \break \bar ":|."
      
    }

    \addlyrics {
      Из -- гря --
      ва Слън -- це -- то, пра -- ща Свет -- ли -- на,
      но -- си Ра -- дост за Жи -- во -- та тя.
    }

     \addlyrics {
      Iz -- grja --
      va Slăn -- ce -- to, pra -- šta Svet -- li -- na,
      no -- si Ra -- dost za Ži -- vo -- ta tja.
    }
    \header {
      title = \titleFunc "Изгрява слънцето" "Izgrjava slănceto"
    }

    \midi{}

  } % score
  
  \markup \italic \dc-one-nobold "attacca „Сила жива, изворна/Sila živa, izvorna“"
  
  % include foreign translation(s) of the song
  \include "../../lyrics/de/071_1_izgryava_slunzeto_lyrics_de.ly"
    \markup \empty-one

      \label #'ref071_2
  \tocItem \markup "Сила жива, изворна – Sila živa, izvorna"

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
        {\time 3/4 b'4 g'2 \bar "|."}
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
      la ži -- va, iz -- vor -- na, te -- ču -- šta, si
      -- la ži -- va, iz -- vor -- na, te -- ču -- šta.
      ču -- šta. Zun me -- zun, zun me -- zun, bi --
      nom tu me -- to. Zun me -- me -- to.
    }
    \header {
      title = \titleFunc "Сила жива, изворна" "Sila živa, izvorna"
    }

    \midi{}

  } % score

  
  % include foreign translation(s) of the song
  \include "../../lyrics/de/071_2_sila_zhiva_izvorna_lyrics_de.ly"

} % bookpart
