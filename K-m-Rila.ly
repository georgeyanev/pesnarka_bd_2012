


melody = \absolute  {
  \clef treble
  \key e \minor
  \time 3/4 \tempo "Tempo di valzer" 2. = 54
 \partial 4 b4 | e'2 g'4 | c''2 b'4 | b'2. | b'2 b4 | e'2 g'4 |
 \break
    c''2 b'4 | b'2. ( | b'2 ) b'4 |
\repeat volta 2 { a'2 c''4 | b'2 a'4 | g'2. 
  \break 
  e'2 g'4 | b2 b4 | g'2 fis'4 } 
\alternative { { e'2. ( | e'2 ) b'4 | } { e'2. ( | e'2 ) s4 } }

}

text = \lyricmode { Към Ри -- ла с_мощ -- на ми -- съл ле -- тим ний
все -- ки ден. В_гър -- ди -- те с_туй же -- ла -- ние жи -- ве -- ем 
в_свят не -- тлен. В_гър -- тлен.  
 
}

textL = \lyricmode { Kăm Ri -- la s_mošt -- na mi -- săl le -- tim nij
vse -- ki den. V_găr -- di -- te s_tuj že -- la -- nie ži -- ve -- em 
v_svjat ne -- tlen. V_găr -- tlen.  
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Към Рила / Kâm Rila" }
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