


melody = \absolute  {
  \clef treble
  \key c \major
  \time 6/4 \tempo "Lento" 4 = 50
 
 
\repeat volta 3 {   g4 c' e' c' g2 | g4 c' e' c' g2 | \time 4/4  e'4 g' c''2 \break |
 
 b'4 ( a' ) g'2 | \time 6/4 } \alternative { { a'4 f' a' g' e'2 | g'4 e' f' d' c'2 } } \break | 

\time 6/4  a'4 ( f' a' g' ) e'2 |  g'4 e'8 e' f'4 d' c'2  \break 

}

text = \lyricmode {  Вдъх -- но -- ве -- ни -- е, вдъх -- но -- ве -- ни -- е, вдъх -- но -- ве  ни -- е, вдъх -- но -- ве -- ни -- е,
  вдъх -- но -- ве -- ни -- е, ти си бла -- го --
  сло -- ве -- ни -- е.

 
 
}

textL = \lyricmode {  Vdah -- no -- ve
  -- ni -- e, vdah -- no -- ve -- ni -- e, vdah -- no -- ve -- ni
  -- e, vdah -- no -- ve -- ni -- e, vdah -- no -- ve -- ni --
  e. ti si bla -- go -- slo -- ve -- ni -- e.
 
 
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