\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces048" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.5 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.1 )
    2

    \translate #'(0 . -12.0 )
    2

    \translate #'(0 . -12.0 )
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
      "1. Нап" -- ред, ча -- да, нап -- ред, но -- се -- те Сло -- во -- то нав --
      ред! Без страх в~жи -- во -- та нов __  но -- се -- те
      прав -- да, мир, лю -- бов. Без бов!
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Напред, чада, напред " "Napred, čada, napred"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #18
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. От новото Небе }

      \line {   "   " Спасителят ни днес зове: }

      \line {   "   " „Я чуйте тоя зов –}

      \line {   "   " носете правда, мир, любов!“.}

      \line {   "   "}

      \line {   3.  Тук долу няма мир,}

      \line {   "   " неправдата е в длъж и шир.}

      \line {   "   " Разсейте бързо днес }

      \line {   "   " за мир и правда блага вест!}

      \line {   "   "}

      \line {   4.  Напред, чада, напред,}

      \line {   "   " носете Словото навред!}

      \line {   "   " Без страх в живота нов,}

      \line {   "   " носете правда, мир, любов!}
    }  \"rightBraces048"

  } % markup


} % bookpart
