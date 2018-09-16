


melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Tempo di marcia" 4 = 100
  
  \autoBeamOff
  
 a'4 b'8. a'16 | fis'4 d' | a'8. a'16 b'8 b' | a'2 \break |

 b'4 a'8. g'16 | fis'4 d' | e'8. e'16 fis'8 e' | d'2 \break |
 
 \repeat volta 2 { a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' |  a'2 \break | 

 b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \break |

 }

}

text = \lyricmode { Ди -- шай
  дъл -- бо -- ко, с_ве -- се -- ло сър -- це и на
  жи -- во -- та рад -- вай се, де -- те. Въз --
  ду -- хът е жи -- ва си -- ла ви -- на -- ги
  за нас. Ди -- шай, ди -- шай и пак ди -- шай,
  ди -- шай да си здрав!

 
 
}

textL = \lyricmode { Di -- schaj
  dyl -- bo -- ko, s_ve -- se -- lo syr -- ze i na
  shi -- vo -- ta rad -- vaj se, de -- te. Vys --
  du -- chyt e shi -- va si -- la vi -- na -- gi
  sa nas. Di -- schaj, di -- schaj i pak di -- schaj,
  di -- schaj da si sdrav!
 
 
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