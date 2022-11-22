\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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
      
      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/194_nb_chetvarti_bozhestven_den_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
