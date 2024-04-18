\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref057
  \tocItem \markup "Псалом 91 – Psalom 91"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative a' {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante sostenuto" 4 "60"
      \repeat volta 2 {
        a2 a4 a4 | bes2 a4 a4 | a4 \autoBeamOff a8 a8 d,4 f4 |  a2 g2 | \break
        f2 g4 ( a4 ) |  bes2 bes2 | bes2 a4 a4 | a4 a8 a8 d,4 ( f4 ) |
        a4 ( bes4 ) a4 ( g4 ) |  \break  f2 e2 |
      }
      \alternative {
        { d2. r4 | }
        { d2. a'4 | \bar "||" }
      }

      d4 a4 bes4 ( c4 ) | d4 bes4 a4 g4 |\break bes2 a2 |  a2 d,4 f4 |
      a2 d,4 f4 | a4 ( bes4 ) a4 a4 | d4 ( a4 ) bes4 ( g4 ) | f2 ( e2 ) | \break
      d2. r4 | bes'2 a2 | g2 f2 |  e4 ( f4 ) g4 a4 |
      bes4 ( g4 ) a2 |  f2 e2 |  \break d2. r4 |  bes'2 a2 | g2 f2 |
      e4 ( f4 ) g4 a4 | bes4 ( g4 ) a2 | f2 e2 | d1| \bar "|." \break
    }

    \addlyrics {
      Кой -- то жи -- ве -- е под пок -- ри -- ва на Все -- виш -- на --
      го, ще __ пре -- би -- ва -- е под сян -- ка -- та на __
      Все -- мо -- гъ -- ща -- го. го. Ще
      каз -- вам за __ Гос -- по -- да, ще каз -- вам: Той е при --
      бе -- жи -- ще мо -- е и кре -- пост __ мо --
      я, Бог мой, Бог мой, на __ Не -- го
      ще __ се на -- де -- я. Бог мой, Бог мой,
      на __ Не -- го ще __ се на -- де -- я.
    }


    \addlyrics {
      Koj -- to ži -- ve -- e pod pok -- ri -- va na Vse -- viš -- na --
      go, šte __ pre -- bi -- va -- e pod sjan -- ka -- ta na __
      Vse -- mo -- gă -- šta -- go. go. Šte
      kaz -- vam za __ Gos -- po -- da, šte kaz -- vam: Toj e pri --
      be -- ži -- šte mo -- e i kre -- post __ mo --
      ja, Bog moj, Bog moj, na __ Ne -- go
      šte __ se na -- de -- ja. Bog moj, Bog moj,
      na __ Ne -- go šte __ se na -- de -- ja.
    }


    \header {
      title = \titleFunc "Псалом 91" "Psalom 91"
    }

    \midi{}

  } % score

\markup \empty-two

  % include foreign translation(s) of the song
  \include "../../lyrics/de/057_psalom_91_lyrics_de.ly"

} % bookpart
