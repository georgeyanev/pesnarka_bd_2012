


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 5/4 \tempo "Moderato" 4 = 60
 \partial 4
 
 \autoBeamOff
 
 d'8 d'8 | g'4 (bes'4) a'4 g'4 fis'4 | \time 3/4 a'4 d'2 | \time 6/4 \break

d''4 es''4 d''4 cis''4 d''4 es''4 | \time 3/4 d''2 c''8 c''8 | \time 4/4 bes'4 a'4 bes'4 c''4 \break

d'4 a'2 c''8 c''8 | \time 6/4 bes'4 a'4 g'4 fis'4 g'2 | \time 3/4 \break



\repeat volta 2 { d''2 es''4 | d''2 cis''4| d''2  a'4 | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | \break 

g'2 a'4 | bes'2. | bes'2 a'4 | bes'2 a'4 | bes'2 a'4| \break

g'2 fis'4 | g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. |\break

}

}

text = \lyricmode { Съ -- бу -- ди -- се, брат -- ко ми -- ли
                    
                    от дъл -- бок сън ти ста -- ни и ве -- ри -- ги -- те ве --
                    
                    ков -- ни от но -- зе -- те си сне -- ми. 

                    Лю -- бов -- та е тво -- я май -- ка, тво -- я си -- ла 
                    
                    твой пи -- лот: тя ще те из -- пра -- ви
                    
                    кре -- ко, тя ще ти да -- ри Жи -- вот. 
 
 
}

textL = \lyricmode {
 
 
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