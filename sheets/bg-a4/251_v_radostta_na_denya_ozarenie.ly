\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref251_1
  \tocItem \markup "Мелодия 2 – В радостта на деня"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key des \major
      \time 3/8
      \tempoFunc "Allegro" 4. "48"
      \autoBeamOff
      des''8. des''16 c''16 des''16
      | % 2
      es''4 des''8 | % 3
      des''8. c''16 c''16 des''16
      | % 4
      c''4 bes'8 \break | % 5
      bes'4  as'8 | % 6
      as'4. | % 7
      es'8.  es'16  f'16  ges'16  | % 8
      bes'8.  as'16  as'16 bes'16 \break | % 9
      as'8.  ges'16  f'16  ges'16 |
      f'8.  es'16  des'16  es'16 | % 11
      des'4. | % 12
      as'4  as'8   | % 13
      as'8 [(  g'8 )]  as'8 \break| % 14
      bes'4  as'8  | % 15
      as'4  as'8 | % 16
      des''4.  | % 17
      des''8 c''8 des''8 | % 18
      es''4 des''8 | % 19
      c''8. bes'16  as'16 bes'16 \break |

      as'4  ges'8  | % 21
      f'8.  es'16  des'16  es'16 | % 22
      des'4. \bar "||"
      es'8  f'8  ges'8 | % 24
      as'4 bes'16 c''16 \break | % 25
      des''4  f'8 | % 26
      as'4  ges'8 | % 27
      ges'4. | % 28
      bes4  c'16  des'16   | % 29
      f'4  es'8  |
      des'4  c'8  \break | % 31
      es'4  des'8 | % 32
      des'4. | % 33
      as'16  as'16 f''8 f''8 | % 34
      ges''16 f''16 es''16 f''16
      es''16 des''16 \break  | % 35
      as'8 es''8 es''8 | % 36
      es''4.  | % 37
      as'8 es''8 es''8   | % 38
      f''16 es''16 des''16 es''16
      des''16 c''16 \break| % 39
      des''16 c''16 bes'16 c''16
      bes'16  as'16 |
      as'8 des''8 des''8 | % 41
      des''4. \break | % 42
      as'16 des''16 des''16 des''16
      des''16 des''16  | % 43
      as'16 es''16 es''16 es''16
      es''16 es''16 \break | % 44
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 45
      des''4. | % 46
      as'16 des''16 des''16 des''16
      des''16 des''16 \break | % 47
      as'16 es''16 es''16 es''16
      es''16 es''16 | % 48
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 49
      des''4. \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " Рад -- ва се зе -- мя -- та, рад --
      ва се не -- бе -- то в~свет -- ли
      -- на. Се -- ме -- то, по -- ся -- то
      в~плод -- на ни -- ва, рас -- не
      свя -- то в~Лю -- бов -- та. Бог
      въз -- раст -- ва но -- ви -- я
      жи -- вот в~ра -- дост и мир и
      ця -- ло -- то не -- бе пре -- ли --
      ва от Лю -- бов. Е -- то го, гре --
      е де -- нят кра -- сив и свят и
      Лю -- бов -- та е жи -- ва бла --
      го -- дат. Грей, раз -- пръск -- вай
      ра -- дост, мир и о -- бич, свят
      Бо -- жи ден. Все -- благ, все --
      мъ -- дър Бог О -- тец в~ду -- ши
      -- те ми -- лост -- та Си да въз --
      рас -- ти. Да пре -- бъ -- де ра --
      дост, да пре -- бъ -- де бла --
      гост в~Но -- ви -- я жи -- вот бла
      -- жен. Бо -- жи -- я -- та во -- ля
      да пре -- бъ -- де свя -- та в~то
      -- зи ден бла -- го -- сло -- вен.}

      \header {
        title = \titleFunc #'ref_desc_20 "Мелодия 2 – В радостта на деня" " Melodija 2 – V radostta na denja"
      }

      \midi{}

    } % score


    \markup \abs-fontsize #11  \override #`(baseline-skip . ,bgCoupletBaselineSkip){
      \fill-line {
        \hspace #0.1
        \column {
          \line {
            \bold "2."
            \column {
              "Слънчевото ято Бога благославя и зари,"

              "Божията Слава новия свещен живот да озари."

              "Целият всемир е светлина и светлината"

              "извор е на радост, сила и живот."
            }
          }
          \vspace #1
          \line{ \italic"    Припев:" Ето го, грее денят ...}

        }\hspace #0.1
      }
    }

    \markup \vspace #3

    \label #'ref251_2
    \tocItem \markup "Мелодия 4 – Озарение"
    \score {
      \include "include/score-layout.ily"

      \new Voice \absolute {
        \clef treble
        \key g \minor
        \time 3/8
        \tempoFunc "Moderato" 8 "120"
        \autoBeamOff
        d''4 bes'8 | % 2
        d''4 bes'8 | % 3
        d''4. | % 4
        g''8 ( [ f''8 ) ] es''8 | % 5
        es''4 c''8 | % 6
        es''4 c''8 | % 7
        es''4. | % 8
        c''8 ( [ d''8 ) ] es''8 \break | % 9
        f''4 es''8 |
        es''4 d''8 | % 11
        d''4 c''8 | % 12
        d''4. | % 13
        g'8 ( [  a'8 ) ] bes'8 | % 14
        bes'4  a'8 \break | % 15
        a'4  g'8 | % 16
        g'4  d'8 | % 17
        g'4. | % 18
        g'8 ( [  a'8 ) ] bes'8 | % 19
        bes'4  a'8 |
        a'4  g'8 | % 21
        g'4  d'8 | % 22
        g'4. \bar "|."
      }

      \addlyrics {
        \set stanza = "1. " Без -- гра -- нич -- на шир, див
        -- на кра -- со -- та и мир,
        Слън -- це за чо -- веш -- ки --
        те ду -- ши но -- си свя -- та
        Лю -- бов -- та без -- спир, но --
        си свя -- та Лю -- бов -- та без --
        спир.}

        \header {
          title = \titleFunc #'ref_desc_20 "Мелодия 4 – Озарение" "Melodija – Ozarenie"
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
                "Благ живот струи "
                "в топли слънчеви лъчи "
                "и душите славят в светлина "
                "благия Отец на Любовта. (2)"
              }
            }
          }
          \hspace #0.1
          % adds horizontal spacing between columns
          \column {
            \line {
              \bold "4."
              \column {
                "Всичко е Любов,"
                "радост, сила и живот."
                "Свята Божия виделина "
                "озарява тази красота. (2)"
              }
            }
          }\hspace #0.1
        }
      }
    } % bookpart