


melody = \absolute  {
  \clef treble
  \key d \major
  \time 7/16 \tempo "Allegretto" 4 = 160

a8 a8 a8 a16 | a4 a8. | d'8 d'8 e'8 e'16 | e'4 e'8. | \break

fis'8 fis'8 fis'8 g'16 | a'4 a'8. | b'8 a'8 g'8 fis'16 | a'4 a'8. | b'8 a'8 g'8 fis'16 | \break

fis'4 fis'8. | \repeat volta 2 { b'8 b'8 b'8 b'16| d''4 b'8. | a'8 a'8 a'8 g'16 | fis'4 fis'8. | } \break

a'8 g'8 g'8 fis'16 | g'4 e'8. | e'8 e'8 fis'8 e'16 | d'4 d'8. | \break

}

text = \lyricmode {Хо -- ди хо -- ди хо -- ди за во -- да -- та хо -- ди
                   
                   су -- трин -- на -- та ро -- са през ре -- чи -- ца бис -- тра, по пъ -- те -- ка
                   
                   чис -- та. За -- до -- ма  си но -- си  таз во -- ди -- ца бис -- тра,
                   
                   за цве -- тен -- ца ми -- ли, ней -- ни -- те де -- чи -- ца. 
                   

 
 
}

textL = \lyricmode {Ho -- di ho -- di ho -- di za vo -- da -- ta ho -- di
                   
                   su -- trin -- na -- ta ro -- sa prez re -- tschi -- tsa bis -- tra, po pа -- te -- ka
                   
                   tschis -- ta. Za -- do -- ma  si no -- si  taz vo -- di -- tsa bis -- tra,
                   
                   za tsve -- ten -- tsa mi -- li, nej -- ni -- te de -- tschi -- tsa. 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Ходи, ходи, ходи / Ходи, ходи, ходи" }
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