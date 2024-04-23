\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref119
  \tocItem \markup "Подмладяване – Podmladjavane"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"



    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Moderato maestoso" 4 "84"
      \autoBeamOff
      a4 -> d'4 ->  % 2
      d'4 -> | d'8. -> e'16  % 3
      fis'2 -> | % 4
      fis'4 -> fis'4 ->  % 5
      fis'4 -> | fis'8. -> g'16  % 6
      a'2 |

      b'4 e'4  % 8
      e'4 | \break  e'8. fis'16  % 9
      d'4. a8 | e'8  d'8 cis'8 a8 e'8 cis'8 | % 11
      \time 2/4  d'4. fis'8 | \break  % 12
      \time 3/4  a'8 g'8 fis'8 \tempo "poco rit." e'8 b8 cis'8
      | % 13
      d'2 r4 | % 14
      \time 2/4
      \tempo "a tempo" a8. a16 b8 cis'8  | % 15
      d'8 e'8 fis'4 | \break % 16
      a'8 a'8 a'8 b'8 | % 17
      a'4 a'4 | % 18
      b'8 a'8 g'8 fis'8 | % 19
      e'2  |
      g'8. g'16 g'8 g'8 | \break % 21
      g'8 g'8 g'4 | % 22
      a'8 g'8 fis'8 e'8 | % 23
      fis'4 fis'4  | % 24
      a8 a8 b8 cis'8 | % 25
      d'4 d'4 | \break % 26
      d''4. cis''8 | % 27
      cis''8 b'8 b'8 cis''8 | % 28
      a'8 a'8 a'8 a'8 | % 29
      a'4 a'4 |
      a'8 g'8 fis'8 e'8 | \break  % 31
      d'4. fis'8 | % 32
      a'4. g'8 | % 33
      fis'8 e'8 e'8 fis'8 | % 34
      d'4. fis'8 | % 35
      a'4. g'8 | % 36
      \tempo "rall." fis'8 e'8 b8 cis'8 | % 37
      d'2  \bar "|."
    }

    \addlyrics {
      Аз   ще   се
      "под-"  --  "мла-"  --  дя,   ти   ще   се   "под-"  --  "мла-"  --  диш,
      той   ще   се   под  --  "мла-"  --  "ди –"   то  --  ва   ми   каз  --
      ва   Лю  --  бов  --  та,   то  --  ва   ми   каз  --  ва   Лю  --
      бов  --  та.   Ний,   ко  --  и  --  то   след  --  ва  --  ме
      пъ  --  тя   на   доб  --  ро  --  то,   ще   се   под  --  мла  --
      дим;   вий,   ко  --  и  --  то   след  --  ва  --  те   пъ  --
      тя   на   доб  --  ро  --  то,   ще   се   под  --  мла  --  ди  --
      те;   те,   ко  --  и  --  то   след  --  ват   пъ  --  тя   на
      доб  --  ро  --  то,   ще   се   под  --  мла  --  дят,   то  --
      ва   ни   каз  --  ва   Лю  --  бов  --  та,   то  --  ва   ни
      каз  --  ва   Лю  --  бов  --  та.
    }
    \addlyrics {
      Az   šte   se
      pod  --  "mla-"  --  dja,   ti   šte   se   pod  --  mla  --  diš,
      toj   šte   se   pod  --  mla  --  "di –"   to  --  va   mi   kaz  --
      va   Lju  --  bov  --  ta,   to  --  va   mi   kaz  --  va   Lju  --
      bov  --  ta.   Nij,   ko  --  i  --  to   sled  --  va  --  me
      pă  --  tja   na   dob  --  ro  --  to,   šte   se   pod  --  mla  --
      dim;   vij,   ko  --  i  --  to   sled  --  va  --  te   pă  --
      tja   na   dob  --  ro  --  to,   šte   se   pod  --  mla  --  di  --
      te;   te,   ko  --  i  --  to   sled  --  vat   pă  --  tja   na
      dob  --  ro  --  to,   šte   se   pod  --  mla  --  djat,   to  --
      va   ni   kaz  --  va   Lju  --  bov  --  ta,   to  --  va   ni
      kaz  --  va   Lju  --  bov  --  ta.
    }

    \header {
      title = \titleFunc "Подмладяване" "Podmladjavane"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

  % include foreign translation(s) of the song
  \include "../../lyrics/de/119_podmladyavane_lyrics_de.ly"

} % bookpart
