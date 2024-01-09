\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref093
  \tocItem \markup "Мисли, право мисли – Misli, pravo misli"
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
      Ми -- сли, пра -- во ми -- сли! __  Ми -- сли, пра -- во ми -- сли!

      Све -- ще -- ни ми -- сли за Жи -- во -- та ти "кре-" -- пи, све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи. __ Све -- пи. __  Кре -- пи кре -- пи

      кре -- пи све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи. __  Кре -- пи. __ 
    }

   \addlyrics {
      Mi -- sli, pra -- vo mi -- sli! __  Mi -- sli, pra -- vo mi -- sli!

      Sve -- šte -- ni mi -- sli za Ži -- vo -- ta ti kre -- pi, sve -- šte -- ni mi -- sli za Ži -- vo -- ta ti kre -- pi. __ Sve -- pi. __  Kre -- pi kre -- pi

      kre -- pi sve -- šte -- ni mi -- sli za Ži -- vo -- ta ti kre -- pi. __  Kre -- pi. __ 
    }


    \header {
      title = \titleFunc "Мисли, право мисли" "Misli, pravo misli"
    }

    \midi{}

  } % score
 
  \markup \dc-two "D.C.""con ripetizioni"
  

  % include foreign translation(s) of the song
  \include "../../lyrics/de/093_misli_pravo_misli_lyrics_de.ly"

} % bookpart
