


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Andante" 4 = 66
 
 r8 d'8 g'8 b'8 | d''4. c''8 | \acciaccatura { b'16 ( c''16 } b'8 ) a'8 g'8 ( b'8 ) | a'2 | \break
 
r8 d'8 e'8 \noBeam fis'8 | g'4. ( a'32 g'32 fis'32 g'32 | b'4. ) c''8 | a'2 | \break

r8 d'8 g'8 \noBeam fis'8 | b'8 a'8 d''8 c''8 | \acciaccatura { b'16 ( c''16 } b'8 ) a'8 a'8 ( b'8 ) | g'2 | \break

r8 d'8 d'8 d'8 | c''4. b'8 | a'8 g'8 a'16 ( g'32 a'32 b'32 a'32 g'32 a'32 ) | g'2 | \break

r8 d'8 d'8 d'8 | d''8 ( \fermata e''16 d''16 c''16 b'16 ) a'16 ( g'16 ) | b'4. ( c''16 b'16 ) | a'8 ( \once \override TupletBracket #'stencil = ##f 

\times 2/3  { b'16 a'16 g'16 } a'8 b'8 ) | g'2 | \break


}

text = \lyricmode { Зо -- ра се
  чуд -- на за -- зо -- ря -- ва, зо -- ра на нов Жи --
  вот, ко -- я -- то мен в~Жи -- во -- та при -- зо -- ва
  -- ва. Зо -- ра се чуд -- на за -- зо -- ря --
  ва, зо -- ра на Но -- ви -- я жи -- вот.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Небето се отваря / Nebeto se otvaria" }
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