\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
    \label #'ref044
  \tocItem \markup "Поздрав на Учителя – Pozdrav na Učitelja"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Moderato" 4 "52"
      \autoBeamOff


      c'4 f'8. g'16 | \time 3/4 a'4. g'8 a' bes' | c''4. c''8 e'' d'' | \break

      c''4. d''8 c'' bes'  | \time 4/4  a'2 c'4 f'8. g'16 | a'4 f''2 g''8. f''16  | \break

      \time 3/4  e''4. d''8 e'' d'' | c''4. d''8 c'' bes'  | \time 2/4 a'2 | \break  \time 4/4  c''4   bes'8. a'16 g'2|

      bes'4  d''8 d'' c''4. c''8  | \break

      \time 3/4  f''8 f'' e''4.  d''8 | c'' bes' a'2 | \time 4/4 c''4  bes'8. a'16 g'2 \break |

      bes'4 d''8 d'' c''4. c''8 \time 3/4  f''8 f'' e''4. d''8 | c'' bes' a'2 \bar "|."

    }

    \addlyrics {
      Бла -- го -- сло -- вен от Бо -- га ти, У -- чи -- те --
      лю на Лю -- бов -- та, за -- де -- то тък -- мо
      в~те -- зи дни до -- не -- се Мир и Свет -- ли -- на.
      До -- бре до -- шъл, до -- бре до -- шъл,
      У -- чи -- те -- лю на Лю -- бов -- та; до --
      бре "до -" -- шъл, до -- бре до -- шъл, У -- чи --
      те -- лю на "Мъ -" -- "дрост -" -- та.
    }

    \header {
      title = \titleFunc "Поздрав на Учителя" "Pozdrav na Učitelja"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Обвити в мрак до този час, }
      \line { "   " ний бяхме роби на греха, }

      \line { "   " но чухме Твоя кротък глас }

      \line { "   " и лъхна към нас Топлина. }
      \line { "   " }

      \line { "   " \italic{Припев: Добре дошъл ...} }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Obviti v mrak do tozi čas, }
      \line { "   " nij bjahme robi na greha, }

      \line { "   " no čuhme Tvoja krotăk glas }

      \line { "   " i lăhna kăm nas Toplina. }
      \line { "   " }

      \line { "   " \italic{Pripev: Dobre došăl ...} }
    } %column
  } % markup
  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 3. Учителю Благословен, }

      \line { "   " Ти ни сърцата обнови, }

      \line { "   " запали Огън в нас свещен }

      \line { "   " и сладки думи оживи. }

      \line { "   " }

      \line { "   " \italic{Припев: Добре дошъл ...} }
      \line { "   " }

      \line { 4. Учителю, наш скъпи гост, }

      \line { "   " привет от нас Ти приеми; }

      \line { "   " със радост ний готови сме }

      \line { "   " да жертваме живота свой. }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
     \column {
      \line { 3. Učitelju Blagosloven, }

      \line { "   " Ti ni sărcata obnovi, }

      \line { "   " zapali Ogăn v nas svešten }

      \line { "   " i sladki dumi oživi. }

      \line { "   " }

      \line { "   " \italic{Pripev: Dobre došăl ...} }
      \line { "   " }

      \line { 4. Učitelju, naš skăpi gost, }

      \line { "   " privet ot nas Ti priemi; }

      \line { "   " săs radost nij gotovi sme }

      \line { "   " da žertvame života svoj. }
    } %column
  } % markup

  \markup \empty-three

  % include foreign translation(s) of the song
  

} % bookpart
