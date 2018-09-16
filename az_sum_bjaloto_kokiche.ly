\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key f \major
  \time 3/8 \tempo "Moderato" 4 = 112


\autoBeamOff

f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |


f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r  \break |

\repeat volta 2 { a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17

a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 d'8 |  d'4. | d'4. } \break |



}

text = \lyricmode {Аз съм бя
  -- ло -- то ко -- ки -- че всред тре -- ви -- те
  гор -- ски, сра -- меж -- ли -- во кат мо -- ми --
  че от по -- гле -- ди хор -- ски. Зла ме ма --
  ще -- ха съ -- бу -- ди с~сне -- га, вет -- ро --
  ве -- те. Всич -- ко жи -- во да се чу -- ди,
  че съм ран -- но цве -- те.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Аз съм бялото кокиче / Az sam bjaloto kokiche" }
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