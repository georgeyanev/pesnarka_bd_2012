\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref092_1
  \tocItem \markup "Киамет Зену"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempoFunc "Andante" 4 "68"


      \autoBeamOff

      \tupletUp \tuplet 3/2 {r8 c'' c''8 }  c''4~ ( \slashedGrace { \stemDown d''16[c''16] \stemNeutral }  b'8[c''] d''4)  c''4 ( b'8 [c''] a'4 ) g'2 \bar"!"

      g'4 -- a' -- g' ( f' ) e'2 \bar"!" \break  g'8 g' f' e' f'2 g'4 a'4

      b'8 b' c''4 a' g'2 \bar"!" \break c''8 e' g'4 f' f'2  a'8 a' a'4 g' g'2 \bar"!" \break

      b'8 b' b'4 a'8 [( b' )] c''2 \bar"!" e'4 g' g' g'2 \bar"!" \tempo "rit. e morendo" e'4 g' g' g'2 \bar "|."

    }



    \addlyrics {
      Ки -- а -- мет __ Зе --  -- ну. Ма -- хар Бе  --  ну. Хай  --  ри ме  -- ши  --  на се  --
      ват се  -- му  -- си бе  -- ни. Ха -- бе -- рим я -- ве су  -- бе  -- рим са  -- ве,
      Ки -- а -- мет Зе --  -- ну. Ма -- хар Бе  --  ну, Ма -- хар Бе  --  ну.
    }

    \header {
      title = \titleFunc "Киамет Зену" "Kiamet Zenu"
    }

    \midi{}


  } % score
  \markup \dc-one "D.C."

  \label #'ref092_2
  \tocItem \markup "Давай, давай"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 5/4
      \tempoFunc "Moderato" 4 "60"

      a4 c' e' a'2 |c''4 b' a' e'2 | c''4 c'' c'' c''2 \break |

      b'8 ( c'' ) d''4 b' a'2 | b'4 a' gis' a'2 | f'4 d' e' e'2 \break |

      a'4 b' a' gis'2 | f'4 gis' f' e'2 | a'4 a' f' gis'2 \break |

      f'4 d' e' e'2  \bar ".|:"|

      a'4 a' b'8 ( c'' ) d''2 |  e''4 c'' b' a'2 \break | % 13

      b'4 a' gis' a'2 | f'4 d' e' e'2
      \bar ":|." | gis'4 f' f' gis'2 \break |

      f'4 d' e' e'2 | gis'4 f' f' gis'2 | \tempo "rit." f'4  d' e' e'2 | \bar "|."

    }



    \addlyrics {
      Да -- вай, да  -- вай, всич -- ко да -- вай,

      чис -- то се -- ме пше -- ни -- че -- но.

      Да се се -- е на ни -- ва -- та, на ни -- ва -- та кра -- си -- ва -- та.

      Да се чис -- ти през зи -- ма -- та.

      Да се рад -- ва на жи -- во -- та

      всич -- ко ся -- то на по -- ле -- то,

      на по -- ле -- то от Hе -- бе -- то,

      на по -- ле -- то от Hе -- бе -- то.

    }

    \header {
      title = \titleFunc "Давай, давай" "Davaj, davaj"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C.""con ripetizione"

  \label #'ref093
  \tocItem \markup "Мисли, право мисли"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Adagio" 4 "54"

      \partial 4
      \autoBeamOff

      a4 | d'2 | \time 3/4 b'4 a' fis' | \time 4/4 a'2 ( a'8 ) r8 a4 | \time 2/4 d'2 | \time 3/4 b'4 a'4 fis'4 \break

      a'2 r8

      \tempoFunc "Più mosso" 4 "58"
      fis'8 | \repeat volta 2 {
        \time 9/8 fis'4 fis'8 fis'4 fis'8 fis'4 g'8 | a'4 a'8 b'4 a'8 a'4 fis'8 | \break

        a'4 g'8 g'4 fis'8 fis'4 e'8 | \time 6/8 e'4 e'8 fis'4 e'8 |
      } \alternative {
        {d'4. (d'4 ) fis'8 \break}
        {d'4. (d'4) a8 }
      } \repeat volta 2 {
        \time 9/8 a4 a8 a4 a8 a4 a8 | g'4 fis'8 e'4 e'8 e'4 e'8 | \break

        \time 6/8  fis'4 e'8 d'4 cis'8 |
      } \alternative { { d'4. ( d'4 ) a8 } { d'4. ( d'8 ) } } \bar "|."

    }

    \addlyrics {
      Мис -- ли, пра -- во ми -- сли! __  Мис -- ли, пра -- во мис -- ли!

      Све -- ще -- ни мис -- ли за жи -- во -- та ти "кре-" -- пи, све -- ще -- ни мис -- ли за жи -- во -- та ти кре -- пи. __ Све -- пи. __  Кре -- пи кре -- пи

      кре -- пи све -- ще -- ни мис -- ли за жи -- во -- та ти кре -- пи. __  Кре -- пи. __
    }

    \header {
      title = \titleFunc "Мисли, право мисли" "Misli, pravo misli"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C.""con ripetizioni"

} % bookpart
