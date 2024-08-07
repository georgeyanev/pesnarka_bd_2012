\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref055_2
  \tocItem \markup "Ти си проявената Любов – Ti si projavenata Ljubov"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key e \minor
      \time 4/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff
      b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |
      fis'2 fis'4 |

      a'4 g' fis' \break |

      e'2 c''4 |

      \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8   |
      \time 3/4  fis'8. a'16 g'4 fis' \break|  e'2 c''4   |

      \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
    }

    \addlyrics {
      Ти Си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по --
      ди. Ду -- ша -- та ми коп -- ней за Твой -- та чис -- то --
      та. Ду -- ша -- та ми коп -- ней за Твой -- та свет -- ли -- на.
    }
    \addlyrics {
      Ti Si pro -- ja -- ve -- na -- ta Lju -- bov kăm men, Gos -- po --
      di. Du -- ša -- ta mi kop -- nej za Tvoj -- ta čis -- to --
      ta. Du -- ša -- ta mi kop -- nej za Tvoj -- ta svet -- li -- na.
    }

    \header {
      title = \titleFunc " Ти си проявената Любов" "Ti si projavenata Ljubov"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-one "D.C."



  % include foreign translation(s) of the song
  \include "../../lyrics/de/055_2_ti_si_proyavenata_lyubov_lyrics_de.ly"

  \markup \empty-three

  \label #'ref053
  \tocItem \markup "Слава Божия – Slava Božija"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key b \minor
      \time 4/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff

      d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \tupletUp \tuplet 3/2 {  d''8 cis'' b'8 } ais'2 | \break
      \times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 [( d'' e'' d'' cis'' b' )] ais'4 | b'8 [( cis'' )] b'2. \bar "|."
    }

    \addlyrics {
      Не на ме -- не, не на ме -- не, но на И -- ме -- то Си
      дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!
    }

    \addlyrics {
      Ne na me -- ne, ne na me -- ne, no na I -- me -- to Si
      daj, Bo -- že, sla -- va, sla -- va, sla -- va!
    }
    \header {
      title = \titleFunc "Слава Божия" "Slava Božija"
    }

    \midi{}

  } % score
  \markup \vspace #1
  % include foreign translation(s) of the song
  \include "../../lyrics/de/053_slava_Bozhiya_lyrics_de.ly"



} % bookpart
