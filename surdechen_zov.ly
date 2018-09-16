


melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Andaten" 4 = 66
  
 \partial 4
 
 \autoBeamOff
 
   e'8 (f'8 )  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ( f' ) \break | 
   
   g'2 g'4 | c''2 d''4 | e''2 d''4 \fermata | c''2 c''8 ( d'' ) \break |
 
  \repeat volta 2 { e''2 e''8 e'' | e''4 ( d'' ) c'' | b'4. a'8 b' ( a' ) | g'2 e'8. f'16 \break | 
    
    g'4 c' d'}  \alternative { { c'2 c''8 ( d'' ) | } { c'2 } }



}

text = \lyricmode { Пред Теб при
  -- па -- да -- ме, Гос -- по -- ди, днес с_чис --
  ти, тре -- пет -- ни ду -- ши. Във пе -- сен из
  -- ли -- ва -- ме сър -- ца -- си и зо -- вем
  Те, пре -- свя -- тий, про -- сти! Във сти!

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Сърдечен зов / Surdechen zov" }
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