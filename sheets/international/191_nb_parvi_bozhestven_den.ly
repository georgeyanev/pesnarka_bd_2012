\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"


\bookpart {
  \label #'ref191
  \tocItem \markup "Новото Битие – Novoto Bitie"
  \label #'ref191_1
  \tocItem \markup "Първи Божествен ден – Părvi Božestven den"
  \include "include/bookpart-paper.ily"
  \markup \center-column \normal-text {
    \center-align


    \fill-line { \with-link #'ref_desc_18 \abs-fontsize #14  "Die nachfolgenden Lieder sind " }
    \vspace #0.5
    \fill-line { \with-link #'ref_desc_18 \abs-fontsize #14  "in der Zusammenarbeit zwischen Petar Danov," }
    \vspace #0.5
    \fill-line { \with-link #'ref_desc_18 \abs-fontsize #14  "Cvetana-Liliana Tabakova und Krăstjo Hristov entstanden" }
    
    \vspace #2
    \fill-line { \with-link #'ref_desc_18 \abs-fontsize #17  "Новото Битие – Създаването на новия Адам" }
    \vspace #0.5
    \fill-line { \with-link #'ref_desc_18 \abs-fontsize #14  "Novoto Bitie – Săzdavaneto na novija Adam" }
    \vspace #0.5
    \fill-line { \with-link #'ref_desc_18 \abs-fontsize #14  "Die Neue Genesis – Die Erschaffung des neuen Adam" }
    \vspace #2
  }

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 4/2
      \tempoFunc "Andante cantabile" 2 "60"
      \autoBeamOff
      \partial 4
      c'4 | f'2 g'2
      as'4 as'4 g'4 ( f'4 ) | \time 2/2 g'2 r4 g'4 | % 3
      \time 4/2 c''2 bes'2 as'2 f'2 \break | % 4
      g'4 ( as'4 ) g'1 \fermata g'4. a'8 | % 5
      \time 3/2  bes'2 g'2 c''2 | % 6
      bes'2 as'4 as'4 g'4 f'4 \break | % 7
      \time 4/2  g'4 as'4 g'1 d'4. es'8 | % 8
      \time 4/2  f'2 g'2 es'2 d'2 | % 9
      c'1. r2 \break |
      c'2 g'4 f'4 e'2 f'2 | % 11
      g'4 e'4 f'4 d'4 c'1 | % 12
      c''2 f''2 e''2 d''2 \break | % 13
      c''2 d''4 bes'4 a'2 a'4 a'4 | % 14
      c''2 bes'2 a'2 g'2 \break | % 15
      f'4 ( e'4 f'4 g'4 ) f'2 r4 c'4 | % 16
      f'2 g'2 bes'2. as'4 | % 17
      g'4 ( f'4 ) g'1 r4 g'4 \break | % 18
      c''2 bes'2 as'2 f'2 | % 19
      g'2 as'2 g'2. g'4 |
      c''2 d''4 d''4 es''2 c''2 \break | % 21
      bes'2 as'4 as'4 g'4 ( f'4 )  \tempo "rall." bes'4( as'4 )
      | % 22
      g'1 g'2. g'4 | % 23
      g'2 c''1.  | \break % 24
      d''4 ( es''4 ) f''2 ( g''2 ) as''2 ~ | % 25
      as''4 g''4 c''1 g'2 | % 26
      \time 2/2  g'2 g'4 g'4 \break | % 27
      \time 3/2  as'2 ( g'2 ) g'4 g'4 | % 28
      bes'2 ( as'2 ) g'4 r4 | % 29
      \time 4/2  c'2 f'4 es'4 d'2 c'2 \break |
      r1 g'4 g'4 c''4 g'4 | % 31
      as'1 g'4 es''4 es''4 d''4 | % 32
      c''1 g'2 d'4 es'4 \break | % 33
      \time 3/2  g'2 f'2 c'2 ~ | % 34
      c'2 r2 r4 c''4 | % 35
      \time 4/2  c''2. c''4 c''2 g'2 \break | % 36
      \time 2/2  r4 c''4 \tempo "rall."  c''4c''4 | % 37
      d''2. c''4 | % 38
      \time 3/2 c''4 c''4 c''2. \bar "|."
    }

    \addlyrics {
      В~на -- ча --
      ло Бог съз -- да -- де не -- бе -- то и зе --
      мя -- та. А зе -- мя -- та бе пус -- та и не
      -- ус -- тро -- е -- на. Ня -- ма -- ше ред по
      не -- я. И тъм -- ни -- на бе вър -- ху безд --
      на -- та, и Дух Бо -- жий се но -- се -- ше
      над во -- ди -- те на жи -- во -- та. И ре --
      че Бог: „Да дой -- де кра -- си -- ва -- та ви
      -- де -- ли -- на“. И тя се я -- ви във сво --
      я -- та свет -- ли -- на. И ви -- дя Бог, че __
      тя __ бе __ до -- бро. И Бог раз -- де -- ли __ свет --
      ли -- на -- та от тъм -- ни -- на -- та. И на --
      ре -- че Бог свет -- ли -- на -- та ден, а тъм
      -- ни -- на -- та нощ. __ И ста -- на ве -- чер, и
      ста -- на ут -- ро, пър -- ви ден.}

      \addlyrics {
        V~na -- ča --
        lo Bog săz -- da -- de ne -- be -- to i ze --
        mja -- ta. A ze -- mja -- ta be pus -- ta i ne
        -- us -- tro -- e -- na. Nja -- ma -- še red po
        ne -- ja. I tăm -- ni -- na be văr -- hu bezd --
        na -- ta, i Duh Bo -- žij se no -- se -- še
        nad vo -- di -- te na ži -- vo -- ta. I re --
        če Bog: „Da doj -- de kra -- si -- va -- ta vi
        -- de -- li -- na“. I tja se ja -- vi văv svo --
        ja -- ta svet -- li -- na. I vi -- dja Bog, če __
        tja __ be __ do -- bro. I Bog raz -- de -- li __ svet --
        li -- na -- ta ot tăm -- ni -- na -- ta. I na --
        re -- če Bog svet -- li -- na -- ta den, a tăm
        -- ni -- na -- ta nošt. __ I sta -- na ve -- čer, i
        sta -- na ut -- ro, păr -- vi den.}

        \header {
          title = \titleFunc "Първи Божествен ден" "Părvi Božestven den"
        }

        \midi{}

      } % score

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic \huge { "" "" \concat {"attaca" "   " }}
        }
      }

      \markup \vspace #2
      % include foreign translation(s) of the song
      \include "../../lyrics/de/191_nb_parvi_bozhestven_den_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
