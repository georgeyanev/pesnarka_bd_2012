


melody = \absolute  {
  \clef treble
  \key g \major
  \time 3/4 \tempo "Moderato" 4 = 72
 \partial 4
 \break
 
 \autoBeamOff

b8. c'16 | d'4 g' fis'8. e'16 | \time 2/4  e'4. e'8 | \time 3/4  e'4 c' e'8. e'16 \break | 

  d'2 b'8. b'16 | c''4 b' b'8. a'16 | a'4 g'2 \break | 
  
  \time 4/4  b'8. b'16 c''8. c''16 b'2 | d''4 c'' b' a' | a'2 g' \break | 
  
  \time 6/4  \repeat volta 2 {fis'4 fis' fis'2 e' | e'4 e' e'2 d' |  \time 4/4  b'4 b' c'' a' | a'2 g'}

}

text = \lyricmode {Ти съ -- зна -- вай, ти лю -- би,
  без -- спир -- но сей, гра -- ди и в_Жи -- во --
  та всич -- ко да -- вай. Та -- зи Ис -- ти --
  на, Бо -- га, ти по -- зна -- вай. Ти по -- зна
  -- вай, ти по -- зна -- вай, Бо -- га ти по --
  зна -- вай.

 
 
}

textL = \lyricmode {Ti sa -- sna -- vai, ti lju -- bi,
  bes -- spir -- no sei, gra -- di i v_Shi -- vo --
  ta vsitsch -- ko da -- vai. Ta -- si Is -- ti --
  na, Bo -- ga, ti po -- sna -- vai. Ti po -- sna
  -- vai, ti po -- sna -- vai, Bo -- ga ti po --
  sna -- vai.
 
 
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