\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref095_2
  \tocItem \markup "Добър ден – Dobăr den"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 5/4
      \tempoFunc "Moderato" 4 "88"

      a4 c' e'2 c'4 | \time 4/4  e'4 ( d' ) c'  d'  | e'2. r4 \break |

      g'4 e' a' f' | g'4 d' e'2 \fermata | a'4 a' c''4. b'8 | b'2 a' \break |

      g'4 g' f' f' |  f'2 e' | \time 2/2 a'4. a'8 c''4-- b'-- | b'4-- a'-- a'-- a'-- \break |

      g'4-- f'-- e'-- d'-- | d'2 c' |  \time 6/4  b4. c'8 d'4 ( e' f' ) e' \break |

      \time 4/4  g'4 e' a' g' | f'4 e' d' c' | c'2 ( b ) | a2. r4 \break |

      \bar "|."
    }

    \addlyrics {
      До -- бър
      ден е свет -- ли -- ят ден. Ху -- бав и кра --
      сив е той! Всич -- ко о -- за -- ря -- ва, всич
      -- ко о -- жи -- вя -- ва и в~жи -- во -- та Бо
      -- жи -- е -- то бла -- го той раз -- да -- ва,
      и в~жи -- во -- та Бо -- жи -- е -- то бла -- го
      той раз -- да -- ва.

    }

    \addlyrics {
      Do -- băr
      den e svet -- li -- jat den. Hu -- bav i kra --
      siv e toj! Vsič -- ko o -- za -- rja -- va, vsič
      -- ko o -- ži -- vja -- va i v~ži -- vo -- ta Bo
      -- ži -- e -- to bla -- go toj raz -- da -- va,
      i v~ži -- vo -- ta Bo -- ži -- e -- to bla -- go
      toj raz -- da -- va.
    }


    \header {
      title = \titleFunc "Добър ден" "Dobăr den"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-one "D.C."


  % include foreign translation(s) of the song
  \include "../../lyrics/de/095_2_dobar_den_lyrics_de.ly"

} % bookpart
