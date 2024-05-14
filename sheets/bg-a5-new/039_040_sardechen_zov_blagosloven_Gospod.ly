\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref039
  \tocItem \markup "Сърдечен зов"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      e'8 ([f'8]) |  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

      g'2 g'4 | c''2 d''4 | e''2 d''4 | c''2 c''8 ( [d''8]) | \break

      \repeat volta 2 {
        e''2 e''8 e'' | e''4 ( d'' ) c'' | b'4. a'8   b' a' | g'2 e'8. f'16 | \break
        g'4 c' d' | e' e' d' |
      }
      \alternative {
        { c'2. ~| c'2  \slurSolid c''8 ( [ d'' ] ) |  }

        { c'2.  ( | c'4 ) r4 e'8 ([f'8 ])| \break }
      }

      g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

      g'2 g'4 | c''2 d''4 | e''2 d''4 | c''2 c''8 ( [d''8]) | \break

      \repeat volta 2 {
        e''2 e''4 | e''4 d'' c'' | b'4. a'8  b' a' | g'2 e'8. f'16 | \break
        g'4 c' d' | e' e' d' |
      }

      \alternative {
        { c'2. ~| c'2  c''8 ( [ d'' ] ) |  }
        { c'2. ( | c'4 ) r4 e'8 ([f'8 ])| \break }
      }

      g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break

      g'2 g'4 | c''2 d''4 | e''4 e''4 d''4 | c''2 c''8 d''8 | \break

      \repeat volta 2 {
        e''2 e''8  e'' | e''4  d'' c'' | b'4. ( a'8 )  b' ([a']) | g'2 e'8. f'16 | \break
        g'4 c' d' | e' e' d' |
      }
      \alternative {
        { c'2. ~| c'2 c''8  d''   |   }
        { c'2. ( | c'4 ) r4 s4 \bar "|."  | \break }
      }

    }

    \addlyrics {
      "1. Пред" Теб при -- па -- да -- ме, Гос -- по -- ди, днес __
      с~чис -- ти, тре -- пет -- ни  ду -- ши. Във __
      пе -- сен из -- ли --  ва -- ме  сър -- ца -- та си и зо --
      вем Те, Пре -- свя -- тий, про -- сти! __ Във __ сти! __

      "2. Заб" -- ра -- вяй на -- ши -- те гре -- хо -- ве, о --
      бил -- но нас бла -- го -- сло -- ви. Ца --
      рю пре -- бла -- гий на свет -- ли -- те ду -- ши, "в~цар-" -- ство --
      то Си ни Ти при -- е -- ми! __ Ца -- ми! __

      "3. Там" да Те сла -- вим през веч -- ност -- та, E --
      дин Ти за слу -- жа -- ваш хва -- ла. О -- гра --
      ди ни със Тво -- и -- те ми -- лос -- ти, о -- за --
      ри ни с~Твой -- та Свет -- ли -- на! __ "О-" -- гра -- на! __
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Сърдечен зов" "Sărdečen zov"
    }

    \midi{}

  } % score

  \markup \vspace #5

  \label #'ref040
  \tocItem \markup "Благословен Господ"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \key f \major
      \tempoFunc "Andante" 4 "56/58"
      \autoBeamOff
      c'4 f'8. g'16 a'4 d'' c'' a' c''2 \bar"!" c''4 c'' c'' c''4. d''8 c''2 \bar"!" \break
      g'4 g'4. g'8 g'4 a' bes'2 bes' \bar"!" bes'4 d'' d'' d'' c''4. bes'8 a'2 \bar"!" \break
      g'4 g' g' g' g'4. a'8 bes'2 \bar"!" a'4 a' a' a' a'4. bes'8 c''2 \bar"!" \break
      d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 \bar"!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 \bar "|."
    }
    \addlyrics {
      Бла -- гос --
      "ло-" -- вен Гос -- под Бог наш на всич -- ки ве
      -- ко -- ве; бла -- гос -- "ло-" -- вен Ба -- ща наш
      на Свет -- ли -- те ду -- хо -- ве, на Свет --
      ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
      -- хо -- ве, на Свет -- ли -- те __ ду -- хо -- ве,
      на Свет -- ли -- те __ ду -- хо -- ве.}

      \header {
        title = \titleFunc #'ref_desc_1 "Благословен Господ" "Blagosloven Gospod"
      }

      \midi{}

    } % score




  } % bookpart
