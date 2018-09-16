


melody = \absolute  {
  \clef treble
  \key a \major
  \time 6/4 \tempo "Andante" 4 = 88
 
   \repeat volta 2 {
    
     a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 gis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |
    
    \time 5/4  e'4. b8 b4 a2 \time 8/8  \repeat volta 2 { e'4.  fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break | 
    
    e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. 
      }
    
    
  }



}

text = \lyricmode {Ве -- чер,
  су -- трин о -- ти -- де, дой -- де, ве -- чер,
  су -- трин о -- ти -- де, дой -- де. О -- ти --
  де, дой -- де, о -- ти -- де, дой -- де, о -- ти
  -- де, дой -- де, дой -- де.

 
 
}

textL = \lyricmode {Ve -- cher, sut
  -- rin o -- ti -- de, doy -- de, ve -- cher, sut -- rin, o
  -- ti -- de, doy -- de. O -- ti -- de, doy -- de, o -- ti --
  de, doy -- de, o -- ti -- de, doy -- de, doy -- de.
 
 
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