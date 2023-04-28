\version "2.24.1"

\include "include/globals.ily"

\bookpart {
  \label #'ref120
  \tocItem \markup "Буря – Burya"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key bes \minor
      \time 6/8
      \tempoFunc "Lento" 4. "50"
      \autoBeamOff
      bes8 ( [  des8 ) ]  c8  bes4. | a4  bes8 
      \override TextScript.extra-offset = #'(2.5 . 2)
      c4. | f2.  | % 4
      f8  ges8  f8  es8  des8
      c8 \break | % 5
      es4.  c4. ~ | % 6
      c4.  es8 ( [  d8 ) ]  es8 | % 7
      f4.  bes,4. | % 8
      des4.  c4  bes8 | % 9
      \acciaccatura {  bes16[c16] }  bes2.
      \break |
      a2. | % 11
      des4.  f8  f8  f8 | % 12
      as4.  ges4  f8 | % 13
      f2. | \override TextScript.extra-offset = #'(8 . 5.2) es2._\markup {
        \path #0.10 #'((moveto 0 0)
          (lineto 0 2.75)
          (moveto 0.5 0)
          (lineto 0.5 2.75)
          (closepath))
      } 
      \break

      \key f \minor \time 3/4 | % 15

      \bar ".|:" \tempoFunc "            Più mosso" 4 "66" f8.  f16  f4  c'4 | % 16

       des4  c2|  \times 2/3 { c8 ( [ des8  c8 ) ] }
      bes4  as4 |f2. | \bar ":|.|:"  \time 6/8 c'4. ( c8 ) c8  c8 |  \break
      f4. ~  f8  e8  f8 | % 21

      g4. ( ~  g8 [  f8 des8 ) ] | % 22
      c4. ~  c4  c8 | bes8 -- as8 --  bes8 --
      as4. f2. | \bar ":|.|:" \break  \key f \major
      \repeat volta 2 {

        \time 3/4 | % 25

      \tupletUp \times 2/3 { a8  bes8  c8 } f,8.  f16 d'8 [(bes8 )]

       | g2  

           \times 2/3 { e8 [  (f8)  g8 ]}
        | % 27

       \time 4/4 c4  f,4   a4  g8.  g16 | \time 3/4 f2. 
      } 
    
    }

    \addlyrics {
      Тъж -- на ми е ду -- ша -- та.
      Скръб и пе -- чал ме об -- зе --
      мат.  Сил -- на бу -- ря
      в~мен се пов --  ди -- га,
      но ни -- ко -- го не об -- ви -- ня
      -- вам. Бу -- ря -- та е бу -- ря,
      но   в~мен е Той. Бу --
      ря -- та мен  не раз -- би --
      ра,  но аз я "раз-" -- би
      -- рам. Бу -- ря -- та ме раз --
      търс  -- ва "за  Доб" -- ро --
      то, що е във мен.
    }

    \addlyrics {
      Tazh -- na mi e du -- sha -- ta.
      Skrab i pe -- chal me ob -- ze --
      mat.  Sil -- na bu -- rya
      v~men se pov --  di -- ga,
      no ni -- ko -- go ne ob -- vi -- nya
      -- vam. Bu -- rya -- ta e bu -- rya,
      no   v~men e Toy. Bu --
      rya -- ta men  ne raz -- bi --
      ra,  no az ya raz -- bi
      -- ram. Bu -- rya -- ta me raz --
      tars  -- va "za  Dob" -- ro --
      to, shto e vav men.
    }

    \header {
      title = \titleFunc "Буря" "Burya"
    }

    \midi{}

  } % score

\pageBreak


  % include foreign translation(s) of the song
  \include "lyrics_de/120_burya_lyrics_de.ly"

} % bookpart
