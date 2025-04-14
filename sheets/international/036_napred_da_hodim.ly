\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref036
  \tocItem \markup "Напред да ходим – Napred da hodim"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
      \partial 8


      b8 | e'8. fis'16 g'8 a' | b'4 b'8 b' | e''8 d'' c'' b' | c''4 c''8 c'' \break |
      d''8 c'' b' a' | b'4 b'8 b' | b'8 a' g' fis' | e'4 e'8 e' \break |
      \repeat volta 2 {
        fis'8. fis'16 fis'8 fis' |
        fis'4 fis'8 fis' |
        g'8. g'16 g'8 g' |
        g'4 g'8 g' | \break

        a'8.  a'16 a'8 a' |
        b'4. a'8 |
        b'8 a' g'  fis'8 |
      } \alternative {
        {  e'4. e'8 |}
        {e'4. \bar "|." \break }
      }
    }

    \addlyrics {
      \set stanza = "1. "  На -- пред
      да хо -- дим сме -- ло в~чер -- то -- зи -- те
      без -- мъл -- вни на тай -- но -- то поз -- на --
      ние, с~жи -- вот и си -- ла пъл -- ни. Кат вих
      -- ри над го -- ри -- те с~дух пла -- мен във
      гър -- ди -- те на -- пред да по -- ле -- тим,
      све -- та да об -- но -- вим! Кат вим!}
    \addlyrics {
      \set stanza = "1. "  Na -- pred
      da ho -- dim sme -- lo v~čer -- to -- zi -- te
      bez -- măl -- vni na taj -- no -- to poz -- na --
      nie, s~ži -- vot i si -- la păl -- ni. Kat vih
      -- ri nad go -- ri -- te s~duh pla -- men văv
      găr -- di -- te na -- pred da po -- le -- tim,
      sve -- ta da ob -- no -- vim! Kat vim!}

        \header {
          title = \titleFunc "Напред да ходим" "Napred da hodim"
        }

        \midi{}

      } % score

      \markup \vspace #2

       \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {

         \line {
            \bold "2."
            \column {
              "Земята с чисти мисли"
              "да оградиме здраво"
              "и злото всепорочно"
              "да победиме с право."
            }
          }

          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Припев ..."
            }
          }
          \vspace #0.5
          \line {
            \bold "3."
            \column {
              "На слабите да носим"
              "подкрепа и обнова,"
              "на страдущите – милост"
              "и свободата нова."
            }
          }
          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Припев ..."
            }
          }
           \vspace #0.5
           \line {
            \bold "4."
            \column {
              "Във бездната да слезем,"
              "хоругва да поставим"
              "и падналите братя"
              "от мъка да избавим."
            }
          }
          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Припев ..."
            }
          }
          % adds vertical spacing between verses
          \vspace #0.5
          \line {
            \bold "5."
            \column {
              "Тогава да отворим"
              "на новий град вратите,"
              "в Йерусалим да влезем –"
              "света на светлините."
            }
          }
          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Припев ..."
            }
          }

      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses

       
         \line {
            \bold "2."
            \column {
              "Zemjata s čisti misli"
              "da ogradime zdravo"
              "i zloto vseporočno"
              "da pobedime s pravo."
            }
          }

          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Pripev ..."
            }
          }
          \vspace #0.5
          \line {
            \bold "3."
            \column {
              "Na slabite da nosim"
              "podkrepa i obnova,"
              "na straduštite – milost"
              "i svobodata nova."
            }
          }
          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Pripev ..."
            }
          }
           \vspace #0.5
           \line {
            \bold "4."
            \column {
              "Văv bezdnata da slezem,"
              "horugva da postavim"
              "i padnalite bratja"
              "ot măka da izbavim."
            }
          }
          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Pripev ..."
            }
          }
          % adds vertical spacing between verses
          \vspace #0.5
          \line {
            \bold "5."
            \column {
              "Togava da otvorim"
              "na novij grad vratite,"
              "v Jerusalim da vlezem –"
              "sveta na svetlinite."
            }
          }
          \vspace #1
          \line {
            \bold " "
            \column {
              \italic "  Pripev ..."
            }
          }

      }\hspace #0.1
    }
  }


      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/036_napred_da_hodim_lyrics_de.ly"

    } % bookpart
