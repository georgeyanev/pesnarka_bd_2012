\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces051" = \markup {
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
  \label #'ref051
  \tocItem \markup "О, Учителю благати"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 3/4
      \tempoFunc "Larghetto" 4 "58"
      \partial 4
      \autoBeamOff
      f'8 a' c''4 c'' f''8 a' | c''4 c'' f'8 a' | c''4 c'' f''8 e'' \break
      d''2 d''8 c'' \repeat volta 2 {
        | bes'4 d'' c''8 bes' | a'4 c'' f'8 g' \break |
        a'4 c'' g'8 c'8 |
      } \alternative { { f'2 d''8 c''  | } { f'2 \break } } \bar "|."
    }

    \addlyrics {
      "1. О," У -- чи -- те -- лю бла -- га -- ти, теб из -- пъл -- ва Доб -- ри --
      на. Твой -- те ду -- ми са кри -- ла -- ти, пъл -- ни
      с~Мъд -- рост, Свет -- ли -- на. Твой -- те на.
    }

    \header {
      title = \titleFunc "О, Учителю благати" "O, Učitelju blagati "
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Пратеник си ти от Бога}

      \line {   "   "всред измъчени души,}

      \line {   "   "Мир, Любов ти в нас да влееш,}

      \line {   "   "Нов живот, честити дни.}

      \line {   "   "}

      \line {   3. В скърби, мъки и неволи }

      \line {   "   "само ти си наш подслон,}

      \line {   "   "ти утеха ни донесе,}

      \line {   "   "мой Учителю, поклон!}

      \line {   "   "}

      \line {   4. Твоите думи – бисер чисти,}

      \line {   "   "твоят образ – Светлина,}

      \line {   "   "о, Учителю честити,}

      \line {   "   "влей в сърца ни Топлина!}
    }\"rightBraces051"

  } % markup
  

} % bookpart
