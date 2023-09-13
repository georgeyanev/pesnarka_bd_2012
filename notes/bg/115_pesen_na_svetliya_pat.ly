\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref115
  \tocItem \markup "Песен на светлия път – Pesen na svetlija păt"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"



    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Moderato" 4 "84"
      \autoBeamOff
      c8 g8 c8. d16 e4 c4 | a4.  b8 c4 c4 | \break


      e8 c8 e8. f16   g4 e4 |  a4. b8  c4 c4 \fermata \bar "||" \break


      \key f \major c,4 f8. g16 a4 c,4 (| g'4) bes,8. c16  a4 ( c4 ) | c4 \autoBeamOn f8. ( g16 ) a4 f4 |  \break


      \autoBeamOff g4 e8. e16  f2 |

      \bar ".|:" f4  \tuplet 3/2  { e8 f8 g8 } e4 d4  | d4 \autoBeamOn d8. ( e16 ) c2 | \break

      g'4  \autoBeamOff \tuplet 3/2 { g8 g8 g8 } c4 bes4 | a4 g8. ( [a16] )  f2  \break
      \bar ":|."

    }

    \addlyrics {
      Мо  --  га   да
      по  --  стиг  --  на   що   же  --  ла  --  я.   Във   Жи  --  во
      --  та   всич  --  ко   се   по  --  сти  --  га.   Ще   но  --  ся
      Бо  --  жи --  те   бла  --  га __   във   всич  --  ки   чо
      --  веш  --  ки   "сър-"  --  ца.   Там,   де  --  то   се   раж  --
      да   Ра  --  дост  --  та,   там,   де  --  то   ца  --  ру  --
      ва   Лю  --  бов  --  та.
    }

    \header {
      title = \titleFunc "Песен на светлия път" "Pesen na svetlija păt"
    }

    \midi{}
  } % score


  \markup \dc-two "D.C.""con ripetizione"



  % include foreign translation(s) of the song


  

} % bookpart
