\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref092_1
  \tocItem \markup "Киамет Зену – Kiamet Zenu "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Andante" 4 "60"

      \autoBeamOff

      \tupletUp \tuplet 3/2 {r8 c'' c''8 }  c''4~ ( \slashedGrace { \stemDown d''16[c''16] \stemNeutral }  b'8[c''] d''4) | \time 5/4  c''4 ( b'8 [c''] a'4 ) g'2 \break |

      \time 6/4  g'4 -- a' -- g' ( f' ) e'2 | \time 5/4  g'8 g' f' e' f'2 g'4 \break |

      \time 6/4  a'4 b'8 b' c''4 a' g'2 |\time 5/4  c''8 e' g'4 f' f'2 | \break  a'8 a' a'4 g' g'2  |

      b'8 b' b'4 a'8 [( b' )] c''2 |\break e'4 g' g' g'2 | \tempo "rit. e morendo" e'4 g' g' g'2 | \bar "|."

    }



    \addlyrics {
      Ки -- а мет Зе --  -- ну. Ма -- хар Бе  --  ну. Хай  --  ри ме  -- ши  --  на се  --
      ват се  -- му  -- си бе  -- ни. Ха -- бе -- рим я -- ве су  -- бе  -- рим са  -- ве,
      Ки -- а мет Зе --  -- ну. Ма -- хар Бе  --  ну, Ма -- хар Бе  --  ну.
    }

    \addlyrics {
      Ki -- a met Ze --  -- nu. Ma -- har Be  --  nu. Hay  --  ri me  -- shi  --  na se  --
      vat se  -- mu  -- si be  -- ni. Ha -- be -- rim ya -- ve su  -- be  -- rim sa  -- ve,
      Ki -- a met Ze --  -- nu. Ma -- har Be  --  nu, Ma -- har Be  --  nu.
    }


    \header {
      title = \titleFunc "Киамет Зену" "Kiamet Zenu"
    }

    \midi{}

  } % score

\markup \dc-one "D. C."


  % include foreign translation(s) of the song
  %\include "lyrics_de/092_2_datay_davay_lyrics_de.ly"

} % bookpart
