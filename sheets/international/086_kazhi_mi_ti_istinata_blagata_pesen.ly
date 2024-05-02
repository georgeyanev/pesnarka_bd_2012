\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref086_1
  \tocItem \markup "Кажи ми Ти Истината – Kaži mi Ti Istinata"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      d'8 b'4. a'8 g'4  fis'8. e'16 e'4 d'4. \bar"!" \break

      d'8 e'8 fis' g' a'  b' d'' (d''4) c''4.  b'8 a' g' b'4\tempo "rit." a' g'4. \bar ":|."

    }

    \addlyrics {
      Ка -- жи ми
      Ти Ис -- ти -- на -- та, ко -- я -- то но -- си
      сво -- бо -- да за мо -- я -- та ду -- ша. Ка --
      та ду -- ша.
    }

    \addlyrics {
      Ka -- ži mi
      Ti Is -- ti -- na -- ta, ko -- ja -- to no -- si
      svo -- bo -- da za mo -- ja -- ta du -- ša. Ka --
      ta du -- ša.
    }

    \header {
      title = \titleFunc "Кажи ми Ти Истината "" Kaži mi Ti Istinata"
    }

    \midi{}

  } % score


  \markup \empty-two

  % include foreign translation(s) of the song
  \include "../../lyrics/de/086_1_kazhi_mi_ti_istinata_lyrics_de.ly"

  \markup \empty-three

  \label #'ref086_2
  \tocItem \markup "Благата песен – Blagata pesen"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72"

      \partial 4
      \autoBeamOff
      b8. c'16 | d'4 g' fis'8. e'16 | \time 2/4  e'4. e'8 | \time 3/4  e'4 c' e'8. e'16  |

      d'2 b'8. b'16 | \break c''4 b' b'8. a'16 | a'4 g'2  |

      \time 4/4  b'8. b'16 c''8. c''16 b'2 | d''4 c'' b' a' | a'2 g' \break |

      \bar ".|:-|"  \time 6/4  fis'4 fis' fis'2 e' | e'4 e' e'2 d' |  \time 4/4  b'4 b' c'' a' | a'2 g' \bar ":|."
    }

    \addlyrics {
      Ти съз -- на -- вай, ти лю -- би,
      без -- спир -- но сей, гра -- ди и в~жи -- во --
      та всич -- ко да -- вай. Та -- зи Ис -- "ти-" --
      на, Бо -- га, ти по -- зна -- вай. Ти по -- зна
      -- вай, ти по -- зна -- вай, Бо -- га ти по --
      зна -- вай.
    }

    \addlyrics {
      Ti săz -- na -- vaj, ti lju -- bi,
      bez -- spir -- no sej, gra -- di i v~ži -- vo --
      ta vsič -- ko da -- vaj. Ta -- zi Is -- ti --
      na, Bo -- ga, ti po -- zna -- vaj. Ti po -- zna
      -- vaj, ti po -- zna -- vaj, Bo -- ga ti po --
      zna -- vaj.
    }

    \header {
      title = \titleFunc "Благата песен "" Blagata pesen"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-two "D.C. al Fine „Кажи ми Ти Истината“/„Kaži mi Ti Istinata“" "senza ripetizione"

  \markup \empty-two


  % include foreign translation(s) of the song
  \include "../../lyrics/de/086_02_Blagata_pesen_lyrics_de.ly"

} % bookpart
