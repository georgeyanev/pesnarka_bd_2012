\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref114
  \tocItem \markup "Той иде – Toj ide"
  \include "include/bookpart-paper.ily"
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
    \addlyrics {
      I  --  de,   i
      --  de,   i  --  de,   sam __   Toj   i -- de,   i  --  de,   i  --  de,
      sam __   Toj   i -- de,   i  --  de,   i  --  de,   sam __   Toj  i -- de,   da
      po  --  ma  --  ga   Toj, __   da   po  --  ma  --  ga   Toj, __   da
      po  --  ma  --  ga   Toj. __    Mošt  --  ni  --  jat,   Sil  --  ni  --
      jat,   da   po  --  ma  --  ga   Toj, __  Mošt  --  ni  --  jat,
      Sil  --  ni  --  jat,   da   po  --  ma  --  ga   Toj, __    da   po  --
      ma  --  ga   Toj, __    da   po  --  ma  --  ga   Toj. __   Nij   šte   ra
      --  bo  --  tim   săs   lju  --  bov,   šte   ra  --  bo  --  tim
      săs   lju  --  bov,   da   po  --  ma  --  ga   Toj,   da   po  --
      ma  --  ga    Toj,   Mošt  --  ni  --  jat,   Sil  --  ni  --
      jat,   da   po  --  ma  --  ga   Toj,   da   po  --  ma  --  ga
      Toj,   da   po  --  ma  --  ga   Toj,   da   po  --  ma  --  ga
      Toj.
    }
    \header {
      title = \titleFunc "Той иде" "Toj ide"
    }

    \midi{}
  } % score

  \markup \empty-one
  \markup \dc-one "D.C al Fine"



  % include foreign translation(s) of the song

  \markup \vspace #3

  \include "../../lyrics/de/114_toy_ide_lyrics_de.ly"

} % bookpart
