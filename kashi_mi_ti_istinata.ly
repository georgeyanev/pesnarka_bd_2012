


melody = \absolute  {
  \clef treble
  \key g \major
  \time 3/4 \tempo "Andante" 4 = 60
 \partial 8
 
 \autoBeamOff
 
 d'8 | \repeat volta 2 { b'4. a'8 g'4 | \time 4/4  fis'8. e'16 e'4 d'4. d'8 \break | 
                       
    e'8 fis' g' a' b' d'' ( d''4 ) | \time 3/4  c''4. b'8 a' g' \break | }
    
   \alternative { { \time 4/4  b'4 a' g'4. d'8 } { b'4 a'4 g'4.\fermata \break } }



}

text = \lyricmode {Ка -- жи ми
  ти Ис -- ти -- на -- та, ко -- я -- то но -- си
  Сво -- бо -- да за мо -- я -- та ду -- ша. Ка --
  та ду -- ша.

 
 
}

textL = \lyricmode {Ka -- shi mi ti Is
  -- ti -- na -- ta, ko -- ja -- to no -- si Svo -- bo -- da za mo
  -- ya -- ta du -- scha. Ka -- ta du -- scha.
 
 
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