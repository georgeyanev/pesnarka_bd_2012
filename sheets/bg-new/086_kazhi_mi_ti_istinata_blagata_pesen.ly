\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref086_1
  \tocItem \markup "Кажи ми Ти Истината"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      d'8 b'4. a'8 g'4  fis'8. e'16 e'4 d'4. \bar"!" \break

      d'8 e'8 fis' g' a'  b' d'' (d''4) c''4.  b'8 a' g' b'4\tempo "rit." a' g'4. \bar ":|."

    }

    \addlyrics {
      Ка -- жи ми
      Ти Ис -- ти -- на -- та, ко -- я -- то но -- си
      сво -- бо -- да за мо -- я -- та ду -- ша. Ка --
      та ду -- ша.
    }

    \header {
      title = \titleFunc #'ref_desc_11 "Кажи ми Ти Истината" "Kaži mi Ti Istinata"
    }

    \midi{}

  } % score





  \markup \vspace #5

  \label #'ref093
  \tocItem \markup "Мисли, право мисли"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Adagio" 4 "54"

      \partial 4
      \autoBeamOff

      a4 | d'2 | \time 3/4 b'4 a' fis' | \time 4/4 a'2 ( a'8 ) r8 a4 | \time 2/4 d'2 | \time 3/4 b'4 a'4 fis'4 \break

      a'2 r8

      \tempoFunc "Più mosso" 4 "58"
      fis'8 | \repeat volta 2 {
        \time 9/8 fis'4 fis'8 fis'4 fis'8 fis'4 g'8 | a'4 a'8 b'4 a'8 a'4 fis'8 | \break

        a'4 g'8 g'4 fis'8 fis'4 e'8 | \time 6/8 e'4 e'8 fis'4 e'8 |
      } \alternative {
        {d'4. (d'4 ) fis'8 \break}
        {d'4. (d'4) a8 }
      } \repeat volta 2 {
        \time 9/8 a4 a8 a4 a8 a4 a8 | g'4 fis'8 e'4 e'8 e'4 e'8 | \break

        \time 6/8  fis'4 e'8 d'4 cis'8 |
      } \alternative { { d'4. ( d'4 ) a8 } { d'4. ( d'8 ) } } \bar "|."

    }

    \addlyrics {
      Мис -- ли, пра -- во ми -- сли! __  Мис -- ли, пра -- во мис -- ли!

      Све -- ще -- ни мис -- ли за жи -- во -- та ти кре -- пи, све -- ще -- ни мис -- ли за жи -- во -- та ти кре -- пи. __ Све -- пи. __  Кре -- пи кре -- пи

      кре -- пи све -- ще -- ни мис -- ли за жи -- во -- та ти кре -- пи. __  Кре -- пи. __
    }

    \header {
      title = \titleFunc #'ref_desc_14 "Мисли, право мисли" "Misli, pravo misli"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C.""con ripetizioni"



} % bookpart
