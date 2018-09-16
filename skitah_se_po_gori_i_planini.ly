


melody = \absolute  {
  \clef treble
  \key bes \major
  \time 2/4 \tempo "Lento" 4 = 54
 
d'4 g'8. ( a'16 ) | % 2
  bes'4. ( a'8 ) | % 3
  g'16 fis'16 g'16 a'16 g'8 es'8 \break | % 4
  \time 3/4  d'2 \times 2/3 {
    a'8*255/256 bes'8*255/256 c''8*129/128
  }
  | % 5
  d''4. a'8 \times 2/3 {
    c''8*255/256 bes'8*255/256 a'8*129/128
  }
  | % 6
  \times 2/3  {
    bes'8*255/256 ( a'8*255/256 ) g'8*129/128
  }
  g'2 \break | % 7
  d''4 ( \times 2/3 {
    d''8*255/256 ) cis''8*255/256 d''8*129/128
  }
  \times 2/3  {
    es''8*255/256 d''8*255/256 cis''8*129/128
  }
  | % 8
  d''2 \times 2/3 {
    a'8*255/256 bes'8*255/256 c''8*129/128
  }
  | % 9
  d''4. c''8 d''8 c''8 \break | \barNumberCheck #10
  bes'2 \times 2/3 {
    a'8*255/256 bes'8*255/256 c''8*129/128
  }
  | % 11
  d''4. a'8 c''16 bes'16 a'16 g'16 | % 12
  g'2 r4 \break | % 13
  \time 4/4  \repeat volta 2 {
    d''8 \fermata \times 2/3 {
      d''16*63/64 d''16*129/128 d''16*129/128
    }
    d''8 ( g''8 ) bes''2 | % 14
    a''16 g''16 fis''16 g''16 a''8. g''16 g''2 \break | % 15
    f''16 -\markup{ \bold {rall.} } es''16 d''16 cis''16 d''2 \times
    2/3 {
      c''8*255/256 -\markup{ \bold {a tempo} } bes'8*255/256 a'8*129/128
    }
    | % 16
    \time 3/4  bes'2 \times 2/3 {
      a'8*255/256 bes'8*255/256 c''8*129/128
    }
    \break | % 17
    d''4. c''8 d''16 ( c''16 ) bes'16 a'16 | % 18
    bes'2 \times 2/3 {
      a'8*255/256 bes'8*255/256 c''8*129/128
    }
    \break | % 19
    d''4. c''8 \times 2/3 {
      bes'8*255/256 a'8*255/256 g'8*129/128
    }
    | \barNumberCheck #20
    \times 2/3  {
      fis'8*255/256 -\markup{ \bold {rit.} } g'8*255/256 a'8*129/128
    }
    g'2
  }



}

text = \lyricmode { Ски  --  тах 
   се   по   го  --  ри   и   пла  --  ни  --  ни.   Е  --  дин   Не 
  --  зна  --  ен   ме   при  --  дру  --  жа  --  ва  --  ше.   Кач 
  --  вах  --  ме   и   сли  --  зах  --  ме   пла  --  нин  --  ски 
   свет  --  ли   вър  --  хо  --  ве   и,   хо  --  дей  --  ки, 
   Той   ви  --  на  --  ги   с_мен   бе.   Там   го  --  ре   ви  --
   дях   аз   Не  --  го  --  ва  --  та   Свет  --  ли  --  на,   що 
   ме   о  --  за  --  ри,   и   ка  --  за   Той:   „Пом  --  ни, 
   че   тряб  --  ва   го  --  ре   да   си,   слез  --  ни   и   знай
    --   на   вси  --  чки   по  --  ле  --  зен   бъ  --  ди.“ 

 
 
}

textL = \lyricmode { Ski -- tah se po
  go -- ri i pla -- ni --  ni.  E -- din Ne -- zna -- en me pri -- dru
  -- zha -- va --  she.  Kach -- vah -- me i sli -- zah -- me pla --
  nin -- ski svet -- li var -- ho -- ve  i,  ho -- dey --  ki,  Toy vi
  -- na -- gi  s_men   be.  Tam go -- re vi -- dyah az Ne -- go -- va
  -- ta Svet -- li --  na,  shto me o -- za --  ri,  i ka -- za  Toy: 
   „Pom  --  ni,  che tryab -- va go -- re da  si,  slez -- ni i znay
  -- na vsi -- chki po -- le -- zen ba --  di.“ 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Скитах се по гори и планини / Skitah se po gori i planini" }
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