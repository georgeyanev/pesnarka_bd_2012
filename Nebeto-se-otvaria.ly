


melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Moderato" 4 = 88
 \partial 4 g'4 | e'2 f'4 | g'2 g'4 | a'2. | g'2 g'4 | c''2 d''4 | e''2 d''4 |
 \break
 d''2. | c''2 g'4 | 
\repeat volta 2 { e''2 e''4 | d''2 cis''4 | d''2. |
\break
  a'2 c''4 | b'2 b'4 | b'4 ( a'4 ) b'4 | d''2. |
 
} \alternative {{ c''2 g'4 | } { c''2  s4 } }

}

text = \lyricmode { Не -- бе -- то се от -- ва -- ря и Ан -- ге -- ли -- те
пе-  ят. И мол -- ни -- и бле -- стя -- щи тъ -- ми и здрач пи -- ле -- ят. 
И ят.
}

textL = \lyricmode { Ne -- be -- to se -- ot -- va -- rya -- i An -- ge -- li -- te
pe-  yat. I mol -- ni -- i ble -- stya -- shti tâ -- mi i zdrach pi -- le -- yat.
I yat. 
 
 
}

\score{
   
  \header {
 title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvarya" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org
 % arranger = \markup { \fontsize #+1 "Контекстуализация: Йордан Камджалов / Contextualization: Yordan Kamdzhalov" }
  %composer = \markup \center-column { "Бейнса Дуно / Beinsa Duno" \vspace #1 } 

}  
  <<
    
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics 
    \lyricsto "one" \text
    
    \new Lyrics 
    \lyricsto "one" \textL
  >>
 
 
}