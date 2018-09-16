


melody = \absolute  {
  \clef treble
  \key f \major
  \time 2/4 \tempo "Tempo di marcia" 4 = 100
  
  \autoBeamOff
  
  \partial 4
 
 f'8 a'8 | c''4 c''8. d''16 |  c''4 f'8 g'8 | a'4 a'8. a'16 | a'4 g'8 a'8  \break

bes'4 bes'8. bes'16 | bes'4 a'8 bes'8 | d''4 c''8. b'16 | c''2 (| c''4) a'8 bes'8 | \break 

c''4 c''8. d''16 | c''4 f''8 g''8 | a'4 a'8. a'16 | g'4 c''8 c''8 | b'4 c''8 d''8| \break


e''4 e''8 d''8 | c''8 b'8 c''4 (| c''4) a'8. bes'16 | \repeat volta 2 { c''2 (| c''8) c''8 d''8 bes'8  |\break

g'2 (| g'4 ) g'8. a'16| bes'2 ( |  bes'8 ) bes'8 c''8 g'8|   a'2 ( | \break 

a'4 ) a'8. bes'16| c''2 ( | c''8 ) c''8 f''8 e''8 | d''2 (|d''4 ) e''4 \break  

  f''8 c''8 d''8 bes'8 | a'4 g'4 |} \alternative { { f'2 ( | f'8 ) r8 a'8. bes'16 | } { f'2 (| f' 8 ) r8 | \break } }
 
} 

text = \lyricmode { Вре -- ме е да вър -- вим зло -- то да по -- бе -- дим, Мир -- ра 
                    
                    да въ -- дво -- рим, Хри -- та да въз -- ца -- рим.  Пра -- да 
                    
                    ще въ -- ве -- дем, Сво -- бо -- да ще да -- дем и през всич -- ки -- те 
                    
                    дни вер -- ни ще сме ний. Да ца -- ру -- ва Лю -- бов -- та! 
                    
                    Да ца -- ру -- ва Бла -- гост -- та!
                    
                    Бог е ца -- рят на све -- та, Той в~пъ -- тя ни е Све -- ли -- на. Да ца -- на. 
                    
                    
 
 
}

textL = \lyricmode { Vre -- me e da vyr -- vim zlo -- to da po -- be -- dim, Mir -- ra 
                    
                    da vy -- dvo -- rim, Hri -- ta da vyz -- ca -- rim.  Pra -- da 
                    
                    shhe vy -- ve -- dem, Svo -- bo -- da shhe da -- dem i prez vsich -- ki -- te 
                    
                    dni ver -- ni shhe sme nij. Da ca -- ru -- va Lju -- bov -- ta! 
                    
                    Da ca -- ru -- va Bla -- gost -- ta!
                    
                    Bog e ca -- rjat na sve -- ta, Toj v~py -- tja ni e Sve -- li -- na. Da ca -- na. 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Време е да вървим / Vreme e da varvim" }
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