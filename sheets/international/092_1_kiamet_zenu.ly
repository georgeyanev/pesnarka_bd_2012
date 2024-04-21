\version "2.24.3"

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

   \addlyrics {
   Ki -- a -- met __ Ze --  -- nu. Ma -- har Be  --  nu. Haj  --  ri me  -- ši  --  na se  --
      vat se  -- mu  -- si be  -- ni. Ha -- be -- rim ja -- ve su  -- be  -- rim sa  -- ve,
      Ki -- a -- met Ze --  -- nu. Ma -- har Be  --  nu, Ma -- har Be  --  nu.
    }


    \header {
      title = \titleFunc "Киамет Зену" "Kiamet Zenu"
    }

    \midi{}

  } % score
  \markup \empty-one
\markup \dc-one "D.C."


  % include foreign translation(s) of the song
  %\include "../../lyrics/de/092_2_datay_davay_lyrics_de.ly"

} % bookpart
