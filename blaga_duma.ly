


melody = \absolute  {
  \clef treble
  \key g \major
  \time 5/4 \tempo "Moderato" 4 = 88
  
  \autoBeamOff
  
 d'8. d'16 g'8 g' g' a' b'4 b' | d''8. c''16 c''8 b' c'' b' a'4 a' \break | 
 
 \time 6/4  b'8. b'16 b'4 b' c''8. c''16 c''4 c'' | d''8. c''16 b'8 a' b' a' g'4 g'2 \break |
 
 \time 5/4  e''8. d''16 c''8 b' d'' c'' b'4 b' | c''8. b'16 a'8 g' a' b' c''4 c'' \break |
  
  \time 6/4  d''8. c''16 d''4 b' b'8. c''16 d''4 d'' | d''8. c''16 b'8 a' b' a' g'4 g'2 \break |
  
  \time 5/4  b'8. a'16 g'8 fis' g' e' d'4 d' | g'8. g'16 a'8 a' b' b' b'4 b' \break | 
  
  \time 6/4  c''8. c''16 c''4 c'' d''8. d''16 d''4 d'' | d''8. c''16 b'8 a' b' a' g'4 g'2 \break |
  
  \time 5/4  c''8. e'16 e'8 d' d' d' d'4 d' | d'8. d'16 e'8 fis' g' a' g'4 g' | \break
 
 \time 6/4  a'8. a'16 a'4 a' b'8. b'16 b'4 b' | c''8. b'16 a'8 g' b' a' g'4 g'2 \break | 


\repeat volta 2 { d'8. d'16 c''4. b'8 a'8. g'16 a'4 g' | \time 5/4  fis'8. e'16 fis'8 e' fis' e' e'4 d' \break | 
                  
\time 6/4  e'4 e' fis' fis' g' g' | a'8. a'16 a'8 g' b' a' g'4 g'2 \break | 

    \time 5/4  b'8. b'16 b'8 b' b' c'' d''4 d'' | e''8. d''16 c''8 b' d'' c'' b'4 b' \break | 
    
    c''8. b'16 a'8 g' a' b' c''4 c'' | \time 6/4  d''8. c''16 b'8 a' b' a' g'4 g'2 \break |
  }


}

text = \lyricmode { Бла -- га ду
  -- ма на у -- ста -- та, туй е клю -- чът на
  сър -- ца -- та, на сър -- ца -- та, на сър --
  ца -- та, туй е клю -- чът на сър -- ца -- та.
  Ми -- ли пог -- лед на о -- чи -- те, туй е --
  зик е на ду -- ши -- те, на ду -- ши -- те, на
  ду -- ши -- те, туй е -- зик е на ду -- ши --
  те. Неж -- но чув -- ство про -- я -- ве -- но: 
  вся -- ко зло е раз -- то -- пе -- но, раз -- то
  -- пе -- но, раз -- то -- пе -- но, вся -- ко зло
  е раз -- то -- пе -- но. Сил -- на во -- ля у --
  вен -- ча -- ва вся -- ко де -- ло и про -- я --
  ва, вся -- ко де -- ло, вся -- ко де -- ло, вся
  -- ко де -- ло и про -- я -- ва. Лю -- бов -- та
  със тях съ -- граж -- да тоз Жи -- вот, що тук
  се раж -- да, раж -- да, раж -- да, раж -- да,
  тоз Жи -- вот, що тук се раж -- да, тоз Жи --
  вот, що тук се раж -- да, тоз Жи -- вот, що
  тук се раж -- да, тоз Жи -- вот, що тук се раж
  -- да, тоз Жи -- вот, що тук се раж -- да.

 
 
}

textL = \lyricmode {Bla -- ga du -- ma
  na u -- sta -- ta, tuy e klyu -- chat na sar -- tsa -- ta, na
  sar -- tsa -- ta, na sar -- sta -- ta, tuy e klyu -- chat na sar
  -- tsa -- ta. Mi -- li pog -- led na o -- chi -- te, tuy e --
  zik e na du -- shi -- te, na du -- shi -- te, na du -- shi --
  te, tuy e -- zik e na du -- shi -- te. Nezh -- no chuv -- stvo
  pro -- ya -- ve -- no vsya -- ko zlo e raz -- to -- pe -- no, raz
  -- to -- pe -- no, raz -- to -- pe -- no, vsya -- ko zlo e raz
  -- to -- pe -- no. Sil -- na vo -- lya u -- ven -- cha -- va vsya
  -- ko de -- lo i pro -- ya -- va, vsya -- ko de -- lo, vsya --
  ko de -- lo, vsya -- ko de -- lo i pro -- ya -- va. Lyu -- bov
  -- ta sas tyah sa -- grazh -- da toz Zhi -- vot, shto tuk se razh
  -- da, razh -- da, razh -- da, razh -- da, toz Zhi -- vot,
  shto tuk se razh -- da, toz Zhi -- vot, shto tuk se razh --
  da, toz Zhi -- vot, shto tuk se razh -- da, toz Zhi -- vot,
  shto tuk se razh -- da, toz Zhi -- vot, shto tuk se razh --
  da.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Блада дума / Blaga duma" }
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