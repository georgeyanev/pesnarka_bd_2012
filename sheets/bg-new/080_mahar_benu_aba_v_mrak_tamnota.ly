\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref080
  \tocItem \markup "Махар Бену Аба"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 14.5)
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
      title = \titleFunc #'ref_desc_10 "Махар Бену Аба" "Mahar Benu Aba"
    }

    \midi{}

  } % score

  \markup \huge \italic \dc-one-nobold "attacca „В мрак, тъмнота“"

  \label #'ref080_1
  \tocItem \markup "В мрак, тъмнота"


  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 3/8
      \tempoFunc "Andante" 4 "66"

      \partial 8

      g8  | c'4 \autoBeamOff b16 c' | \autoBeamOn d'4 g8 | es'4 d'8 |  c'4 ( d'32 c' b c'  | \break

      d'4 ) c'8 | c'4 f'8 |  \autoBeamOff f'4 es'16 d' | es'4 f'8 | g'4 as'8 |\break

      g'4 fis'8 | g'4 as'8 | g'4 f'8 |   \repeat volta 2 {
        f'4 es'16 d' |  es'4 f'8 | \break

        g'4 as'8 | g'4 f'8 | es'4 d'8
      }  \alternative { { c'4 f'8 } {  c'4. } } \bar "||"  \break  |

      c'4 d'8 |  es'4. |  d'4 c'8 | c'4. | b4 b8 | c'4  \bar "|."
    }

    \addlyrics {
      Във мрак, тъм
      -- но -- та е бил жи -- во -- тът наш, но Слън
      -- це -- то на жи -- во -- та про -- си -- я у
      нас и ний "тръг-" -- нах -- ме във пъ -- тя чист
      и свят за нас, и нас. Свят за нас, свят за
      нас, свят за нас.
    }

    \header {
      title = \titleFunc #'ref_desc_6 "В мрак, тъмнота" "V mrak, tămnota"
    }

    \midi{}

  }

  \markup \dc-two "D.C. al Fine „ Махар Бену Аба“" "senza ripetizione"


} % bookpart
