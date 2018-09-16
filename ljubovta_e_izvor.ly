


melody = \absolute  {
  \clef treble
 \key d \minor
  \time 4/4 \tempo "Moderato" 4 = 60
 
 \autoBeamOff
 
 a'8 g'8 f'8 e'8 d'4 d'4|g'8 a'8 bes'8 d''8 a'4 a'4 | \break
 
 g'8 a'8 bes'8 d''8 a'4 a'4 | a'8 g'8 f'8 g'8 a'4 a'4| \break
 
 bes'8 bes'8 bes'8 bes'8 bes'4 d''4 | d''8 c''8 c''8 bes'8 bes'4 a'4 | \break
 
 g'8 a'8 bes'8 d'8 a'4 a'4 | d'8 e'8 f'8 e'8 d'4 d'4 | \break
 
 a'8 a'8 d''8 c''8 bes'4 bes'4 | g'8 a'8 c''8 bes'8 a'4 a'4| \break
 
 g'8 a'8 bes'8 d''8 a'4 a'4 | d'8 e'8 f'8 e'8 d'4 d'4 | \break
 
 




}

text = \lyricmode {Лю -- бов -- та е из -- вор: тя Жи -- во -- та раж -- да
                    
                    и пре -- свя -- та длъж -- ност в~не -- го крот -- ко всаж -- да 
                    
                    все на -- пред да хо -- ди в~стре -- меж към До -- бро -- то,
                    
                    що е съ -- вър -- ше -- но го -- ре на Не -- бе -- то.
                    
                    Ра -- бо -- ти със не -- я в~ми -- лос -- ти же -- ла -- ни,
                    
                    по -- мощ -- та но -- си й за ду -- ши стра -- дал -- ни. 

 
 
}

textL = \lyricmode {
 
 
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