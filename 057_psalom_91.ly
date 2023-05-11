\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref057
  \tocItem \markup "Псалм 91 – Psalm 91"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative a' {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante sostenuto" 4 "60"
      \repeat volta 2 {
        a2 a4 a4 | bes2 a4 a4 | a4 \autoBeamOff a8 a8 d,4 f4 |  a2 g2 |\break
        f2 g4 ( a4 ) | bes2 bes2 | bes2 a4 a4 | a4 a8 a8 d,4 ( f4 ) | \break
        a4 ( bes4 ) a4 ( g4 ) |  f2 e2 |
      }
      \alternative {
        { d2. r4 | }
        { d2. a'4 | \bar "||" \break }
      }

      d4 a4 bes4 ( c4 ) | d4 bes4 a4 g4 | bes2 a2 | a2 d,4 f4 | \break
      a2 d,4 f4 | a4 ( bes4 ) a4 a4 | d4 ( a4 ) bes4 ( g4 ) | f2 ( e2 ) | \break
      d2. r4 | bes'2 a2 | g2 f2 |  e4 ( f4 ) g4 a4 | \break
      bes4 ( g4 ) a2 | f2 e2 | d2. r4 | bes'2 a2 | g2 f2 | \break
      e4 ( f4 ) g4 a4 | bes4 ( g4 ) a2 | f2 e2 | d1| \bar "|." \break
    }

    \addlyrics {
      Кой -- то жи -- ве -- е под по -- кри -- ва на Все -- виш -- на --
      го, ще пре -- би -- ва -- е под сян -- ка -- та на
      Все -- мо -- гъ -- ща -- го. го. Ще
      каз -- вам за Гос -- по -- да, ще каз -- вам: Той е при --
      бе -- жи -- ще мо -- е и кре -- пост мо --
      я, Бог мой, Бог мой, на Не -- го
      ще се на -- де -- я. Бог мой, Бог мой,
      на Не -- го ще се на -- де -- я.
    }

 \addlyrics {
      Koj -- to ži -- ve -- e pod po -- kri -- va na Vse -- viš -- na --
      go, šte pre -- bi -- va -- e pod sjan -- ka -- ta na
      Vse -- mo -- gă -- šta -- go. go. Šte
      kaz -- vam za Gos -- po -- da, šte kaz -- vam: Toj e pri --
      be -- ži -- šte mo -- e i kre -- post mo --
      ja, Bog moj, Bog moj, na Ne -- go
      šte se na -- de -- ja. Bog moj, Bog moj,
      na Ne -- go šte se na -- de -- ja.
    }


    \header {
      title = \titleFunc "Псалм 91" "Psalm 91"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/057_psalom_91_lyrics_de.ly"

} % bookpart
