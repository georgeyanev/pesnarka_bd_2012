\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces048" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -9 )
    2
  }
}

\bookpart {
  \label #'ref048
  \tocItem \markup "Напред, чада, напред"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      d'4 | g'4. a'8 bes'4. a'8 | g'2. d'4 | g'4. a'8 bes'8 bes'8 a'8. a'16| \break
      g'2. d''4 | \repeat volta 2 {
        g''4. es''8 d''4. cis''8 | d''2 ( d''8 ) d'8 es'8 d'8 | \break
        bes'4. bes'8 a'4. a'8 |
      } \alternative  { { g'2. d''4 | }  { g'2. } } \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " Нап -- ред, ча -- да, нап -- ред, но -- се -- те Сло -- во -- то нав --
      ред! Без страх в~жи -- во -- та нов __  но -- се -- те
      прав -- да, мир, лю -- бов. Без бов!
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Напред, чада, напред " "Napred, čada, napred"
    }

    \midi{}

  } % score



  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "От новото Небе"
            "Спасителят ни днес зове:"
            "„Я чуйте тоя зов –"
            " носете правда, мир, любов!“."
          }\"rightBraces048"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Тук долу няма мир,"
            " неправдата е в длъж и шир."
            " Разсейте бързо днес"
            " за мир и правда блага вест!"
          }\"rightBraces048"
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "Напред, чада, напред,"
            " носете Словото навред!"
            " Без страх в живота нов,"
            " носете правда, мир, любов!"
          }\"rightBraces048"
        }
      }
    }
  }
} % bookpart
