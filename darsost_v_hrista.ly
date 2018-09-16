


melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Tempo di marcia" 4 = 100
  
  \autoBeamOff
  
  c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
  
  g'8 a' b' c'' | a'4. r8 \repeat volta 2 {  | c''4 c'' | d''8 c'' b' a' | c''8 g'4. \break |

c'4  f'4 | g'8 a' b' c'' a'4 g'8 g' | f'4. r8 } \break

}

text = \lyricmode {Дър -- зост
  във Хри -- ста, дру -- га -- ри, с_Не -- го да
  вър -- вим на -- пред, Той е ца -- рят на Жи --
  во -- та, цар -- ство -- то Му е на -- вред, е
  на -- вред.

 
 
}

textL = \lyricmode { Dyr -- sost
  vyv Chri -- sta, dru -- ga -- ri, s_Ne -- go da
  vyr -- vim na -- pred, Toj e za -- rjat na Shi --
  vo -- ta, zar -- stvo -- to Mu e na -- vred, e
  na -- vred.
 
 
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