\version "2.24.4"

\include "include/globals.ily"

\bookpart {
  \label #'ref124
  \tocItem \markup "Пролетна песен"
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
      \key es \major
      \time 3/4
      \tempoFunc "Andante" 4 "56"
      \autoBeamOff
      \partial 4
      \times 2/3 { es8 ( [  f8 ) ] g8 } | % 2
      bes4c2 | % 3
      bes4  g4
      \times 2/3  {
        es8 ( [  f8 ) ] g8
      }
      | % 4
      g2
      \times 2/3  {
        g8 ( [  bes8 ) ] c8
      }
      | % 5
      d2
      \tupletUp \times 2/3  {
        g,8   bes8  c8
      }
      \break
      | % 6
      d2
      \times 2/3  {
        g,8 bes8 d8
      }
      | % 7
      \time 4/4
      es2 d8 c8 bes8
      g8 | % 8
      \time 3/4  | % 8
      es2
      \times 2/3  {
        es8 ( [  f8 ) ] g8
      }
      | \time 3/4 % 9

      \break
      c4  as4  g8.  g16 |

      \time 2/4  |
      f4  g8. ( [  f16 ) ] | % 11
      es2 | % 12
      bes'4 es4  | % 13
      d4 d4 | % 14
      c4 bes8  g8 \break  | % 15
      \time 3/4  | % 15
      es2
      \times 2/3  {
        c8 ( [  d8 ) ] es8
      }
      | % 16
      \time 2/4  | % 16
      g4  f8.  f16 | % 17
      bes2 ^\fermata | % 18
      bes4 (es4 ) | % 19
      d4 d4 |
      c4  bes8 ( [  g8 ) ] \break | % 21
      \time 3/4  | % 21
      es2
      \times 2/3  {
        c8 ( [  d8  es8 ) ]
      }
      | % 22
      \time 2/4  | % 22
      g4 (  f8. [  es16 ) ] | % 23
      es2 \bar "||"
      \time 3/4  | % 24
      \tempoFunc "Più mosso" 4 "84" | % 24
      es'8 d8 c2 | % 25
      c8 bes8  as2 \break | % 26
      as8  g8  f8  g8  as8
      c8| % 27
      bes2
      \times 2/3  {
        es,8   f8  g8
      }
      | % 28
      c2
      \times 2/3  {
        c,8 ( [  d8  es8 ) ]
      }
      | % 29
      \time 2/4 bes'4 (  as4 ) | \break
      \time 3/4
      d8c8
      bes8  as8  f8  c8  bes16 (
      [  d16  f16  as16 ) ]  % 31
      g4.  f8  f4  % 32
      es2  |  % 33
      g'8 ( [f8 ) ] es2 | \break % 34
      es8 ( [d8 ) ]c2 | % 35
      d16 c16 b16 c16
      as'2 ^\fermata |   % 36
      \tupletDown \times 2/3  {
        f8 ( [d8 ) ] bes8
      }
      \times 2/3  {
        as8 ( [  f8  d8 ) ]
      }
      bes4 ^\fermata | % 37
      d8 f8 as2 \break | % 38
      f8 as8  d2 | % 39
      as8  d8  f2 |
      bes,8 a8  bes8  c8
      d8  es8 | % 41
      f2. | % 42
      es2 \fermata \bar "|."

    }
    \addlyrics {
      Ми  -- ли Бо -- же, чуй ни пе
      -- сен -- та: пе -- ем ний
      за слън -- це -- то, за про -- лет
      -- та. Чуй ни пе -- сен -- та: Про
      -- лет и -- де, нов жи -- вот но
      -- си. Пър -- во цве -- те на
      про -- лет -- та: бу  -- дя всич
      -- ки от сън, мен __  пър -- во
      слън -- це -- то ме  __ виж
      --  да. Слън -- чи -- це, Бо --
      жи дар, ти си из -- вор на жи --
      вот, ти ни из -- пра -- щаш __
      лъч, __ що раз -- тва -- ря све --
      жи, неж --   ни лис -- тен
      -- ца. Про -- лет, про -- лет,
      пъл -- на със жи -- вот, веч  --
      на про --  лет, ти си рай.
      Бо -- жи дар, Бо -- жи дар, сал
      за те -- бе аз жи -- ве -- я.}

      \header {
        title = \titleFunc #'ref_desc_18 "Пролетна песен" "Proletna pesen"
      }

      \midi{}

    } % score

    \markup \italic \dc-one-nobold "attaca „Слънчева песен“"



  } % bookpart
