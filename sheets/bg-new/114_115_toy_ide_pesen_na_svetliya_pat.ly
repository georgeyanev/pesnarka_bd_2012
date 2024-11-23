\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref114
  \tocItem \markup "Той иде"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #97
}
\score {
    \include "include/score-layout.ily"



    \new Voice \absolute {
      \clef treble
      \key bes \major
      \time 3/8
      \tempoFunc "Allegretto" 4. "54"
      \autoBeamOff

      bes'4 bes'8 | bes'4 bes'8 |  bes'4 bes'8 |  a'8 ([ bes'8] )  c''8 \noBeam | \acciaccatura { c''8 ( } a'4 ) g'8 | \break

      g'4 g'8 | g'4 g'8 | g'8 ([ a'8] ) bes'8 \noBeam|  \acciaccatura { bes'8 ( } g'4 ) f'8 | f'4 f'8 | \break


      f'4 f'8 | es'8 ( [f'8 ]) g'8 \noBeam | \acciaccatura { g'8 ( } es'4 ) d'8 |  d'4 d'8 | c'8 ([ d'8 ]) c'8 \noBeam | bes4. ~ | bes4. \break


      | d'4 d'8 | c'8 ( [d'8] ) c'8 \noBeam | bes4. ~ | bes4. |  d'4 d'8 | \tempo "rit." c'8 [( d'8 )] \noBeam c'8 | bes4. ~ |
      \tempo "     Fine" bes4. \bar "|." \break

      \tempo "a tempo" d'8. \noBeam d'16 \noBeam d'8 |  f'8.\noBeam f'16 \noBeam f'8 | g'4 d'8 | f'4 es'8 |  es'4. ~ | \break

      es'4. | g'8.\noBeam g'16 \noBeam g'8 | c''8. \noBeam bes'16 \noBeam  bes'8 | a'4 g'8 | g'4 f'8 | \break

      bes'4. ~ | bes'4. | f'4 d'8 | f'4 f'8 | f'4. ~ | f'4. |  \break

      f'4 d'8 |f'4  f'8 | f'4. ~ |  f'4. \bar "||" \key bes \minor \time 2/4 |

      \tempoFunc "Andante" 4 "60"

      bes'4. a'8 | \break

      \time 6/4 \autoBeamOff bes'8. ges'16 f'2 des'8. es'16 f'4. f'8 |  ges'4. f'8 ges'4 as'8. as'16 f'2 |  \break

      \time 4/4  c'8 des'8 es'8 f'8 ges'2 | f'8 es'8 des'8 c'8 bes2 | \time 3/4  \bar ".|:"
      bes'8. c''16 des''2 | \break

      c''8. bes'16 a'2 | \time 4/4  bes'8 bes'8 ges'8 ges'8 f'2 | c'8 des'8 es'8 f'8 ges'2 | \break

      f'8 es'8 des'8 c'8 bes2 |
      \bar ":|." bes4 \tempo "       rit." c'4 des'2 | c'2  bes2 \fermata
      \bar "|."
    }

    \addlyrics {
      И  --  де,   и
      --  де,   и  --  де,   сам __   Той   и -- де,   и  --  де,   и  --  де,
      сам __   Той   и -- де,   и  --  де,   и  --  де,   сам __   Той  и -- де,   да
      по  --  ма  --  га   Той, __   да   по  --  ма  --  га   Той, __   да
      по  --  ма  --  га   Той. __    Мощ  --  ни  --  ят,   Сил  --  ни  --
      ят,   да   по  --  ма  --  га   Той, __  Мощ  --  ни  --  ят,
      Сил  --  ни  --  ят,   да   по  --  ма  --  га   Той, __    да   по  --
      ма  --  га   Той, __    да   по  --  ма  --  га   Той. __   Ний   ще   ра
      --  бо  --  тим   със   лю  --  бов,   ще   ра  --  бо  --  тим
      със   лю  --  бов,   да   по  --  ма  --  га   Той,   да   по  --
      ма  --  га    Той,   Мощ  --  ни  --  ят,   Сил  --  ни  --
      ят,   да   по  --  ма  --  га   Той,   да   по  --  ма  --  га
      Той,   да   по  --  ма  --  га   Той,   да   по  --  ма  --  га
      Той.
    }

    \header {
      title = \titleFunc #'ref_desc_13 "Той иде" "Toj ide"
    }

    \midi{}
  } % score


  \markup \dc-one "D.C al Fine"


  \label #'ref115
  \tocItem \markup "Песен на светлия път"
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
      по  --  стиг  --  на,   що   же  --  ла  --  я. Във жи  --  во
      --  та   всич  --  ко   се   по  --  сти  --  га.   Ще   но  --  ся
      Бо  --  жи --  те   бла  --  га __   във   всич  --  ки   чо
      --  веш  --  ки   сър  --  ца.   Там,   де  --  то   се   раж  --
      да ра  --  дост  --  та,   там,   де  --  то   ца  --  ру  --
      ва Лю  --  бов  --  та.
    }

    \header {
      title = \titleFunc #'ref_desc_11 "Песен на светлия път" "Pesen na svetlija păt"
    }

    \midi{}
  } % score


  \markup \dc-two "D.C.""con ripetizione"




} % bookpart
