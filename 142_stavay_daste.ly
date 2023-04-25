\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -12.6 )
    \right-brace #18

    \translate #'(0 . -22.4 )
    \right-brace #18


  }
  \column {
    % repeat numbers
    \translate #'(0 . -13.2 )
    2

    \translate #'(0 . -24.2 )
    2


  }
}

\bookpart {
  \label #'ref142
  \tocItem \markup "Ставай, дъще! – Stavay, dashte"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute {
      \clef treble

      \key es \minor

      \time 4/4
      \tempoFunc "Andante" 4 "66"

      \partial 4
      d'8. es'16 | % 2
      f'2 as'4 ges'8. f'16 | ges'2. f'8.es'16 | f'4 es'8.  d'16  es'4 d'8. ces'16 | \break
      ces'2. d'8. es'16 | \time 3/4 f'2 es'8. [( d'16 )] | % 7
      es'2 \autoBeamOff  d'8. ces'16 | % 8
      ces'4 bes2 | % 9
      as2 r4 \break |
      \time 8/16  |
      \tempo "Allegretto" \slurSolid g8 [( as16 )] bes8 ( ces'8. ) | % 11
      d'8. es'8 ~ es'8. | % 12
      \slurSolid f'8 [( es'16 )] d'8 ces'8. | % 13
      d'8 ces'16 d'8 ces'8. \break | % 14
      \slurSolid bes8 [( as16 )] bes8 ~ bes8. | % 15
      ces'8. ( ~ ces'8 bes8. ) | % 16
      as8. ~ as8 ~ as8. | % 17
      g8 as16 bes8 ces'8. \break | % 18
      d'8. es'8 ~ es'8. | % 19
      f'8 es'16 d'8 ces'8. |
      d'8 ces'16 d'8 ces'8. | % 21
      bes8 [( as16 )] bes8 ~ bes8. \break | % 22
      ces'8. ( ~ ces'8 bes8. ) | % 23
      as8. ~ as8 ~ as8. | % 24
      g8 as16 bes8 ces'8. | % 25
      d'8. es'8 ~ es'8. \break | % 26
      f'8 es'16 d'8 ces'8. | % 27
      d'8 ces'16 d'8 ces'8. | % 28
      bes8 (as16)  bes8 ~ bes8. \bar "||" \break
      \time 4/4 r2 r4 \autoBeamOn d'8. es'16 | \autoBeamOff f'2 as'4 ges'8. f'16 | 
      ges'2. f'8.es'16 | \break
      
       f'4 es'8. d'16  es'4 d'8. ces'16 |
      ces'2. d'8. es'16 | \break
       f'4 \autoBeamOn es'8. (d'16 ) es'2 | 
      \time 3/4 \autoBeamOff d'8. ces'16 ces'4 bes8. as16 | as2 r4 | \break
      
      \time 8/16 \tempo "Allegretto" \autoBeamOn g8 [(as16 )] bes8 (ces'8. ) | d'8. es'8 (es'8.) |
      
      f'8 [ es'16 ] d'8 ces'8. | d'8 ces'16 d'8 ces'8. | bes8 [(as16)] bes8 (bes8.) \break

      ces'8. ( ~ ces'8 bes8. ) |
      as8. ~ as8 ~ as8. | % 24
      g8 as16 bes8 ces'8. | % 25
      d'8. es'8 ~ es'8. \break |
      f'8 es'16 d'8 ces'8. | % 27
      d'8 ces'16 d'8 ces'8. | % 28
      bes8 [( as16 )] bes8 ~ bes8. | \break
      ces'8. ( ~ ces'8 bes8. ) |
      as8. ~ as8 ~ as8. | % 24
      g8 as16 bes8 ces'8. | % 25
      d'8. es'8 ~ es'8. \break |
      f'8 es'16 d'8 ces'8. | % 27
      d'8 ces'16 d'8 ces'8. | % 28
      bes8 [( as16 )] bes8 ~ bes8. | \break

      \pageBreak

      \time 4/4 r2 r4 \autoBeamOn d'8. es'16 | \autoBeamOff f'2 as'4 ges'8. f'16 |
      ges'2. f'8.es'16 | f'4 es'8. d'16  es'4 d'8. ces'16 | \break
      ces'2. \autoBeamOn d'8. es'16 |
      f'4 \autoBeamOff es'8. d'16  es'2 |
      \time 3/4 \autoBeamOn d'8. ces'16 ces'4 bes8. (as16) | as2 r4 | \break
      \time 8/16 \tempo "Allegretto" \autoBeamOn g8 [(as16 )] bes8 (ces'8. ) | d'8. es'8 (es'8.) |  f'8 [es'16] d'8 ces'8. | d'8 ces'16 d'8 ces'8. | \break  bes8 [(as16)] bes8 (bes8.) 

      ces'8. ( ~ ces'8 bes8. ) |
      as8. ~ as8 ~ as8. | % 24
      g8 as16 bes8 ces'8. | % 25
      d'8. es'8 ~ es'8. \break |
      f'8 (es'16) d'8 ( ces'8.) | % 27
      d'8 (ces'16) d'8 ces'8. | % 28
      bes8 [( as16 )] bes8 ~ bes8. | \break
      ces'8. ( ~ ces'8 bes8. ) |
      as8. ~ as8 ~ as8. | % 24
      g8 as16 bes8 ces'8. | % 25
      d'8. es'8 ~ es'8. \break |
      f'8 es'16 d'8 ces'8. | % 27
      d'8 ces'16 d'8 ces'8. | % 28
      bes8 [( as16 )] bes8 ~ bes8. | \break \bar "|."
    }


    \addlyrics {
      "1.В~ле-" -- тен
      ден, в~ран -- ни зо -- ри май -- ка ми ти -- хо се при --
      бли -- жи. "С~сла-" -- дък глас бла -- га ду -- ма ми
      ка -- за: „Ста -- вай, дъ -- ще, на ни -- ва
      тряб -- ва да се хо -- ди. Ста -- вай, че ба --
      ща ти вън -- ка мен и те -- бе със ко -- ла --
      та ча -- ка. Ста -- вай, че ба -- ща ти вън --
      ка мен и те -- бе със ко -- ла -- та ча --
      ка. "Слън" -- це -- то ко -- га из -- грей,
      ти на ни -- ва -- та тряб -- ва да си.
      "С~сърп" в~ръ -- ка, с~пе -- сен ти
      де -- ня за -- поч -- ни. Ста -- вай, дъ -- ще, __
      "Слън-" -- це до -- ма да не те за -- ва -- ри.
      Ста -- вай, __ че мо -- ми и мом -- ци __ вси към ни -- ва -- та са веч тръг -- на -- ли. __
      Ста -- вай, __ че мо -- ми и мом -- ци __ вси към ни -- ва -- та са веч тръг -- на -- ли. __

      Ни -- ва е, дъ -- ще, Жи -- во -- тът,
      де доб -- ро -- то се -- ме се сей.
      Кат' из -- рас -- не, "Жи-" -- вот вна -- ся
      то във нас. Ста -- вай, дъ -- ще, __
      Лю -- "бов-" -- та днес мен и те -- бе ча -- ка. __
      Ста -- вай! __ Тя ни но -- си
      свой -- та __ но -- ва, __ жи -- ва пре -- мя -- на. __
      Ста -- вай! __ Че Жи -- во -- тът вън -- ка __ мен
      и те -- бе с~бла -- гост ве -- че ча -- ка. __“

    }

    \addlyrics {
       "1.V~le-" -- ten
      den, v~ran -- ni zo -- ri may -- ka mi ti -- ho se pri --
      bli -- zhi. "S~sla-" -- dak glas bla -- ga du -- ma mi
      ka -- za: „Sta -- vay, da -- shte, na ni -- va
      tryab -- va da se ho -- di. Sta -- vay, che ba --
      shta ti van -- ka men i te -- be sas ko -- la --
      ta cha -- ka. Sta -- vay, che "ba-" -- shta ti van --
      ka men i te -- be sas ko -- la -- ta cha --
      ka. Slan -- tse -- to ko -- ga iz -- grey,
      ti na ni -- va -- ta tryab -- va da si.
      "S~sarp" v~ra -- ka, s~pe -- sen ti
      de -- nya za -- poch -- ni. Sta -- vay, da -- shte, __
      Slan -- tse do -- ma da ne te za -- va -- ri.
      Sta -- vay, __ che "mo-" -- mi i mom -- tsi __ vsi kam ni -- va -- ta sa vech trag -- na -- li. __
      Sta -- vay, __ che mo -- mi i mom -- tsi __ vsi kam ni -- va -- ta sa vech trag -- na -- li. __

      Ni -- va e, da -- shte, Zhi -- vo -- tat,
      de dob -- ro -- to se -- me se sey.
      Kat' iz -- ras -- ne, "Zhi-" -- vot vna -- sya
      to vav nas. Sta -- vay, da -- shte, __
      Lyu -- "bov-" -- ta dnes men i te -- be cha -- ka. __
      Sta -- vay! __ Tya ni no -- si
      svoy -- ta __ no -- va, __ zhi -- va pre -- mya -- na. __
      Sta -- vay! __ Che Zhi -- vo -- tat van -- ka __ men
      i te -- be s~bla -- gost ve -- che cha -- ka. __“
    }


    \header {
      title = \titleFunc "Ставай, дъще!" "Stavay, dashte"
    }

    \midi{}



  } % score




\pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/142_stavai_daste_lyrics_de.ly"

} % bookpart
