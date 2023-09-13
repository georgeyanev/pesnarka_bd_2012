\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref039
  \tocItem \markup "Сърдечен зов – Sărdečen zov"
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
      "1.Пред" Теб при -- па -- да -- ме, Гос -- по -- ди, днес __
      с~чис -- ти, тре -- пет -- ни  ду -- ши. Във __
      пе -- сен из -- ли --  ва -- ме  сър -- ца -- та си и зо --
      вем Те, Пре -- свя -- тий, про -- сти! __ Във __ сти! __

      "2.За" -- бра -- вяй на -- ши -- те гре -- хо -- ве, о --
      бил -- но нас бла -- го -- сло -- ви. Ца --
      рю пре -- бла -- гий на свет -- ли -- те ду -- ши, "в~цар-" -- ство --
      то си ни Ти при -- е -- ми! __ Ца -- ми! __

      "3.Там" да те сла -- вим през веч -- ност -- та, E --
      дин Ти за слу -- жа -- ваш хва -- ла. О -- гра --
      ди ни със Тво -- и -- те ми -- лос -- ти, о -- за --
      ри ни с~Твой -- та Свет -- ли -- на! __ "О-" -- гра -- на! __
    }
     \addlyrics {
      "1.Pred" Teb pri -- pa -- da -- me, Gos -- po -- di, dnes __
      s~čis -- ti, tre -- pet -- ni  du -- ši. Văv __
      pe -- sen iz -- li --  va -- me  săr -- ca -- ta si i zo --
      vem Te, Pre -- svja -- tij, pro -- sti! __ Văv __ sti! __

      "2.Za" -- bra -- vjaj na -- ši -- te gre -- ho -- ve, o --
      bil -- no nas bla -- go -- slo -- vi. Ca --
      rju pre -- bla -- gij na svet -- li -- te du -- ši, v~car -- stvo --
      to si ni Ti pri -- e -- mi! __ Ca -- mi! __

      "3.Tam" da te sla -- vim prez več -- nost -- ta, E --
      din Ti za slu -- ža -- vaš hva -- la. O -- gra --
      di ni săs Tvo -- i -- te mi -- los -- ti, o -- za --
      ri ni s~Tvoj -- ta Svet -- li -- na! __ "O-" -- gra -- na! __
    }

    \header {
      title = \titleFunc "Сърдечен зов" "Sărdečen zov"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \include "../../lyrics/de/039_sardechen_zov_lyrics_de.ly"

} % bookpart
