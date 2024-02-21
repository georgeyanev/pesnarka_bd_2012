\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref142
  \tocItem \markup "Ставай, дъще!"
  \include "include/bookpart-paper.ily"
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller


      \context {
        \Score
        \omit BarNumber %remove bar numbers
        
        
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        
        
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout


    \new Voice \absolute {
      \clef treble

      \key es \minor

      \time 4/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      d'8. es'16 | % 2
      f'2 as'4 ges'8. f'16 | ges'2. f'8.es'16 | f'4 es'8.  d'16  es'4 d'8. ces'16 | \break
      ces'2. d'8. es'16 | \time 3/4 f'2 es'8. [( d'16 )] | % 7
      es'2  d'8. ces'16 | % 8
      ces'4 bes2 | % 9
      as2 r4  \bar "||"  \break
      \time 8/16  |
      \tempo "Allegretto" g8 [( as16 )] bes8 ( ces'8. ) | % 11
      d'8. es'8 ~ es'8. | % 12
      f'8 [( es'16 )] d'8 ces'8. | % 13
      d'8 ces'16 d'8 ces'8. \break | % 14
      bes8 [( as16 )] bes8 ~ bes8. | % 15
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
      bes8 [(as16) ] bes8 ~ bes8. \bar "||" \break
      \tempo "Tempo I"
      \time 4/4 r2 r4 d'8. es'16 | f'2 as'4 ges'8. f'16 |
      ges'2. f'8.es'16 | \break

      f'4 es'8. d'16  es'4 d'8. ces'16 |
      ces'2. d'8. es'16 | \break
      f'4 es'8. [(d'16 ) ]es'2 |
      \time 3/4 d'8. ces'16 ces'4 bes8. as16 | as2 r4 | \bar "||"  \break

      \time 8/16 \tempo "Allegretto" g8 [(as16 )] bes8 (ces'8. ) | d'8. es'8 (es'8.) |

      f'8 es'16  d'8 ces'8. | d'8 ces'16 d'8 ces'8. | bes8 [(as16)] bes8 (bes8.) \break

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
      bes8 [( as16 )] bes8 ~ bes8. | \bar "||"  \break
      \tempo "Tempo I"
      \time 4/4 r2 r4  d'8. es'16 | f'2 as'4 ges'8. f'16 |
      ges'2. f'8.es'16 | f'4 es'8. d'16  es'4 d'8. ces'16 | \break
      ces'2. d'8. es'16 |
      f'4 es'8. d'16  es'2 |
      \time 3/4 d'8. ces'16 ces'4 bes8. [(as16) ] | as2 r4 | \bar "||"
      \time 8/16 \tempo "Allegretto" g8 [(as16 )] bes8 (ces'8. ) | d'8. es'8 (es'8.) |  f'8 es'16 d'8 ces'8. | d'8 ces'16 d'8 ces'8. | \break  bes8 [(as16)] bes8 (bes8.)

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
      "1. В~ле-" -- тен
      ден, в~ран -- ни зо -- ри май -- ка ми ти -- хо се приб --
      ли -- жи. "С~сла-" -- дък глас бла -- га ду -- ма ми
      ка -- за: „Ста -- вай, __ дъ -- ще, __ на __ ни -- ва
      тряб -- ва да се хо -- ди. __ Ста -- вай, __ че ба --
      ща ти вън -- ка __ мен и те -- бе със ко -- ла --
      та ча -- ка. __ Ста -- вай, __ че ба -- ща ти вън --
      ка __  мен и те -- бе със ко -- ла -- та ча --
      ка. __

      "2. Слън" -- це -- то ко -- га из -- грей,
      ти на ни -- ва -- та тряб -- ва да си.
      "С~сърп" в~ръ -- ка, с~пе -- сен ти
      де -- ня за -- поч -- ни. Ста -- вай, __ дъ -- ще, __
      "Слън-" -- це до -- ма да не те за -- ва -- ри. __
      Ста -- вай, __ че мо -- ми и мом -- ци __ вси към ни -- ва -- та са веч тръг -- на -- ли. __
      Ста -- вай, __ че мо -- ми и мом -- ци __ вси към ни -- ва -- та са веч тръг -- на -- ли. __

      "3. Ни- " -- ва е, дъ -- ще, жи -- во -- тът,
      де доб -- ро -- то се -- ме се сей.
      Кат' из -- рас -- не, "жи-" -- вот вна -- ся
      то във __ нас. Ста -- вай, __ дъ -- ще, __
      Лю -- бов -- та днес мен и те -- бе ча -- ка. __
      Ста -- вай! __ Тя ни но -- си
      свой -- та __ но -- ва, __ жи -- ва пре -- мя -- на. __
      Ста -- вай! __ Че "жи-" -- во -- тът вън -- ка __ мен
      и те -- бе с~бла -- гост ве -- че ча -- ка“. __

    }

    \header {
      title = \titleFunc #'ref_desc_13 "Ставай, дъще!" "Stavaj, dăšte!"
    }

    \midi{}



  } % score



} % bookpart
