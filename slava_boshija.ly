


melody = \absolute  {
  \clef treble
  \key d \major
  \time 4/4 \tempo "Andantino" 4 = 72
  
  \autoBeamOff
 
 d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \times 2/3 {  d''8 cis'' b'8 } ais'2 \break |

\times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 ( d'' e'' d'' cis'' b' ) ais'4 | b'8 ( cis'' ) b'2.

}

text = \lyricmode { Не на ме --
  не, не на ме -- не, но на И -- ме -- то Си
  дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!

 
 
}

textL = \lyricmode { Ne na me --
  ne, ne na me -- ne, no na I -- me -- to Si
  daj, Bo -- she, sla -- va, sla -- va, sla -- va!
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Слава Божия / Slava Boshija" }
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