\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref193
  \tocItem \markup "     Трети Божествен ден – Treti Božestven den"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 3/2
      \tempo "Lento cantabile"
      \autoBeamOff
      \partial 2.
      e'4  fis'4
      e'4 | % 2
      \time 4/4  | % 2
      e'1 | % 3
      e'4  e'4  e'4  e'4 | % 4
      e''2. d''4   | % 5
      \time 3/2   | % 5
      c''2 c''2 b'4  a'4 | \break % 6
      c''2 b'2 r2 | % 7
      r2  e'4  e'4  e'4  d'4 | % 8
      e'1 r2 \bar "||"
      \key a \minor | % 9
      \tempo "Più mosso"e'2 f'?4  a'2
      gis'4 |
      b'4 ( d''4 ) c''4 b'2. \break | % 11
      b'4 c''4  a'2 b'4 b'4
      | % 12
      c''2 b'4 (  a'4 ) b'2 -- | % 13
      \time 4/4  | % 13
      b'4 b'4 e''4 e''4 | % 14
      d''4 ( c''4 ) b'4 (  a'4 )
      \break | % 15
      b'2 r4 b'4 | % 16
      d''2 c''4  a'4 | % 17
      b'1 | % 18
      r2.  \tempo "Tempo I" e'4 | % 19
      e'2  d'2 |
      e'1 \breathe   | % 21
      \time 3/4  | % 21
      e'2  e'4  |  % 22
      a'2  gis'4 | \break % 23
      b'4 d''4 c''4 | % 24
      b'2 r4 | % 25
      c''2 \tempo"sostenuto" c''8 --
      c''8 -- | % 26
      \time 5/4  | % 26
      fis''2 fis''4 e''4 dis''4 |  % 27
      \time 3/4  | % 27
      fis''2 e''4 ~ |\break   % 28
      \time 4/4  | % 28
      e''4 r4  \tempo"a tempo"e'4
      b'4 | % 29
      \time 6/4  | % 29
      a'2.  a'4  a'4  a'4 |
      \time 5/4  |
      e''2 d''4 c''4  a'4  | % 31
      b'2 b'2 r4 | \break % 32
      \time 3/4  | % 32
      gis'2  gis'4 |  % 33
      b'2 (  gis'4 ) | % 34
      gis'2. ~ | % 35
      gis'4 b'4 ( cis''4 ) | % 36
      \time 4/4  | % 36
      dis''2 e''2  | % 37
      fis''2. ^\fermata e''4 -- | % 38
      e''1 | \break % 39
      \time 2/4  | % 39
      r4  f'?4 |
      \time 3/4  |
      f'2  e'4 | % 41
      b'2  a'4 | % 42
      \time 4/4  | % 42
      r4  e'4  e'4  e'4 | % 43
      \time 6/4  | % 43
      b'2.  a'4   % 44
      \tempo"rall."e'4 e'4 | e'2. \fermata
      \bar "|."
    }

    \addlyrics {
      И
      ре -- че Бог: „Да се съ -- бе --
      ре во -- да -- та под не -- бе --
      то“. И ста -- на та -- ка. И я --
      ви се су -- ша -- та. И на --
      ре -- че я Бог зе -- мя. И съ
      -- бра -- на -- та __  во -- да на
      -- ре -- че мо -- ре. И ре -- че
      Бог, и из -- рас -- на све -- жа
      тре -- ва със се -- ме -- на спо --
      ред ви -- да си __  и дър -- во
      със пло -- до -- ве спо -- ред ви --
      да си. И ви -- дя __  Бог, __ че __
      всич -- ко бе доб -- ро. И ста
      -- на ве -- чер, и ста -- на ут --
      ро, тре -- ти ден.}


      \addlyrics {
        I
        re -- če Bog: „Da se să -- be --
        re vo -- da -- ta pod ne -- be --
        to“. I sta -- na ta -- ka. I ja --
        vi se su -- ša -- ta. I na --
        re -- če ja Bog ze -- mja. I să
        -- bra -- na -- ta __  vo -- da na
        -- re -- če mo -- re. I re -- če
        Bog, i iz -- ras -- na sve -- ža
        tre -- va săs se -- me -- na spo --
        red vi -- da si __  i dăr -- vo
        săs plo -- do -- ve spo -- red vi --
        da si. I vi -- dja __  Bog, __ če __
        vsič -- ko be dob -- ro. I sta
        -- na ve -- čer, i sta -- na ut --
        ro, tre -- ti den.}

        \header {
          title = \titleFunc "Трети Божествен ден" "Treti Božestven den"
        }

        \midi{}

      } % score

      \markup \empty-one

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic \huge { "" "" \concat {"attaca" "   " }}
        }
      }

      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/193_nb_treti_bozhestven_den_lyrics_de.ly"



      \markup \vspace #5

      \label #'ref194
      \tocItem \markup "     Четвърти Божествен ден – Četvărti Božestven den"
      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key e \minor
          \time 3/4
          \tempoFunc "Moderato espressivo" 4 "88"
          \autoBeamOff
          \partial 8
          f'8  | % 2
          f'2  e'4 | % 3
          a'2  gis'4 | % 4
          b'4 ( d''4 c''4 ) | % 5
          b'2. | % 6
          r4 c''4 c''4 \break  | % 7
          e''4 e''4 c''4 | % 8
          g''4 ^\fermata -- g''4 -- fis''4
          | % 9
          e''2 ^\fermata  e'4 -- |
          e'4 --  e'4 --  d'4 -- | % 11
          \time 4/4  | % 11
          e'2 ^\fermata  e'4  e'4 \break | % 12
          a'2 b'2 | % 13
          c''4 (  a'4 ) d''2 | % 14
          c''4  a'4 b'2 ~ | % 15
          b'2 r4 b'4 | % 16
          fis''2. e''4 \break  | % 17
          d''2 d''4 d''4 | % 18
          c''4 (  a'4 ) b'4 ( c''4 ) | % 19
          b'2 r4 b'4 |
          \time 5/4  |
          \tempo"poco rit." c''2 b'4
          f'4  d'4 \break | % 21
          \time 4/4  | % 21
          e'2. r4 | % 22
          \time 3/4  | % 22
          \tempo"a tempo"e'2 f'4 | % 23
          a'2 b'4 | % 24
          b'2 r8 b'8 | % 25
          \time 5/4  | % 25
          g''2 fis''?4 e''4 d''4 \break  | % 26
          e''2 c''4 ( b'4 )  a'4 | % 27
          \time 4/4  | % 27
          d''4 d''4 c''4  a'4 | % 28
          b'2 ^\fermata \tempo"Poco lento" e'4
          e'4 | % 29
          f'2 (  e'2 ) \break |
          a'2 b'4 ( c''4 ) | % 31
          d''2 e''2 | % 32
          f''2. -- e''4 --  | % 33
          a'2. -- r4 | % 34
          r4  fis'?4  fis'4  fis'4 \break | % 35
          fis'2  e'2 | % 36
          r4  fis'4  fis'4  fis'4 | % 37
          a'2.  fis'4 | % 38
          \time 6/4  | % 38
          fis'4  \tempo "rall." e'4  fis'2
          fis'4. \bar "|."
        }

        \addlyrics {
          И
          ре -- че Бог: „Да грей --
          нат све -- ти -- ла на не -- бес --
          ни -- я свод“. И ста -- на та --
          ка. И на -- пра -- ви Бог __  две
          све -- ти -- ла: __  го -- ля -- мо --
          то да вла -- дей __  де -- ня,
          а мал -- ко -- то нощ -- та. И на --
          пра -- ви Бог, че грей -- на -- ха
          звез -- ди на __  не -- бес -- ни --
          я прос -- тор. И ви -- дя __  Бог,
          че __  всич -- ко бе доб -- ро. И
          ста -- на ве -- чер, и ста -- на
          ут -- ро, ден чет -- вър -- ти.}
          \addlyrics {
            I
            re -- če Bog: „Da grej --
            nat sve -- ti -- la na ne -- bes --
            ni -- ja svod“. I sta -- na ta --
            ka. I na -- pra -- vi Bog __  dve
            sve -- ti -- la: __  go -- lja -- mo --
            to da vla -- dej __  de -- nja,
            a mal -- ko -- to nošt -- ta. I na --
            pra -- vi Bog, če grej -- na -- ha
            zvez -- di na __  ne -- bes -- ni --
            ja pros -- tor. I vi -- dja __  Bog,
            če __  vsič -- ko be dob -- ro. I
            sta -- na ve -- čer, i sta -- na
            ut -- ro, den čet -- văr -- ti.}

            \header {
              title = \titleFunc "Четвърти Божествен ден" "Četvărti Božestven den"
            }

            \midi{}

          } % score
          \markup \empty-one
          \markup \raise #2.8 \override #'(baseline-skip . 2) {
            \column {
              \fill-line \italic { "" "" \concat {"attaca" "   " }}
            }
          }

          \markup \vspace #3

          % include foreign translation(s) of the song
          \include "../../lyrics/de/194_nb_chetvarti_bozhestven_den_lyrics_de.ly"




        } % bookpart

        % Più mosso
        %
