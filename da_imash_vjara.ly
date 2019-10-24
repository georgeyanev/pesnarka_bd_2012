\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key bes \major
  \time 8/16 \tempo "Moderato" 4 = 100
 
 d''8. d''8 d''8. | % 2
  d''8. c''8 ~ c''8. | % 3
  d''8. bes'8 ~ bes'8. | % 4
  c''8. c''8 c''8. \break | % 5
  c''8. bes'8 ~ bes'8. | % 6
  a'8. ( g'8 ~ g'8. | % 7
  bes'8. ~ bes'8 ~ bes'8. | % 8
  a'8. ) g'8 ~ g'8. \break | % 9
  a'8. c''8 c''8. |
  bes'8. a'8 ( a'8. ) | % 11
  bes'8. ( a'8 g'8. ) | % 12
  d''8. ~ d''8 ~ d''8. \break | % 13
  \repeat volta 2 {
    c'8. d'8 es'8. | % 14
    es'8. d'8 ~ d'8. | % 15
    es'8. c'8 ~ c'8. | % 16
    f'8. ( ~ f'8 es'8. ) | % 17
    d'8. ~ d'8 ~ d'8.}



}

text = \lyricmode {Да и -- маш
  вя -- ра, вя -- ра, да и -- маш вя -- ра, вя --
  ра, да и -- маш вя -- ра, вя -- ра, да и --
  маш вя -- ра, вя -- ра, вя -- ра.

 
 
}

textL = \lyricmode {Da i -- mash vya
  -- ra, vya -- ra, da i -- mash vya -- ra, vya -- ra, da i --
  mash vya -- ra, vya -- ra, da i -- mash vya -- ra, vya --
  ra, vya -- ra.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Да имаш вяра / Da imasch vjara" }
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