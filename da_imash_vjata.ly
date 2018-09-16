


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 8/16 \tempo "Moderato" 4 = 126
 
d''8. d''8 d''8. | d''8. c''8 ~ c''8. | d''8. bes'8 ~ bes'8. | c''8. c''8 c''8. | \break 

c''8. bes'8 ~ bes'8. | a'8. ( g'8 ~ g'8. | bes'8. ~ bes'8 ~ bes'8. | a'8. ) g'8 ~ g'8. | \break  


a'8. c''8 c''8. | bes'8. a'8 ( a'8. ) | bes'8. ( a'8 g'8. ) | d''8. ~ d''8 ~ d''8. | \break 

\repeat volta 2 { c'8. d'8 es'8. | es'8. d'8 ~ d'8. | es'8. c'8 ~ c'8. | f'8. ( ~ f'8 es'8 ) | d'8. ~ d'8 ~ d'8.
    
} \break



}

text = \lyricmode {  Да и -- маш
  вя -- ра, вя -- ра, да и -- маш вя -- ра, вя --
  ра, да и -- маш вя -- ра, вя -- ра, да и --
  маш вя -- ра, вя -- ра, вя -- ра.

 
 
}

textL = \lyricmode {  Da i -- mash vya
  -- ra, vya -- ra, da i -- mash vya -- ra, vya -- ra, da i --
  mash vya -- ra, vya -- ra, da i -- mash vya -- ra, vya --
  ra, vya -- ra.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Да имаш вяра / Da imash vjara" }
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