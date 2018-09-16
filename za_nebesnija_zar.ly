


melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Tempo di marcia" 4 = 96
 \partial 8
 
 \autoBeamOff
 
 e'8 | g'4. fis'8 g' a' | g'4 e'2 | e'4 e'8. e'16 e'8 e' \break | 

g'4 f'2 | \time 4/4  f'4 f'8 f' d''4 c'' | b'4 a'8 b' c''2 \break |
  
  g'4 f'8 e' a'2 | d'4 e'8 f' g'4. e'8 | g'4 f' e'2 \break |
  
  \repeat volta 2 { e'8 f' g'4 g'2 | a'4 a'8. a'16 a'4 a' | d'8 e' f'4 f'2 \break | 
    
    b'8 ( d'' ) a' b' c''2 | b'8 a' g' f' e'4 d'8 e' \break |  }
  
  \time 2/4  f'2 |  \time 4/4  b'4 a'8 b' c''2 |  a'4 b'8 c'' d''2 \break |
  
  c''4 b'8 a' e'2 | d'4 e'8 f' g'4. e'8 |  g'4 f' e'2 | \break


}

text = \lyricmode {На -- пред,
  на -- пред за сла -- ва в_бой за Ца -- ря не --
  бес -- ни, Ца -- ря на Прав -- да, Мир и Лю --
  бов, Мир и Лю -- бов, Мир и Лю -- бов, Лю --
  бов, Лю -- бов. Сла -- ва, сла -- ва Теб по --
  до -- ба -- ва, Ти си цар на Прав -- да и Мир,
  Ти си цар на Прав -- да и Мир, Мир и Лю --
  бов, Мир и Лю -- бов, Мир и Лю -- бов, Мир и
  Лю -- бов, Лю -- бов, Лю -- бов.

 
 
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