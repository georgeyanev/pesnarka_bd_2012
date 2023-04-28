\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref185
  \tocItem \markup "Мелодия – Красив Живот – Melodiya – Krasiv Zhivot "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key ges \major
      \time 4/4
      \tempoFunc "Adagio" 4 "58"
      \autoBeamOff
      \partial 4
      bes'4 | % 1
      es''8.  es''16  es''2  bes'4 | % 2
      ges'8.  es'16  es'4. ^\fermata \tempoFunc "Più mosso" 4 "72" \breathe bes'8
      bes'8
      a'8 \break | % 3
      \time 3/4  | % 3
      bes'4.  aes'!8  ges'8  f'8 | % 4
      \time 2/4  | % 4
      ges'2 | % 5
      \time 3/4  | % 5
      f'8  es'8  d'8  es'8  f'8.
      bes16 \break | % 6
      bes4.  f'8  ges'8  as'8 | % 7
      \time 3/8  | % 7
      bes'4  as'8 | % 8
      ges'4  f'8 | % 9
      es'4  d'8 |
      es'4. ~  \break | % 11
      es'4.  | % 12
      \time 4/4  | % 12
      \tempoFunc "Moderato" 4 "100"
      bes'4  bes'4  bes'4  bes'4 | % 13
      \time 6/4  | % 13
      ces''8  bes'8  a'8  bes'8
      ces''2  bes'2 | \break % 14 
      es''2 d''4  ces''8.  bes'16
      bes'2 | % 15
      as'4  ges'4  f'4  es'8  f'8
      ges'2 \break | % 16
      \time 4/4  | % 16
      f'8  es'8  d'8  es'8  f'4.
      f'8 | % 17
      f'8 (  bes8 )  bes4.  f'8  ges'8
      as'8 | % 18
      ges'4.  f'8  ges'2 | \break % 19
      f'8  es'8  d'8  es'8  f'4. (
      es'8 ) |
      es'2. r4 | % 21
      bes'4  bes'4  bes'4  bes'4 \break | % 22
      \time 6/4  | % 22
      ces''8  bes'8  a'8  bes'8
      ces''2  bes'2 | % 23
      es''2  d''4  ces''8. (  [bes'16]
      )  bes'2 \break | % 24
      as'4  ges'4  f'4  es'8  f'8
      ges'2 | % 25
      \time 4/4  | % 25
      f'8  es'8  d'8  es'8  f'4.
      bes8 \break | % 26
      bes2 r8  f'8  ges'8  as'8 | % 27
      ges'4.  f'8  ges'2 | % 28
      f'8  es'8  d'8  es'8  f'4. (
      es'8 ) | % 29
      es'2. r4 \bar "|."

    }

    \addlyrics {
      Кра -- сив "жи-" -- вот в~без -- кра --
      ен път! "При-" -- пом -- ням си по --
      ня -- ко -- га, ня -- къ -- де да --
      леч бе то. Там "Слън-" -- це нив --
      га не за -- ляз -- ва -- ше __  и
      не -- бе -- то ви -- на -- ги ла --
      зур но, Мир и Свет -- "ли-" -- на.
      Хим -- ни на Лю -- бов -- та ан --
      ге -- ли "без-" -- спир -- но пе --
      ят, треп -- тят, зву -- чат в‿а --
      корд звезд -- ни -- те все -- ле
      -- ни. И въз -- зе -- ма се
      в~ду -- ша -- та мор -- на ве --
      чен коп -- неж. В~скър -- би,
      ра -- дост, съл -- зи, пъ -- тят ми
      из -- веж -- да, знам.  Ду -- хът мо --
      гъщ ле -- ти в~слън -- че -- ва ро
      -- ди  -- на.}
      \addlyrics {
        Kra -- siv zhi -- vot v~bez -- kra --
        en pat! Pri -- "pom-" -- nyam si po --
        nya -- ko -- ga, nya -- ka -- de da --
        lech be to. Tam Slan -- tse niv --
        ga ne za -- lyaz -- va -- she __ i
        ne -- be -- to vi -- na -- gi la --
        zur no, Mir i Svet -- li -- na.
        Him -- ni na "Lyu-" -- bov -- ta an --
        ge -- li bez -- spir -- no pe --
        yat, trep -- tyat, zvu -- chat v‿a --
        kord zvezd -- ni -- te vse -- le
        -- ni. I vaz -- ze -- ma se
        v~du -- sha -- ta mor -- na ve --
        chen kop -- nezh. V~skar -- bi,
        ra -- dost, sal -- zi, pa -- tyat mi
        iz -- vezh -- da, znam. Du -- hat mo --
        gasht le -- ti v~slan -- che -- va ro
        -- di  -- na.}

        \header {
          title = \titleFunc "Мелодия – Красив Живот" "Melodiya – Krasiv Zhivot"
        }

        \midi{}

      } % score


      \markup \empty-one
      % include foreign translation(s) of the song
      \include "lyrics_de/185_melodiya_i_krasiv_zhivot_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
