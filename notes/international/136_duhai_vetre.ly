\version "2.24.2"

\include "include/globals.ily"

\bookpart {
  \label #'ref136
  \tocItem \markup "Духай ветре –  Duhaj vetre "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key b \minor
      \time 3/4
      \tempoFunc "Moderato" 4 "80"
      \autoBeamOff

      \repeat volta 3 {
        fis8.  fis16  fis4.  fis8 | % 2
        \time 4/4  | % 2
        g8  e8  fis8  d8  e2
        | % 3
        \time 3/4  | % 3
        e8.  e16  e4.  e8 \break | % 4
        \time 4/4  | % 4
        fis8  d8  e8  cis8
        d2 | % 5
        \time 3/4  | % 5
        fis8.  fis16  b4.  cis8
        \time 4/4 |
      }
      \alternative {
        {
          d8  b8  cis8 ais8  b2 | \break
        }
        {
          d8   b8 cis8  ais8  b4. \breathe b8 |
          \mark\markup\italic {"                      maestoso, ad libitum"} 
          d2 cis4 b4 | 
          
          
          \tweak direction #up \times 2/3 {
            \once \override Slur.positions = #'(1 . 1)
            \once \override Slur.height-limit = #5.91
            ais4 (  b4  cis4 )
          } 
          \once \override Score.MetronomeMark.outside-staff-priority = #599
          \once \override Score.MetronomeMark.X-extent=#'(-3.5 . 0)
          \tempo "Fine" b2 ^\fermata
        }
      } \break  \bar "|."

      \once \override Staff.TimeSignature.break-visibility = ##(#f #t #t)
      \time 5/4 \tempoFunc "Andante" 4 "66" fis'4 ^\fermata
      e4  d8 [ ( cis8 ) ] b2 | 
      cis4  b4  ais8 ( [  g8 ) ]  fis2 |
      e4  e4 fis8 ( [  g8 ) ] b2 | \break
      ais4 g4  ais8 ( [  g8 ) ]  fis2 |
      e4 e4  fis8 ( [  g8 ) ]  b2 |
      ais4  g4  ais8 ( [  g8 ) ]  fis2 |
      fis'4 ^\fermata  e4  d8 ( [
      cis8 ) ]  b2 | \break  
      cis4 b4  ais8 ( [  g8 ) ]  fis2 |
      e4 e4  fis8 ( [  g8 ) ] b2 |
      ais4  g4  ais8 ( [  g8 ) ]  fis2 |
      e4  e4  fis8 ( [  g8 ) ] b2 | \break 
      ais4  g4  ais8 ( [  g8 ) ]  fis2 |
      \repeat volta 2 {
        \time 9/8 \tempoFunc "     Allegretto" 4 "160"  d'4
        d8  d8  cis4 d4. |
        cis4  b4  cis4 b4. | \break  
        ais4  g8  g8 ais4  g4. |
        e4 fis4 fis4  fis4. | 
        e4  e4  fis4 g4. -> |
        fis4  e4  fis4 fis4. \break  
        e4  e4  fis4  g4.
      }

      \alternative {
        {
          fis4  e4  fis4  fis4.
        }
        {
          fis4  e4  fis4  fis4.^\fermata \bar "||"
        }
      }

      \tempoFunc "Poco meno mosso" 4 "144" d'4 d8 d8 cis4 d4. | \break
      cis4  b4
      cis4  b4.  ais4  g4  ais4
      g4.  e4   fis4
      \tempo "rit." e4  fis4.
      fis2 ~  fis4 ~ fis4.\break  \bar "|."
    }
    
    \addlyrics {
      Бо -- жи -- е -- то "Слън-" -- це гре --
      е днес, Бо -- жи -- е -- то "Слън-" --
      це гре -- е днес, Бо -- жи -- е --
      то "Слън-"  -- це гре -- е днес. "Слън-" 
      -- це гре -- е днес за теб, бъл --
      га -- ри  --  но! Ду -- хай, ве
      -- тре, ти -- хо ду -- хай, ти
      -- хо ду -- хай, ми -- ло гле
      -- дай, ти -- хо ду -- хай,
      лис -- те раз -- вий. Лист раз
      -- вя -- вай, цвят раз -- тва
      -- ряй, цвят раз -- тва --
      ряй, плод раз -- да -- вай,
      цвят раз -- тва -- ряй, плод
      раз -- да -- вай. Хай ди ди ди
      ди, да си и -- ди, хай ди ди ди
      ди, да се у -- чи, да се у -- чи,
      да по -- лу -- чи, да по -- лу --
      чи, да се у -- чи. да се у -- чи.
      Хай ди ди ди ди, да си и -- ди,
      да си и -- ди, До -- бро да ви --
      ди. __ }
    \addlyrics {
      Bo -- ži -- e -- to Slăn -- ce gre --
      e dnes, Bo -- ži -- e -- to Slăn --
      ce gre -- e dnes, Bo -- ži -- e --
      to Slăn  -- ce gre -- e dnes. Slăn
      -- ce gre -- e dnes za teb, băl --
      ga -- ri  --  no! Du -- haj, ve
      -- tre, ti -- ho du -- haj, ti
      -- ho du -- haj, mi -- lo gle
      -- daj, ti -- ho du -- haj,
      lis -- te raz -- vij. List raz
      -- vja -- vaj, cvjat raz -- tva
      -- rjaj, cvjat raz -- tva --
      rjaj, plod raz -- da -- vaj,
      cvjat raz -- tva -- rjaj, plod
      raz -- da -- vaj. Haj di di di
      di, da si i -- di, haj di di di
      di, da se u -- či, da se u -- či,
      da po -- lu -- či, da po -- lu --
      či, da se u -- či. da se u -- či.
      Haj di di di di, da si i -- di,
      da si i -- di, Do -- bro da vi --
      di. __}

      \header {
        title = \titleFunc "Духай ветре" "Duhaj vetre"
      }

      \midi{}

    } % score

    \markup \dc-one "D.C. al Fine"
    

    % include foreign translation(s) of the song
    \include "../../lyrics/de/136_duhai_vetre_lyrics_de.ly"

  } % bookpart
