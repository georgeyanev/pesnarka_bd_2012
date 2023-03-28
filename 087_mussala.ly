\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref087
  \tocItem \markup "Мусала – Mussala"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andantino" 4 "69"

      c'4 e'4 g'4 | c''2 ( d''16 c'' b' c'' ) |  d''4 c''4 a'4 | g'2 g'4 | d''2 c''4 \break |

      b'4 ( a'4 ) g'4 | a'2 g'4 | c''2.| \time 6/4 e'2 d'4. c'8 g'2 | \time 4/4 c'4 e'4  g'2  | \break

      e'4 g'4 c''2 |\time 6/4 b'4 ( d''4 ) c''4 ( a'4 ) g'2 \tempo "rit." | e'2 d'4. c'8 c'2 | \bar "||" \break

      \time 3/4 \partial 4

     
      \tempoFunc "Poco più mosso" 4 "76"
      g'4 | g'8 ( fis'8 g'8 a'8 ) g'4 | c''2 d''4 | \time 2/4 c''4 a'4 |\time 3/4 g'2 g'4 | d''2 e''4 |  \break

      \time 4/4 d''4 c'' c'' b' | \time 6/4 c''4 a' g' fis' g'2 \fermata | \time 4/4 c'4 e'4 g'2 | \break

      e'4 g'4 c''2  | \time 4/4 \tempo "        rit." b'4 ( d''4 ) c''4 ( a'4 ) | \time 3/4 g'2 e'4 | g'4 ( f'4 ) e'4 | \break

      c'2\fermata

      \tempoFunc "Più mosso" 2. "58"

      e'4 | \repeat volta 2 {
      g'2 g'4 | a'2 e'4 | g'2 f'4 f'2 d''4 |\break

      d''2 c''4 | b'2 a'4 | a'2 g'4 | g'2 e'4 | g'2 e'4 | e'2.\fermata \breathe \break

     \tempoFunc "Moderato" 4 "80"



     c'2 e'4 | g'2. \breathe | e'2 g'4 | c''2. \breathe | \time 4/4 \tempo "        rit." b'4 ( d''4 ) c''4 ( a'4 ) \break

     \time 3/4 g'2 e'4 | g'4 ( f'4 ) e'4
   } \alternative { { c'2 e'4 } {c'2. } } \bar "|."

 }



    \addlyrics {
      Е -- дин си ти, мой Му -- са -- ла, све -- ще -- но

      мя -- сто, Бо -- жи връх.  Мой Му -- са -- ла, Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, мой Му -- са -- ла.

      През я -- сен ден на про -- лет -- та ви -- де -- ли

      ли сте из -- гре -- ва от Му -- са -- ла,    Му -- са -- ла,

      Му -- са -- ла,  Му -- са -- ла,  от Му -- са -- ла! При пър -- ви

      лъч на Слън -- це -- то вдъх -- на -- ли ли сте ле -- кий дъх на Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!
    }
    \addlyrics {
      E -- din si ti, moy Mu -- sa -- la, sve -- shte -- no

      mya -- sto, Bo -- zhi vrah.  Moy Mu -- sa -- la, Mu -- sa -- la,

      Mu -- sa -- la, Mu -- sa -- la, moy Mu -- sa -- la.

      Prez ya -- sen den na pro -- let -- ta vi -- de -- li

      li ste iz -- gre -- va ot Mu -- sa -- la,    Mu -- sa -- la,

      Mu -- sa -- la,  Mu -- sa -- la,  ot Mu -- sa -- la! Pri par -- vi

      lach na Slan -- tse -- to vdah -- na -- li li ste le -- kiy dah na Mu -- sa -- la,

      Mu -- sa -- la, Mu -- sa -- la, Mu -- sa -- la, na Mu -- sa -- la! Pri la!
    }

    \header {
      title = \titleFunc "Мусала" "Mussala"
    }

    \midi{}

  } % score

  
  


  % include foreign translation(s) of the song
  \include "lyrics_de/087_mussala_lyrics_de.ly"

} % bookpart
