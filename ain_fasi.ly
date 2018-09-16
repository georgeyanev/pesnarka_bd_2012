\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key d \minor
  \time 5/4 \tempo "Andante" 4 = 63
 
 d'8  (e'8 ) f'4 d'4 f'2 | d'8 (e'8) f'4 d'4 a'2 | a'8 (bes'16 c''16 bes'4) a'4 d''2 |\break
 
 e''4 \acciaccatura {g''8} f''8 (e''8 d''8 ) cis''8 ( d''8 e''8) d''2 | \time 6/4 f''8 \noBeam f''8 f''4 e''16 d''16 cis ''16 d''16 e''8. d''16 d''2 | \break
 
 
bes'8 bes'8 bes'4 a'16 g'16 f'8 e'16 f'16 g'8 a'2 | \time 7/4 e'8 e'8 g'4 f'16 e'16 d'8 cis'16 d'16 e'8 d'2  bes8 bes8| \break

bes4 (a4) d'4 (cis'4) bes4 ( a8 bes8 ) | \time 3/4 a2 bes8 bes8 | \time 6/4 bes4 as4 d'4 (cis'4) d'4 (cis'4) bes4 (a8 b8) \break

 \time 3/4 a2 \bar "!" \bar "!" a'8. a'16 | \compoundMeter #'((4 3 4 )) a'4 bes'4 a'4 a'8. gis'16 \bar "!"


}

text = \lyricmode {Ain fasi

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Аин фаси/ Ain fasi" }
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