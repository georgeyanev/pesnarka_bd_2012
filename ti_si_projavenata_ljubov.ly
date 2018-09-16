


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Adagio" 4 = 56
 
 \autoBeamOff
 
 b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |fis'2 fis'4 | a'4 g' fis' | e'2 \break   

c''4  | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | \break 

e'2 c''4  | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4

}

text = \lyricmode {Ти си про --
  я -- ве -- на -- та Лю -- бов към мен, Гос -- по
  -- ди. Ду -- ша -- та ми коп -- неe за Твой --
  та чис -- то -- та. Ду -- ша -- та ми коп -- неe
  за Твой -- та свет -- ли -- на

 
 
}

textL = \lyricmode { Ti si pro --
  ja -- ve -- na -- ta Lju -- bov kym men, Gos -- po
  -- di. Du -- scha -- ta mi kop -- nee sa Tvoj --
  ta tschis -- to -- ta. Du -- scha -- ta mi kop -- nee
  sa Tvoj -- ta svet -- li -- na
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvaria" }
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