\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces049" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.5 )
    \right-brace #20

    \translate #'(0 . -10.0 )
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

    \translate #'(0 . -12.0 )
    2
  }
}

\bookpart {
  \label #'ref049
  \tocItem \markup "Славейчета горски"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key bes \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "112"
      \autoBeamOff

      bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 \break |
      a'4. g'8  | a'8 g' es' g' |  f'2 |   d'2 | \break
      \bar ".|:-||"
      es'4. es'8 | g'8 g' f' e' | f'2 | bes'2 | \break

      d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 | \break
      \bar ":|."
    }

    \addlyrics {
      "1. Ний" сме сла -- вей -- че -- та гор -- ски, с~пес -- ни
      сла -- вим Не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи
      хор -- ски с~пес -- ни го -- ним от Зе -- мя -- та.
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Славейчета горски " "Slavejčeta gorski "
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 {
    \hspace #25
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2.  Наш’те песни са ронливи,}

      \line {   "   " те ни носят радост вечно, }

      \line {   "   "  хем са живи, хем игриви}

      \line {   "   " кат поточе бързотечно.}
      \line {   "   " }

      \line {   3. Ето, чуйте как се лее}

      \line {   "   " песента ни в тишината –}

      \line {   "   " и се лее, и люлее}

      \line {   "   " като струя във душата.}
      \line {   "   " }

      \line {   4. От гласа ни тих и строен}

      \line {   "   " всяко зло ще се прокуди.}

      \line {   "   "Новий воин, млад, достоен, }

      \line {   "   " с песните си ще пробудим.}
      \line {   "   " }

      \line {   5. Пейте, пейте, мили птички,}

      \line {   "   "тъй се истински живее,}

      \line {   "   "пейте, пейте дружно всички – }

      \line {   "   " целий свят със вас да пее! }
    } \"rightBraces049"

  } % markup


} % bookpart
