\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref039
  \tocItem \markup " "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d\major
      \time2/4
      \tempoFunc "Moderato maestoso" 4 "84"
      \autoBeamOff
      a4 -> d'4 -> | % 2
      d'4 -> d'8. -> e'16 | % 3
      fis'2 -> | % 4
      fis'4 -> fis'4 -> | % 5
      fis'4 -> fis'8. -> g'16 | % 6
      a'2 \break |

      b'4 e'4 | % 8
      e'4 e'8. fis'16 | % 9
      d'4. a8 | \barNumberCheck #10
      \time 3/4  e'8 d'8 cis'8 a8 e'8 cis'8 \break | % 11
      \time 2/4  d'4. fis'8 | % 12
      \time 3/4  a'8 g'8 fis'8 \tempo "poco rit." e'8 b8 cis'8
      | % 13
      \time 2/4  d'2 | % 14
      \tempo "a tempo" a8. a16 b8 cis'8 \break | % 15
      d'8 e'8 fis'4 | % 16
      a'8 a'8 a'8 b'8 | % 17
      a'4 a'4 | % 18
      b'8 a'8 g'8 fis'8 | % 19
      e'2 \break |
      g'8. g'16 g'8 g'8 | % 21
      g'8 g'8 g'4 | % 22
      a'8 g'8 fis'8 e'8 | % 23
      fis'4 fis'4 \break | % 24
      a8 a8 b8 cis'8 | % 25
      d'4 d'4 | % 26
      d''4. cis''8 | % 27
      cis''8 b'8 b'8 cis''8 \break | % 28
      a'8 a'8 a'8 a'8 | % 29
      a'4 a'4 |
      a'8 g'8 fis'8 e'8 | % 31
      d'4. fis'8 | % 32
      a'4. g'8 \break | % 33
      fis'8 e'8 e'8 fis'8 | % 34
      d'4. fis'8 | % 35
      a'4. g'8 | % 36
       \tempo "rall." fis'8 e'8 b8 cis'8 | % 37
      d'2  \bar "|."
    }

    \addlyrics {Аз   ще   се 
   под  --  мла  --  дя,   ти   ще   се   под  --  мла  --  диш, 
   той   ще   се   под  --  мла  --  ди   то  --  ва   ми   каз  --
   ва   Лю  --  бов  --  та,   то  --  ва   ми   каз  --  ва   Лю  --
   бов  --  та.   Ний,   ко  --  и  --  то   след  --  ва  --  ме 
   пъ  --  тя   на   Доб  --  ро  --  то,   ще   се   под  --  мла  --
   дим;   вий,   ко  --  и  --  то   след  --  ва  --  те   пъ  --
   тя   на   До  --  бро  --  то,   ще   се   под  --  мла  --  ди  --
   те;   те,   ко  --  и  --  то   след  --  ват   пъ  --  тя   на 
   До  --  бро  --  то,   ще   се   под  --  мла  --  дят   то  --
   ва   ни   каз  --  ва   Лю  --  бов  --  та,   то  --  ва   ни 
   каз  --  ва   Лю  --  бов  --  та. }
    \addlyrics {Az shte se pod --
  mla --  dya,  ti shte se pod -- mla --  dish,  toy shte se pod --
  mla -- di to -- va mi kaz -- va Lyu -- bov --  ta,  to -- va mi kaz
  -- va Lyu -- bov --  ta.   Niy,  ko -- i -- to sled -- va -- me pa
  -- tya na Dob -- ro --  to,  shte se pod -- mla --  dim;   viy,  ko
  -- i -- to sled -- va -- te pa -- tya na Do -- bro --  to,  shte se
  pod -- mla -- di --  te;   te,  ko -- i -- to sled -- vat pa -- tya
  na Do -- bro --  to,  shte se pod -- mla -- dyat to -- va ni kaz --
  va Lyu -- bov --  ta,  to -- va ni kaz -- va Lyu -- bov --  ta. }

    \header {
      title = \titleFunc "Подмладяване" "Podmladyavane"
    }

    \midi{}

  } % score

  \markup \dc-one "D. C."

  \pageBreak

  % include foreign translation(s) of the song
 \include "lyrics_de/119_podmladyavane_lyrics_de.ly"

} % bookpart
