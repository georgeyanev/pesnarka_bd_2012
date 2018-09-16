


melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Adagio" 4 = 54
 \partial 4
 
 a4 | d'2 | \time 3/4 b'4 a' fis' | \time 4/4 a'2 ( a'8 ) r8 a4 | \time 2/4 d'2 | \time 3/4 b'4 a'4 fis'4 \break
 
 a'2 r8 fis'8 | \repeat volta 2 {  \time 9/8 fis'4 fis'8 fis'4 fis'8 fis'4 g'8 | a'4 a'8 b'4 a'8 a'4 fis'8 | \break
 
 a'4 g'8 g'4 fis'8 fis'4 e'8 | \time 6/8 e'4 e'8 fis'4 e'8 | } \alternative { {d'4. (d'4 ) fis'8 } 
  
  {d'4. (d'4) a8 | } } \break \repeat volta 2 {  \time 9/8 a4 a8 a4 a8 a4 a8 | g'4 fis'8 e'4 e'8 e'4 e'8 | \break 
                                                 
                                                 \time 6/8 
 
 fis'4 e'8 d'4 cis'8 | } \alternative { { d'4. ( d'4 ) a'8 } { d'4. ( d'4 )  r8 } }



}

text = \lyricmode { Ми -- сли, пра -- во ми -- сли. Ми -- сли, пра -- во ми -- сли! 
                    
Све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи, све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи. Све -- пи. Кре -- пи кре -- пи

кре -- пи све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи.  Кре -- пи.
 
}

textL = \lyricmode { Mi -- sli, pra -- vo mi -- sli. Mi -- sli, pra -- vo mi -- sli! 
                    
Sve -- shhe -- ni mi -- sli za Zhi -- vo -- ta ti kre -- pi, sve -- shhe -- ni mi -- sli za Zhi -- vo -- ta ti kre -- pi. Sve -- pi. Kre -- pi kre -- pi

kre -- pi sve -- shhe -- ni mi -- sli za Zhi -- vo -- ta ti kre -- pi.  Kre -- pi.
 
 
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