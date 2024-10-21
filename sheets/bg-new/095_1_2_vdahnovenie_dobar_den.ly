\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref095
  \tocItem \markup "Вдъхновение"
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
      title = \titleFunc #'ref_desc_6 "Вдъхновение" "Vdahnovenie"
    }

    \midi{}

  } % score



  \label #'ref095_2
  \tocItem \markup "Добър ден"
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

    \header {
      title = \titleFunc #'ref_desc_8 "Добър ден" "Dobăr den"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

} % bookpart
