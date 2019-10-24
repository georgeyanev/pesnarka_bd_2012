


melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Vivo" 4 = 104
 \partial 8
 
 \autoBeamOff
 
 e'8|  a'8  b'8 c''8 d''8 | e''4 c''4 | a'4. a'8 | d''4 e''4 | f''4 d''4 |\autoBeamOn e''8 ( d''8 e''8 f''8 ) |\break 
 
 e''4. d''8 \repeat volta 2 {| d''4 d''4 |  c''4 b'4 |  c''4 d''4 |  e''4. c''8 |  b'4 d''4 | c''4 b'4 | \break
                             
a'4 ( gis'8 b'8 ) |} \alternative { { a'4 r8 d''8 } {  a'4 r4 } } \repeat volta 2 {|g'4 g'4 | c''4 d''4 | e''4 f''4 | g''2\break
                                                          
| g''4 a''4 |  g''4 f''4 |  e''4 d''4 |  c''2 | a'4 a'4 | a'4 b'4 | c''4 ( d''4 ) | \break   

e''2 | b'4 d''4| c''4 b'4 |} \alternative { { a'2 | g'2  }  {   a'4 ( gis'8 b'8 )  | a'4. |\break } }


}

text = \lyricmode {На -- го --
  ре о -- ще да вър -- вим, към вър -- хо -- ве --
  те бе -- ли, е -- фи -- ра бял да поз -- дра --
  вим и снеж -- ни -- те кри -- ста -- ли. е --
  ли. Ху -- бост -- та на Бо -- жи свят, бе -- ли
  -- на -- та, наш е цвят:  веч -- на си -- ла и
  -- ма, мрак я не об -- зи -- ма. зи -- ма.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "На белия цвят / Na belija zvjat" }
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