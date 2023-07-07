\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref087
  \tocItem \markup "Мусала – Musala"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andantino" 4 "69"

      c'4 e'4 g'4 | c''2 ( d''16 c'' b' c'' ) |  d''4 c''4 a'4 | g'2 g'4 | \break
      
       d''2 c''4  |

      b'4 ( a'4 ) g'4 | a'2 g'4 | c''2.| \time 6/4 e'2 d'4. c'8 g'2 |  \break
      
      \time 4/4 c'4 e'4  g'2  |

      e'4 g'4 c''2 | 
      
      \time 6/4 b'4 ( d''4 ) c''4 ( a'4 ) g'2 \tempo "rit." | \break 
      
      e'2 d'4. c'8 c'4 \fermata \bar "||" \tempoFunc "Poco più mosso" 4 "76" g'4  | 

      \time 3/4 

     
     
      g'8 ( fis'8 g'8 a'8 ) g'4 |  \break
      
      c''2 d''4 | \time 2/4 c''4 a'4 |\time 3/4 g'2 g'4 | d''2 e''4 |  \break

      \time 4/4 d''4 c'' c'' b' | \time 6/4 c''4 a' g' fis' g'2 \fermata | \time 4/4 c'4 e'4 g'2 | \break

      e'4 g'4 c''2  | \time 4/4 \tempo "        rit." b'4 ( d''4 ) c''4 ( a'4 ) | \time 3/4 g'2 e'4 | g'4 ( f'4 ) d'4 | \break

      c'2\fermata

      \tempoFunc "Più mosso" 2. "58"

      e'4 | \repeat volta 2 {
      g'2 g'4 | a'2 e'4 | g'2 f'4 f'2 d''4 |\break

      d''2 c''4 | b'2 a'4 | a'2 g'4 | g'2 e'4 | g'2 f'4 | e'2.\fermata \breathe \bar "||" \break

     \tempoFunc "Moderato" 4 "80"



     c'2 e'4 | g'2. \breathe | e'2 g'4 | c''2. \breathe | \time 4/4 \tempo "        rit." b'4 ( d''4 ) c''4 ( a'4 ) \break

     \time 3/4 g'2 e'4 | g'4 ( f'4 ) d'4
   } \alternative { { c'2  \breathe e'4 } {c'2. } } \bar "|."

 }



    \addlyrics {
      Е -- дин си ти, __ мой Му -- са -- ла, све -- ще -- но

      мя -- сто, Бо -- жи връх.  Мой Му -- са -- ла, Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, мой Му -- са -- ла.

      През я -- сен ден на про -- лет -- та ви -- де -- ли

      ли сте из -- гре -- ва от Му -- са -- ла,    Му -- са -- ла,

      Му -- са -- ла,  Му -- са -- ла,  от Му -- са -- ла! При пър -- ви

      лъч на Слън -- це -- то вдъх -- на -- ли ли сте ле -- кий дъх на Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!
    }
    \addlyrics {
      E -- din si ti, __ moj Mu -- sa -- la, sve -- šte -- no

      mja -- sto, Bo -- ži vrăh.  Moj Mu -- sa -- la, Mu -- sa -- la,

      Mu -- sa -- la, Mu -- sa -- la, moj Mu -- sa -- la.

      Prez ja -- sen den na pro -- let -- ta vi -- de -- li

      li ste iz -- gre -- va ot Mu -- sa -- la,    Mu -- sa -- la,

      Mu -- sa -- la,  Mu -- sa -- la,  ot Mu -- sa -- la! Pri păr -- vi

      lăč na Slăn -- ce -- to vdăh -- na -- li li ste le -- kij dăh na Mu -- sa -- la,

      Mu -- sa -- la, Mu -- sa -- la, Mu -- sa -- la, na Mu -- sa -- la! Pri la!
    }

    \header {
      title = \titleFunc "Мусала" "Musala"
    }

    \midi{}

  } % score

  
  


  % include foreign translation(s) of the song
  \include "lyrics_de/087_mussala_lyrics_de.ly"

} % bookpart
