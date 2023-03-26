\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref193
  \tocItem \markup "     Трети Божествен ден – Treti Bozhestven den"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/2
      \tempo "Lento cantabile"
      \autoBeamOff
      r2 r4  e'4  fis'4
      e'4 | % 2
      \time 4/4  | % 2
      e'1 | % 3
      e'4  e'4  e'4  e'4 | % 4
      e''2. d''4 \break  | % 5
      \time 3/2   | % 5
      c''2 c''2 b'4  a'4 | % 6
      c''2 b'2 r2 | % 7
      r2  e'4  e'4  e'4  d'4 \break | % 8
      e'1 r2 \bar "||"
      \key c \major | % 9
      e'2 ^\markup{ \bold {Più mosso} }  f'?4  a'2
      gis'4 | \barNumberCheck #10
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
      r2.  e'4 ^\markup{ \bold {Tempo I} } | % 19
      e'2  d'2 | \barNumberCheck #20
      e'1 \breathe  \break | % 21
      \time 3/4  | % 21
      e'2  f'4  | % 22
      a'2  gis'4 | % 23
      b'4 d''4 c''4 | % 24
      b'2 r4 | % 25
      c''2 c''8 --  ^\markup{ \bold {sostenuto} }
      c''8 -- \break | % 26
      \time 5/4  | % 26
      fis''2 fis''4 e''4 dis''4 | % 27
      \time 3/4  | % 27
      fis''2 e''4 ~ | % 28
      \time 4/4  | % 28
      e''4 r4  e'4 ^\markup{ \bold {a tempo} }
      b'4 | % 29
      \time 6/4  | % 29
      a'2.  a'4  a'4  a'4 \break |
      \time 5/4  |
      e''2 d''4 c''4  a'4  | % 31
      b'2 b'2 r4 | % 32
      \time 3/4  | % 32
      gis'2  gis'4 | % 33
      b'2 (  gis'4 ) | % 34
      gis'2. ~ \break | % 35
      gis'4 b'4 ( cis''4 ) | % 36
      \time 4/4  | % 36
      dis''2 e''2  | % 37
      fis''2. ^\fermata e''4 -- | % 38
      e''1 | % 39
      \time 2/4  | % 39
      r4  f'4 |
      \time 3/4  |
      f'2  e'4 \break | % 41
      b'2  a'4 | % 42
      \time 4/4  | % 42
      r4  e'4  e'4  e'4 | % 43
      \time 3/4  | % 43
      b'2  a'4 | % 44
      \time 6/4  | % 44
      e'4 ^\markup{ \bold {rall.} }  e'4 e'1
      \bar "|."
    }

    \addlyrics {
      И
      ре -- че Бог: „Да се съ -- бе --
      ре во -- да -- та под не -- бе --
      то.“ И ста -- на та -- ка. И я --
      ви се су -- ша -- та. И на --
      ре -- че я Бог зе -- мя. И съ
      -- бра -- на -- та  во -- да на
      -- ре -- че мо -- ре. И ре -- че
      Бог, и из -- рас -- на све -- жа
      тре -- ва със се -- ме -- на спо --
      ред ви -- да си  и дър -- во
      със пло -- до -- ве спо -- ред ви --
      да си. И ви -- дя  Бог, __ че
      всич -- ко бе до -- бро. И ста
      -- на ве -- чер, и ста -- на ут --
      ро, тре -- ти ден.}
      \addlyrics {
        I
        re -- che Bog: „Da se sa -- be --
        re vo -- da -- ta pod ne -- be --
        to.“ I sta -- na ta -- ka. I ya --
        vi se su -- sha -- ta. I na --
        re -- che ya Bog ze -- mya. I sa
        -- bra -- na -- ta  vo -- da na
        -- re -- che mo -- re. I re -- che
        Bog, i iz -- ras -- na sve -- zha
        tre -- va sas se -- me -- na spo --
        red vi -- da si  i dar -- vo
        sas plo -- do -- ve spo -- red vi --
        da si. I vi -- dya  Bog, __ che
        vsich -- ko be do -- bro. I sta
        -- na ve -- cher, i sta -- na ut --
        ro, tre -- ti den.}

        \header {
          title = \titleFunc "Трети Божествен ден" "Treti Bozhestven den"
        }

        \midi{}

      } % score

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic { "" "" \concat {"attaca" "   " }}
        }
      }

      \markup \empty-one

      % include foreign translation(s) of the song
      \include "lyrics_de/193_nb_treti_bozhestven_den_lyrics_de.ly"


       \markup \empty-three

 \label #'ref194
  \tocItem \markup "     Четвърти Божествен ден – Chetvarti Bozhestven den"
       \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato espressivo" 4 "88"
      \autoBeamOff
      \partial 4
      r8  f'8  | % 2
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
      c''2 ^\markup{ \bold {poco rit.} } b'4
      f'4  d'4 \break | % 21
      \time 4/4  | % 21
      e'2. r4 | % 22
      \time 3/4  | % 22
      e'2 ^\markup{ \bold {a tempo} }  f'4 | % 23
      a'2 b'4 | % 24
      b'2 r8 b'8 | % 25
      \time 5/4  | % 25
      g''2 fis''4 e''4 d''4 \break  | % 26
      e''2 c''4 ( b'4 )  a'4 | % 27
      \time 4/4  | % 27
      d''4 d''4 c''4  a'4 | % 28
      b'2 ^\fermata  e'4 ^\markup{ \bold {Poco lento} }
      e'4 | % 29
      f'2 (  e'2 ) \break |
      a'2 b'4 ( c''4 ) | % 31
      d''2 e''2 | % 32
      f''2. -- e''4 --  | % 33
      a'2. -- r4 | % 34
      r4  fis'!4  fis'4  fis'4 \break | % 35
      fis'2  e'2 | % 36
      r4  fis'4  fis'4  fis'4 | % 37
      a'2.  fis'4 | % 38
      \time 6/4  | % 38
      fis'4  \tempo "rall." e'4  fis'2
      fis'2 \bar "|."
    }

    \addlyrics {
      И
      ре -- че Бог: „Да грей --
      нат све -- ти -- ла на не -- бес --
      ни -- я свод.“ И ста -- на та --
      ка. И на -- пра -- ви Бог  две
      све -- ти -- ла:  го -- ля -- мо --
      то да вла -- дей  де -- ня,
      а мал -- ко -- то нощ -- та. И на --
      пра -- ви Бог, че грей -- на -- ха
      звез -- ди на  не -- бес -- ни --
      я прос -- тор. И ви -- дя  Бог,
      че  всич -- ко бе до -- бро. И
      ста -- на ве -- чер, и ста -- на
      ут -- ро, ден чет -- вър -- ти.}
      \addlyrics {
        I
        re -- che Bog: „Da grey --
        nat sve -- ti -- la na ne -- bes --
        ni -- ya svod.“ I sta -- na ta --
        ka. I na -- pra -- vi Bog  dve
        sve -- ti -- la:  go -- lya -- mo --
        to da vla -- dey  de -- nya,
        a mal -- ko -- to nosht -- ta. I na --
        pra -- vi Bog, che grey -- na -- ha
        zvez -- di na  ne -- bes -- ni --
        ya pros -- tor. I vi -- dya  Bog,
        che  vsich -- ko be do -- bro. I
        sta -- na ve -- cher, i sta -- na
        ut -- ro, den chet -- var -- ti.}

        \header {
          title = \titleFunc " Четвърти Божествен ден" "Chetvarti Bozhestven den"
        }

        \midi{}

      } % score

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic { "" "" \concat {"attaca" "   " }}
        }
      }
      
  

      % include foreign translation(s) of the song
      \include "lyrics_de/194_nb_chetvarti_bozhestven_den_lyrics_de.ly"


      

    } % bookpart

    % Più mosso
    %
