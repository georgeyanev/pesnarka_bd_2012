


melody = \absolute  {
  \clef treble
  \key es \major
  \time 7/4 \tempo "Moderato" 4 = 88
  
  \partial 4
 
 bes4 | es'4 g8 bes2. |  bes4 es'4 | g'4 f'4 (f'2) f'4| g'4 as'4 | \break
 
 
 \time 5/4 bes'2. bes'4 bes'4 | \time 3\4 c''4 bes'2 | \time 5\4 as'4 bes'2 f'4 b4 | f'2 es'2. \break



}

text = \lyricmode {И -- ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.  

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Зов на планината / Zov na planinata" }
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