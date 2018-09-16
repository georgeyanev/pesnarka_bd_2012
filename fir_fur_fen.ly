


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 3/4 \tempo "Adagio" 4 = 54
  
  \autoBeamOff
  
  d'8. d'16 s2 | g'2 a'8. bes'16 |  g'4 d'2 | \time 4/4  a'8. bes'16 c''4 bes'2 | \break 
 
 a'8. b'16 g'4 g'2 | \time 3/4  d''8. d''16 d''2 | \time 4/4  es''8. d''16 d''4 c''2 \break
 
 \time 3/4  c''8. c''16 c''2 | \time 4/4  d''8. c''16 b'4 b'2 | \time 3/4  a'8. a'16 a'2 \break |

 \time 4/4  b'8. a'16 g'4 g'2  \repeat volta 2 {| d'4 g'4 b'4 a'4 |  \time 3/4  g'4 fis'8. fis'16 g'4 \break |
   
 es'8. es'16 d'2 | \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 \break |  
 
 a'4 \fermata g'2 | \time 5/4  \repeat volta 2 { d''4 cis''4 es''4 d''2 | d''4 cis''4 es''4 d''2 \break |
                                                 
 \time 4/4  a'4 b'4 c''4 b'4 | \time 3/4  a'4 g'4 fis'4 |  a'4 \fermata g'2
   
 }
 }    
 
}

text = \lyricmode {Фир -- фюр --
  фен Тао Би Ау -- мен, Тао Би Ау -- мен, Тао Би
  Ау -- мен. Фир -- фюр -- фен Тао Би Ау -- мен.
  Фир -- фюр -- фен Тао Би Ау -- мен, Фир -- фюр --
  фен Тао Би Ау -- мен. Бла -- го -- сла -- вяй,
  ду -- ше мо -- я, Гос -- по -- да; бла -- го --
  сла -- вяй и не за -- бра -- вяй. Бла -- го --
  сла -- вяй, бла -- го -- сла -- вяй, бла -- го --
  сла -- вяй и не за -- бра -- вяй.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Фир-фюр-фен / Fir-für-fen" }
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