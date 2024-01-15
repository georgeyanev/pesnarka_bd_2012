\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref185
  \tocItem \markup "Мелодия 1 – Красив живот"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key es \minor
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
      bes'4.  aes'?8  ges'8  f'8 | % 4
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
      es'4. \bar "||" | % 12
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
      f'8 (  [bes8] )  bes4.  f'8  ges'8
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
      es'2. \bar "|."

    }

    \addlyrics {
      Кра -- сив "жи-" -- вот в~без -- кра --
      ен път! "При-" -- пом -- ням си по --
      ня -- ко -- га, ня -- къ -- де да --
      леч бе то. Там "Слън-" -- це нив --
      га не за -- ляз -- ва -- ше __  и
      не -- бе -- то ви -- на -- ги ла --
      зур но, мир и свет -- "ли-" -- на.
      Хим -- ни на Лю -- бов -- та ан --
      ге -- ли "без-" -- спир -- но пе --
      ят, "треп-" -- тят, зву -- чат "в~а-" --
      корд "звезд-" -- ни -- те все -- ле
      -- ни. И въз -- зе -- ма се
      в~ду -- ша -- та мор -- на ве --
      чен коп -- неж. В~скър -- би,
      ра -- дост, съл -- зи пъ -- тят ми
      из -- веж -- да, знам.  "Ду-" -- хът мо --
      гъщ ле -- ти "в~слън-" -- че -- ва ро
      -- ди  -- на.}

      \header {
        title = \titleFunc #'ref_desc_17 "Мелодия 1 – Красив живот" "Melodija 1 – Krasiv Život"
      }

      \midi{}

    } % score

  } % bookpart

  % Più mosso
  %
