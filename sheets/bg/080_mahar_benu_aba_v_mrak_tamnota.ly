\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref080
  \tocItem \markup "Махар Бену Аба"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 9.5)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \minor
      \time 3/4
      \tempoFunc "Adagio" 4 "56"

      \autoBeamOff

      \partial 4

      \repeat volta 2 {
        g4 | c2 d4 | es2 c 4 |  g2 g'4 | g2 c8 c8 | c2 b4 |\break  c2 as4 |


        g2 fis4 |g2 f?4 | es2 d4 |  es2 d4 | c2 b4 | c2 es4 | g2 f4 | \break

        es2 d4 | c2 d8 d | f2 es4 | d2 c4 | es2 d4 | \tempo "          Fine" c2
      }

    }

    \addlyrics {
      Ма -- хар Бе -- ну А -- ба, Ве -- ют
      Би -- ла -- дер А -- дер Бе -- ну ше -- ла,
      Бе -- ну ше -- ла, Бе -- ну ше -- ла,
      ше -- ла, ше -- ла, ше -- ла,
      Би -- ла -- дер А -- дер Бе -- ну ше -- ла.
    }

    \header {
      title = \titleFunc "Махар Бену Аба" "Mahar Benu Aba"
    }

    \midi{}

  } % score

  \markup \italic \dc-one-nobold "attacca „В мрак тъмнота“/„V mrak tămnota“"

  \label #'ref080_1
  \tocItem \markup "В мрак тъмнота"


  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 3/4
      \tempoFunc "Andante" 4 "66"

      \partial 4

      g4  | c'2 \autoBeamOff b8 c' | \autoBeamOn d'2 g4 | es'2 d'4 |  c'2 ( d'16 c' b c'  | \break

      d'2 ) c'4 | c'2 f'4 |  \autoBeamOff f'2 es'8 d' | es'2 f'4 | g'2 as'4 |\break

      g'2 fis'4 | g'2 as'4 | g'2 f'4 |   \repeat volta 2 {
        f'2 es'8 d' |  es'2 f'4 | \break

        g'2 as'4 | g'2 f'4 | es'2 d'4
      }  \alternative { { c'2 f'4 } {  c'2. } } \bar "||"  \break  |

      c'2 d'4 |  es'2. |  d'2 c'4 | c'2. | b2 b4 | c'2  \bar "|."
    }

    \addlyrics {
      Във мрак, тъм
      -- но -- та е бил жи -- во -- тът наш, но Слън
      -- це -- то на Жи -- во -- та про -- си -- я у
      нас и ний "тръг-" -- нах -- ме във пъ -- тя чист
      и свят за нас, и нас. Свят за нас, свят за
      нас, свят за нас.
    }

    \header {
      title = \titleFunc "В мрак тъмнота" "V mrak tămnota"
    }

    \midi{}

  }

  \markup \dc-two "D.C. al Fine „Mahar Benu Aba“" "senza ripetizione"


} % bookpart
