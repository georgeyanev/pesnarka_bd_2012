\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref044
  \tocItem \markup "Поздрав на Учителя"
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

      \time 3/4  e''4. d''8 e'' d'' | c''4. d''8 c'' bes'  | \time 2/4 a'2 \bar"||" \break  \time 4/4  c''4   bes'8. a'16 g'2|

      bes'4  d''8 d'' c''4. c''8  | \break

      \time 3/4  f''8 f'' e''4.  d''8 | c'' bes' a'2 | \time 4/4 c''4  bes'8. a'16 g'2 \break |

      bes'4 d''8 d'' c''4. c''8 \time 3/4  f''8 f'' e''4. d''8 | c'' bes' a'2 \bar "|."

    }

    \addlyrics {
      \set stanza = "1. "  Бла -- гос -- ло -- вен от Бо -- га ти, У -- чи -- те --
      лю на Лю -- бов -- та, за -- де -- то тък -- мо
      в~те -- зи дни до -- не -- се мир и свет -- ли -- на.
      Доб -- ре до -- шъл, доб -- ре до -- шъл,
      У -- чи -- те -- лю на Лю -- бов -- та; доб --
      ре до -- шъл, доб -- ре до -- шъл, У -- чи --
      те -- лю на Мъд -- рост -- та.
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Поздрав на Учителя" "Pozdrav na Učitelja"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "Обвити в мрак до този час, "
            "ний бяхме роби на греха, "
            "но чухме Твоя кротък глас "
            "и лъхна към нас топлина. "
          }
        }

        \vspace #1
        \line {
          \bold " "
          \column {
            \line {   \italic  "  Припев:" Добре дошъл ...}
          }
        }
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "3."
          \column {
            "Учителю благословен,"
            "Ти ни сърцата обнови,"
            "запали огън в нас свещен"
            "и сладки думи оживи."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \line {   \italic  "  Припев:" Добре дошъл ...}
          }
        }
        % adds vertical spacing between verses
      }\hspace #0.1
    }
  }
  \markup \vspace #0.8
  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    
    \fill-line {
      \column {
        \line {
          \bold "4."
          \column {
            "Учителю, наш скъпи гост,"
            "привет от нас Ти приеми; "
            "със радост ний готови сме"
            "да жертваме живота свой."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \line {   \italic  "  Припев:" Добре дошъл ...}
          }
        }
      }
    }
  }




} % bookpart
