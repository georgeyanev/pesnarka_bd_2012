


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 3/4 \tempo "Larghetto" 4 = 58
 \partial 4
 
 \autoBeamOff
 
e'8 e' a'4 b' c''8 b' |  a'4 a' b'8 b' | c''4 c'' d''8 c'' \break | % 5

b'4 a' e''8 e'' | e''4 d'' c''8 d'' | e''2 c''8 c'' | c''4 b' c''8 b' \break |

a'2 e''8 d'' \repeat volta 2 {| c''4 c'' d''8 c'' |  b'4 b' c''8 b' \break | 
                              
a'4 gis' a'8 b' | }  \alternative { { c''4 b' a'8 b' | c''4 d'' e''8 f'' | e''2 e''8 d''  \break |  }                            
   
   
{ c''4 b' c''8 b'8 | a'4 gis'4 a'8 b'8 | a'2.| } }
 
                             

}

text = \lyricmode { Рос -- на
  кап -- ко, свят ла -- зу -- рен, чист, кра -- сив
  и тих, без -- бу -- рен, мир на рай -- ски -- я
  Жи -- вот, мир на рай -- ски -- я Жи -- вот!
  В_те -- бе, кап -- ко, ви -- кам всич -- ки бра --
  тя ми -- ли и се -- стрич -- ки, да ти ста --
  не -- ме на -- род. В~те -- бе, стрич -- ки, да
  ти ста -- не -- ме на -- род.

 
 
}

textL = \lyricmode { Ros -- na
  kap -- ko, svjat la -- zu -- ren, chist, kra -- siv
  i tih, bez -- bu -- ren, mir na raj -- ski -- ja
  Shi -- vot, mir na raj -- ski -- ja Shi -- vot!
  V~te -- be, kap -- ko, vi -- kam vsich -- ki bra --
  tja mi -- li i se -- strich -- ki, da ti sta --
  ne -- me na -- rod. V~te -- be, strich -- ki, da
  ti sta -- ne -- me na -- rod.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Росна капко / Rosna kapko" }
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