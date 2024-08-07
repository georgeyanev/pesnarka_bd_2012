\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces051" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -7.5 )
    \right-brace #20

    \translate #'(0 . -11.7 )
    \right-brace #20

    \translate #'(0 . -11.0 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.1 )
    2

    \translate #'(0 . -15.0 )
    2

    \translate #'(0 . -13.5 )
    2
  }
}

\bookpart {
  \label #'ref051
  \tocItem \markup "О, Учителю благати – O, Učitelju blagati"
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
      \set stanza = "1." О, У -- чи -- те -- лю бла -- га -- ти, теб из -- пъл -- ва доб -- ри --
      на. Твой -- те ду -- ми са кри -- ла -- ти, пъл -- ни
      с~мъд -- рост, свет -- ли -- на. Твой -- те на.
    }


    \addlyrics {
      \set stanza = "1." O, U -- či -- te -- lju bla -- ga -- ti, teb iz -- păl -- va dob -- ri --
      na. Tvoj -- te du -- mi sa kri -- la -- ti, păl -- ni
      s~măd -- rost, svet -- li -- na. Tvoj -- te na.
    }

    \header {
      title = \titleFunc "О, Учителю благати" "O, Učitelju blagati "
    }

    \midi{}

  } % score

  \markup \empty-two

  \markup \abs-fontsize #10 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Пратеник си ти от Бога}

      \line {   "   "всред измъчени души,}

      \line {   "   "мир, любов ти в нас да влееш,}

      \line {   "   "нов живот, честити дни.}

      \vspace #0.5

      \line {   3. В скърби, мъки и неволи }

      \line {   "   "само ти си наш подслон,}

      \line {   "   "ти утеха ни донесе,}

      \line {   "   "мой Учителю, поклон!}

      \vspace #0.5

      \line {   4. Твойте думи – бисер чисти,}

      \line {   "   "твоят образ – светлина,}

      \line {   "   "о, Учителю честити,}

      \line {   "   "влей в сърца ни топлина!}
    }\"rightBraces051"

    \hspace #2
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Pratenik si ti ot Boga}

      \line {   "   "vsred izmăčeni duši,}

      \line {   "   "mir, ljubov ti v nas da vleeš,}

      \line {   "   "nov život, čestiti dni.}

      \vspace #0.5

      \line {   3. V skărbi, măki i nevoli }

      \line {   "   "samo ti si naš podslon,}

      \line {   "   "ti uteha ni donese,}

      \line {   "   "moj Učitelju, poklon!}

      \vspace #0.5

      \line {   4. Tvojte dumi – biser čisti,}

      \line {   "   "tvojat obraz – svetlina,}

      \line {   "   "o, Učitelju čestiti,}

      \line {   "   "vlej v sărca ni toplina!}
    } %column
    \"rightBraces051"
  } % markup

  \markup \vspace #3

  % include foreign translation(s) of the song
  \include "../../lyrics/de/051_o_Uchitelyu_blagati_lyric_de.ly"

} % bookpart
