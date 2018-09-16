


melody = \absolute  {
  \clef treble
  \key f \major
  \time 7/4 \tempo "Adagio, ad libitum" 4 =56
  
  \omit Staff.TimeSignature
 
\repeat volta 2 {  a'4^\p bes'8 ( a' gis' a' bes'2 ) a' \bar "!"  \breathe  d''4^\mp  e''8 ( d'' cis'' d'' b' a' c''16 b' a' gis' ) a'2 \bar "!" \breathe \break |

\time 10/4 g'8 ( f' e' f' g'4 a' ) f'4. ( e'8 g'16 f' e' f' ) d'2 a4^\pp \bar "!" \break |


  bes2 a2 a4 \bar "!"  bes2 a a4  \bar "!"  bes2 a r4 } \break

}

text = \lyricmode { Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.

 
 
}

textL = \lyricmode {Ve -- cha -- di, Ve -- cha -- di, Ve -- cha -- di, Ve -- cha -- di, Ve -- cha -- di, Ve -- cha -- di.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Вехади / Vechadi" }
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