\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref070
  \tocItem \markup "Фир-фюр-фен – Благославай"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Adagio" 4 "54"
      \partial 4
      \autoBeamOff

      d'8. d'16 | g'2 a'8. bes'16 |  g'4 d'2 | \time 4/4  a'8. bes'16 c''4 bes'2 | \break

      a'8. bes'16 g'4 g'2 | \time 3/4  d''8. d''16 d''2 | \time 4/4  es''8. d''16 d''4 c''2 \break

      \time 3/4  c''8. c''16 c''2 | \time 4/4  d''8. c''16 bes'4 bes'2 | \time 3/4  a'8. a'16 a'2 \break |

      \time 4/4  bes'8. a'16 g'4 g'2^\markup \bold "        Fine"
      | \bar ":|.|:" d'4 g'4 bes'4 a'4 |  \time 3/4  g'4 fis'8. fis'16 g'4 \break |

      es'8. es'16 d'2 | \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 \break |

      a'4 \fermata g'2 | \bar ":|.|:" \time 5/4
      d''4 cis''4 es''4 d''2 | d''4 cis''4 es''4 d''2 \break |

      \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 | \time 4/4  a'4 \fermata g'2 s4
      | \bar ":|."
    }

    \addlyrics {
      Фир -- фюр --
      фен Тао Би Ау -- мен, Тао Би Ау -- мен, Тао Би
      Ау -- мен. Фир -- фюр -- "-фен" Тао Би Ау -- мен.
      Фир -- фюр -- "-фен" Тао Би Ау -- мен, Фир -- фюр --
      "-фен" Тао Би Ау -- мен. Бла -- го -- сла -- вяй,
      ду -- ше мо -- я, Гос -- по -- да; бла -- го --
      сла -- вяй и не заб -- ра -- вяй. Бла -- го --
      сла -- вяй, бла -- го -- сла -- вяй, бла -- го --
      сла -- вяй и не заб -- ра -- вяй.}

      \header {
        title = \titleFunc "Фир-фюр-фен – Благославай" "Fir-fjur-fen – Blagoslavaj"
      }

      \midi{}

    } % score

    \markup \dc-two "D.C. al Fine" "senza ripetizioni"

  } % bookpart
