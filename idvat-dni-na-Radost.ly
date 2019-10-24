






melody = \absolute  {
  \clef treble
  \key d \minor
  \autoBeamOff
  \time 3/4 \tempo "Andante" 4 = 66
  \repeat volta 2 {
  a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 |
 \break
 g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 |
 \break
 e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 |

  } 

}

text = \lyricmode { И -- дват дни на Ра -- дост, и -- дват дни на Ра -- дост,
и -- дват дни на Ра -- дост, за о -- ни -- я, 
ко -- и -- то слу -- жат Бо -- гу.
 
}

textL = \lyricmode { I -- dvat dni na Ra -- dost, i -- dvat dni na Ra -- dost,
i -- dvat dni na Ra -- dost, za o -- ni -- ya,
ko -- i -- to slu -- dgyat Bo -- gy. 
  
}

\score{
  \header {
  title = \markup { \fontsize #-3 "Идват дни на Радост / Idvat dni na Radost" }
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