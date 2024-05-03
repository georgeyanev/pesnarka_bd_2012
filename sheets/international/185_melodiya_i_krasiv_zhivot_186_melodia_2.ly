\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref185
  \tocItem \markup "Мелодия 1 – Красив живот – Melodija 1 – Krasiv život"
  \include "include/bookpart-paper.ily"
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
      es'4. ~   | % 11
      es'4. \bar "||" | \break % 12
      \time 4/4  | % 12
      \tempoFunc "Moderato" 4 "100"
      bes'4  bes'4  bes'4  bes'4 | % 13
      \time 6/4  | % 13
      ces''8  bes'8  a'8  bes'8
      ces''2  bes'2 | % 14
      es''2 d''4  ces''8.  bes'16
      bes'2 | \break % 15
      as'4  ges'4  f'4  es'8  f'8
      ges'2 | % 16
      \time 4/4  | % 16
      f'8  es'8  d'8  es'8  f'4.
      f'8 | % 17
      f'8 (  [bes8] )  bes4.  f'8  ges'8
      as'8 | \break % 18
      ges'4.  f'8  ges'2 |  % 19
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
      ен път! При -- пом -- ням си по --
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


      \addlyrics {
        Kra -- siv "ži-" -- vot v~bez -- kra --
        en păt! Pri -- pom -- njam si po --
        nja -- ko -- ga, nja -- kă -- de da --
        leč be to. Tam Slăn -- ce niv --
        ga ne za -- ljaz -- va -- še __  i
        ne -- be -- to vi -- na -- gi la --
        zur no, mir i svet -- li -- na.
        Him -- ni na Lju -- bov -- ta an --
        ge -- li bez -- spir -- no pe --
        jat, trep -- tjat, zvu -- čat "v~a-" --
        kord zvezd -- ni -- te vse -- le
        -- ni. I văz -- ze -- ma se
        v~du -- ša -- ta mor -- na ve --
        čen kop -- než. V~skăr -- bi,
        ra -- dost, săl -- zi pă -- tjat mi
        iz -- vež -- da, znam.  "Du-" -- hăt mo --
        găšt le -- ti v~slăn -- če -- va ro
        -- di  -- na.}

        \header {
          title = \titleFunc "Мелодия 1 – Красив живот" "Melodija 1 – Krasiv život"
        }

        \midi{}

      } % score

      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/185_melodiya_i_krasiv_zhivot_lyrics_de.ly"
      \markup \vspace #2
      \label #'ref186
      \tocItem \markup "Мелодия 2 – Melodija 2"
      \paper {
        % the system system spacing is custom here so do not include bookpart-paper.ily
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
        top-margin = 1.2\cm
        bottom-margin = 1.0\cm
        ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

        % change distance between staves
        system-system-spacing =
        #'((basic-distance . 14)
           (minimum-distance . 6)
           (padding . 1)
           (stretchability . 10))
      }

      \header {
        tagline = ##f
      }
      \score {
        \include "include/score-layout.ily"



        \new Voice \absolute {
          \clef treble
          \key des \major
          \time 3/8
          \tempoFunc "Allegro" 4. "48"
          des''8. des''16 c''16 des''16
          | % 2
          es''4 des''8 | % 3
          des''8. c''16 c''16 des''16
          | % 4
          c''4 bes'8  | % 5
          bes'4  as'8 | % 6
          as'4. \break| % 7
          es'4  f'16  ges'16  | % 8
          bes'8.  as'16  as'16 bes'16  | % 9
          as'8.  ges'16  f'16  ges'16 |
          f'8.  es'16  des'16  es'16 | % 11
          des'4. \break | % 12
          as'4  as'8  | % 13
          as'8  g'8  as'8 | % 14
          bes'4  as'8  | % 15
          as'4.| % 16
          des''4 des ''8 | % 17
          des''8 c''8 des''8 \break | % 18
          es''4 des''8  | % 19
          c''8. bes'16  as'16 bes'16 |
          as'4  ges'8   | % 21
          f'8. es'16 des'16  es'16 | % 22
          des'4. |
          es'8  f'8  ges'8 \break| % 24
          as'4 bes'16 c''16  | % 25
          des''4  f'8 | % 26
          as'4  ges'8 |  % 27
          ges'4. | % 28
          bes4  c'16  des'16   | % 29
          f'4  es'8  |
          des'4  c'8  \break | % 31
          es'4  des'8 | % 32
          des'4. |  \bar "||" % 33
          as'8 f''8 f''8 | % 34
          ges''16 f''16 es''16 f''16
          es''16 des''16  | % 35
          as'8 es''8 es''8 | % 36
          es''4.  | % 37
          as'8 es''8 es''8   | \break  % 38
          f''16 es''16 des''16 es''16
          des''16 c''16 | % 39
          des''16 c''16 bes'16 c''16
          bes'16  as'16 |
          as'8 des''8 des''8 | % 41
          des''4.  | \break  % 42
          \bar ".|:-|" as'16 des''16 des''16 des''16
          des''16 des''16  | % 43
          as'16 es''16 es''16 es''16
          es''16 es''16  | % 44
          f''16 es''16 des''16 c''16
          des''16 es''16 | % 45
          des''4. \bar ":|."
        }



        \header {
          title = \titleFunc "Мелодия 2" " Melodija 2"
        }

        \midi{}

      } % score

    } % bookpart

    % Più mosso
    %
