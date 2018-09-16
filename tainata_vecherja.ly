


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 2/4 \tempo "Andante" 4 = 60
 
 a8 ( e'8 ) d'8 c'8 \noBeam | d'4 e'4 | a8 ( e'8 )  d'8 c'8 \noBeam | d'8 e'8 \noBeam e'8 e' 8 \noBeam \break|

\autoBeamOff c'8 g'8 g'8 g'8 |\autoBeamOn g'8 (a'8) \autoBeamOff g'8 f'8 | a'2 \repeat volta 2 { \autoBeamOn c'8 ( d'8 ) \autoBeamOff e'8 a'8 |\break

b'4 a'4 | \autoBeamOn c'8 ( d'8 ) \autoBeamOff e'8 a'8 | \autoBeamOn a'8 ( c''8 ) \autoBeamOff b'8 g'8 | \autoBeamOn a'2 | } \alternative { {  c'8 ( d' e' ) \noBeam a'  | \break

b'8 ( d''8 ) c''8 b'8 | a'2 | } {  c'8 ( d'8 e'8 ) a8 |b8 ( d'8 ) c'8 b8 | a2| \break } }



}

text = \lyricmode { Зун ме -- ри ма -- ну зун ме -- ри -- ма -- ну -- да -- на,
                    
                    а -- са -- ви -- та ви -- та нан -- да. Зун ме -- ри ма -- ну, Зун ме -- ри ма -- нун -- да -- на  

                   а -- са -- ви -- та  нан -- да.  а -- са -- ви -- та  нан -- да.
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Тайната вечеря / Tainata vecherja" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org
 

}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}