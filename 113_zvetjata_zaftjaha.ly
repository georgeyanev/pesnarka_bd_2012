\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
}

\header {
  tagline = ##f
}





melody = \absolute  {
  \clef treble
  \key g \major
  \time 4/4 \tempo "Moderato" 4 = 69
  
  \autoBeamOff
  
  \partial 4
 
g'4 | g''2 fis''4 d''4 |e''2 d''2 | b'4  d''4 a'2| a'4 b'4 g'2 | \break

b'4 d'4 a'2 | a'4 b'4 g'2| b4 d'8 g'8 b'4. a'8 | a'4 b'8 b'8 g'2 | \break

 b4 d'8 g'8 b'4. a'8 | a'4 b'8 b'8 g'2 | g'4 fis'8. e'16 e'4. d'8 | \break
 
 b4 c'4 d'2 | d'4 g'8 a'8 b'4. a'8 | g'4 fis'4 a'4 a'4 |  \time 2/4 g'4. d'8 | \break
 
 g'2 | fis'8. g'16 a'8 b'8 | c''4 d''4 | e''4.\fermata b'8 | d''4. c''8 | b'4 a'8 a'8 | \break 
 
 b'8 a'8 g'8 fis'8 | g'4. d'8 | g'2 | fis'8. g'16 a'8 b'8 | c''4 d''4 | \break
 
 e''4.\fermata b'8 | d''4. c''8 | b'4 a'8 a'8 | b'8 a'8 g'8 fis'8 | a'2 \break  
 
 

}

text = \lyricmode {
  
  Цве -- тя -- та цъф -- тя -- ха под слън -- че -- ви лъ -- чи 
  
  и ве -- че вър -- за -- ха. И тъй о -- бле -- че -- ни в~кра -- со та,
  
  и тъй о -- бле -- че -- ни в~чи -- сто -- та, те ни до -- на сят
  
  мла -- дост -- та. Във не -- я зре -- ят слад -- ки пло -- до -- ве. И 
  
  тъй, ка -- то ги при -- е -- ма -- ме, поз -- на -- ва -- ме, че са 
  
  Бо -- жи да -- ро -- ве;  И 
  
  тъй, ка -- то ги при -- е -- ма -- ме, поз -- на -- ва -- ме, че са дар на Лю -- бов -- та. 
  
  

 
 
}

textL = \lyricmode {
  Tsve -- tya -- ta tsaf -- tya -- ha pod slan -- che -- vi la -- chi 
  
  i ve -- che var -- za -- ha. I tay o -- ble -- che -- ni v~kra -- so ta,
  
  i tay o -- ble -- che -- ni v~chi -- sto -- ta, te ni do -- na syat
  
  mla -- dost -- ta. Vav ne -- ya zre -- yat slad -- ki plo -- do -- ve. I 
  
  tay, ka -- to gi pri -- e -- ma -- me, poz -- na -- va -- me, che sa 
  
  Bo -- zhi da -- ro -- ve;  I 
  
  tay, ka -- to gi pri -- e -- ma -- me, poz -- na -- va -- me, che sa dar na Lyu -- bov -- ta.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Цветята цъфтяха / Zvetjata zufjaha" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org
 % arranger = \markup { \fontsize #+1 "Контекстуализация: Йордан Камджалов / Contextualization: Yordan Kamdzhalov" }
  %composer = \markup \center-column { "Бейнса Дуно / Beinsa Duno" \vspace #1 } 

}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}

 

\markup { \hspace #37  \huge\bold   "Die Blumen erblüten"  }
\markup {
  \hspace #1 \fontsize #+1 {
    \halign #-1.5 {
      \column {
        \line { " " }
        \line { Die Blumen erblühten unter den Strahlen der Sonne, }
        \line { und sie haben bereits Früchte getragen.  }
        \line { Und so in Schönheit gekleidet}
        \line {und so in Reinheit gekleidet, }
        \line { bringen sie uns die Jugend.  }
        \line { In ihr reifen süße Früchte. }
        \line { Und so, wenn wir sie empfangen, }
        \line { erkennen wir, dass sie göttliche Gaben sind;}
        \line { und so, wenn wir sie empfangen, }
        \line { erkennen wir, dass sie eine Gabe der Liebe sind!}
      }
    }
  }
}




















