\version "2.24.0"

\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key des \major
      \time 9/8
      \tempoFunc "Lento" 4. "50"
      \autoBeamOff
      bes8 ( [  des8 ) ]  c8  bes4. a4  bes8 |
      \override TextScript.extra-offset = #'(2.5 . 2)
      c4. < f, f' >2.-\markup { ossia } | % 4
      \time 6/8
      f'8  ges8  f8  es8  des8
      c8 \break | % 5
      es4.  c4. ~ | % 6
      c4.  es8 ( [  d8 ) ]  es8 | % 7
      f4.  bes,4. | % 8
      des?4.  c4  bes8 | % 9
      \acciaccatura {  bes16[c16] }  bes2.
      \break |
      a2. | % 11
      des4.  des8  des8  des8 | % 12
      as'?4.  ges4  f8 | % 13
      f4. ( f4 ) es8 | % 14
      es2. | \bar "||" \break

      \key as \major \time 9/8 | % 15

      \bar ".|:" \tempoFunc "            Più mosso" 4 "66" f4  f8  f4.  c'4. | % 16

      \time 6/8 des4.  c4.( | % 17
      c4. ) c8 ( [ des8  c8 ) ]
      bes4.  as4. | \break% 18
      f2.
      | % 19
      \bar ":|.|:" c'4. ( c8 ) c8  c8 |
      f4. ~  f8  e8  f8 | % 21

      g4. ( ~  g8 [  f8 des8 ) ] \time 9/8 \break | % 22
      c4. ~  c4  c8 bes8 --  as8 --  bes8 -- |
      as4. f2. | \bar ":|.|:"  \key f \major
      \repeat volta 2 {

        \time 6/8 | % 25

        a8  bes8  c8 f,4  f8 \break |  d'4 (   bes8 )

        g4.  ( | g4.  )

        e8 ( [  f8 ])  g8
        | % 27

        c4.  f,4. |  a4.  g4  g8 |
      }  \alternative {
        {f2. | }

        {
          \time 9/8

          \once \override TextScript.extra-offset = #'(-1.8 . 2.5)
          f2.-\markup \bold \fontsize #+2 {"("} e8 [(f8)]

          g8 |
        }


      }
      \time 6/8 c4. f,4. | a4. \fermata g4 g8 |
      \once \override TextScript.extra-offset = #'(3 . 2.5)

      f2.-\markup \bold \fontsize #+2 {")"} \bar "|."
    }

    \addlyrics {
      Тъж -- на ми е ду -- ша -- та.
      Скръб и пе -- чал ме об -- зе --
      мат.  Сил -- на бу -- ря
      в~мен се пов --  ди -- га,
      но ни -- ко -- го не об -- ви -- ня
      -- вам аз. Бу -- ря -- та е бу -- ря,
      но   в~мен е Той. Бу --
      ря -- та мен  не раз -- би --
      ра,  но аз я раз -- би
      -- рам. Бу -- ря -- та ме раз --
      търс  -- ва __ за  Доб -- ро --
      то, що е във мен. "(мен" за  Доб -- ро --
      то, що е във "мен.)"
    }

    \addlyrics {
      Tazh -- na mi e du -- sha -- ta.
      Skrab i pe -- chal me ob -- ze --
      mat.  Sil -- na bu -- rya
      v~men se pov --  di -- ga,
      no ni -- ko -- go ne ob -- vi -- nya
      -- vam az. Bu -- rya -- ta e bu -- rya,
      no   v~men e Toy. Bu --
      rya -- ta men  ne raz -- bi --
      ra,  no az ya raz -- bi
      -- ram. Bu -- rya -- ta me raz --
      tars  -- va __ za  Dob -- ro --
      to, shto e vav men. "(men" za  Dob -- ro --
      to, shto e vav "men.)"
    }

    \header {
      title = \titleFunc "Буря" "Burya"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/120_burya_lyrics_de.ly"

} % bookpart
