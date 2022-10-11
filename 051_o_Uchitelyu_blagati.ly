\version "2.22.1"

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
      } \alternative { { f'2 d''8 c''  | } { f'2. | \break } } \bar "|."
    }

    \addlyrics {
      "1. О," У -- чи -- те -- лю бла -- га -- ти, теб из -- пъл -- ва До -- бри --
      на. Твой -- те ду -- ми са кри -- ла -- ти, пъл -- ни
      с~Мъ -- дрост, Свет -- ли -- на. Твой -- те на.
    }

    \addlyrics {
      "1. O," U -- chi -- te -- lyu bla -- ga -- ti, teb iz -- pal -- va Do -- bri --
      na. Tvoy -- te du -- mi sa kri -- la -- ti, pal -- ni
      s~Ma -- drost, Svet -- li -- na. Tvoy -- te na.
    }

    \header {
      title = \titleFunc "О, Учителю благати" "O, Uchitelyu blagati "
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
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

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Pratenik si ti ot Boga}

      \line {   "   "vsred izmacheni dushi,}

      \line {   "   "Mir, Lyubov ti v nas da vleesh,}

      \line {   "   "Nov zhivot, chestiti dni.}

      \line {   "   "}

      \line {   3. V skarbi, maki i nevoli }

      \line {   "   "samo ti si nash podslon,}

      \line {   "   "ti uteha ni donese,}

      \line {   "   "moy Uchitelyu, poklon!}

      \line {   "   "}

      \line {   4. Tvoite dumi – biser chisti,}

      \line {   "   "tvoyat obraz – Svetlina,}

      \line {   "   "o, Uchitelyu chestiti,}

      \line {   "   "vley v sartsa ni Toplina!}
    } %column
    \"rightBraces051"
  } % markup

  \pageBreak
  % include foreign translation(s) of the song
  \include "lyrics_de/051_o_Uchitelyu_blagati_lyric_de.ly"

} % bookpart
