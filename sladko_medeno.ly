


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Allegretto" 4 = 104
  
  \autoBeamOff
 
d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2   \break | 

\repeat volta 2 {  a'8 a' a'4 | b'8 b' b'4 | d''8 c'' b' a' |  g'2 }  \break |


\repeat volta 2 { d''4 g'' | fis''4 e'' | e''4 fis''8 e'' | d''2 \break | 
                  
    b'4 d'' | c''4 b' | a'4 b'8 a' | g'2 }

}

text = \lyricmode { Слад -- ко,
  ме -- де -- но, слад -- ко, ме -- де -- но, ме --
  де -- но, ме -- де -- но, слад -- ко, ме -- де --
  но. От Слън -- це -- то из -- пра -- те -- но,
  от пче -- ли -- те до -- не -- се -- но.

 
 
}

textL = \lyricmode {Slad -- ko, me -- de -- no, slad -- ko, me --
  de -- no, me -- de -- no, me -- de -- no, slad -- ko, me --
  de -- no. Ot Slan -- tse -- to iz -- pra -- te -- no, ot pche --
  li -- te do -- ne -- se -- no.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Сладко медено / Sladko medeno" }
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