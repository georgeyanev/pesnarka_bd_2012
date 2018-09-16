


melody = \absolute  {
  \clef treble
  \key d \major
  \time 3/4 \tempo "Moderato" 4 = 112
 
 a'2 a'4| fis''2 e''4| d''2 b'4 | a'2 fis'4 | e'2 e'4 | cis'2 a4 | \break
 
 d'2 fis'4 | a'2 r4| a'2 a'4| b'2 cis''4 | d'2 e'4| fis''2.| \break
            
 d'2. |  b'2 b'4| a'2 g'4 | fis'2 e'4 | d'2. | g'2 b'4 | d''2 b'4| \break
 
 a'2 a'4 | fis'2 d'4 | d'2 d'4 | cis'2 b'4 | a'2 cis'4 | d'2. | b'2 b'4 |  \break
 
 e'2 d'4 | c'2 b'4 | a'2 fis'4 | a'2 b'4 | fis'2 e'4 | fis'2 cis'4| d'2. | \break
 




}

text = \lyricmode { Но -- ви хи -- мни на И -- су -- са да за -- пе -- ем
                    
                    в~то -- я час, Бо -- жи Син е Той пред -- ве -- 
                    
                    чен на Не -- бе -- то и във нас.  Наш У -- чи -- тел,
                    
                    наш во -- ди -- тел, ис -- тин -- ски -- ят наш Жи -- вот, Не -- го --
                    
                    во -- то креп -- ко И -- ме да се сла -- ви врод и род.

 
 
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