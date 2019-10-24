\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key des \major
  \time 2/4 \tempo "Adagio" 4 = 54
  
  \autoBeamOff
 
\repeat volta 2 {
     f'4 bes'8. as'16 | % 2
    ges'4 es'4 | % 3
    f'4 as'8. ges'16 | % 4
    f'4 c'4 \break | % 5
    es'8. es'16 f'8. es'16 | % 6
    des'4 bes4 | % 7
    c'4 es'8. des'16 | % 8
    c'4 bes4 \break | % 9
    des'4 c'8. c'16 | \barNumberCheck #10
    bes4 a4 | % 11
    bes2
  }
  | % 12
  bes4 a4 | % 13
  bes2 \bar "|."
}





text = \lyricmode { Да бих Те
  слу -- шал, да бих Те слу -- шал! А -- ко бих
  Те слу -- шал, До -- бро -- то ще -- ше в_мен да
  се про -- я -- ви. из -- я -- ви.

 
 
}

textL = \lyricmode {Da bih Te slu --
  shal, da bih Te slu -- shal! A -- ko bih Te slu -- shal, do --
  bro -- to shte -- she v_men da se pro -- ya -- vi. iz -- ya --
  vi.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Да бих те слушал / Da bih te slushal" }
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