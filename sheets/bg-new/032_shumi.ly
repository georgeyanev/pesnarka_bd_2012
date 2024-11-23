\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref032
  \tocItem \markup "Шуми"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #18
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \partial 4
      \autoBeamOff

      a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |
      d''2 e''4 | \time 4/4

      f''4 e'' d'' cis'' | d''4 \stemUp a'2 \stemNeutral

      a'4 | \time 3/4  bes'2 a'4 | \break

      \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |
      a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |
      d''2 a'4 | \time 4/4  bes'4 a'2 d'4 | f'2 e'4 cis' | \time 3/4  d'2 \fermata s4 | \bar "|." \break
    }

    \addlyrics {
      \set stanza = "1. " Шу -- ми,
      аз слу -- шам цял свят да шу -- ми! Шу -- мят
      сър -- ца -- та че -- ло --  веш -- ки всред
      свой -- те и -- до -- ли и греш -- ки, шу -- мят
      без -- спир -- но у -- мо -- ве -- те, го -- лям
      е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
      аз слу -- шам цял свят да шу -- ми!
    }

    \header {
      title = \titleFunc #'ref_desc_4 "Шуми" "Šumi"
    }

    \midi{}

  } % score

\markup \vspace #0.5
  \markup \abs-fontsize #11  \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "   И вятър вее,"
            "   където си ще."
            "Листата горски отговарят"
            "на неговия зов, повтарят"
            "любимата си песенчица,"
            "игрива като ладанчица."
            "   И вятър вее,"
            "   където си ще."
          }
        }

      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "3."
          \column {
            "   Мой ветре, буйно"
            "   задухай сега!"
            "Носи Божествената влага"
            "и освежаваща прохлада;"
            "пречиствай задушливи хижи,"
            "разсейвай тежки земни грижи!"
            "   Мой ветре,"
            "   буйно задухай сега!"
          }
        }
        % adds vertical spacing between verses

      }\hspace #0.1
    }
  }


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \vspace #1
        \line {
          \bold "4."
          \column {
            "   Задухай, ветре, "
            "   света разведри!"
            "При чисти мисли, нежни чувства"
            "цъфтят Божествени изкуства."
            "Навред да просияе радост,"
            "навред да диша свежа младост."
            "   Задухай, ветре,"
            "   света избистри."
          }
        }
      }
    }
  }
} % bookpart

% Più mosso
%
