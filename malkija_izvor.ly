


melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Allegretto" 4 = 108
  
  \autoBeamOff
 
 d'4 d'4 | a'8 g'8 fis'8 g'8| a'4 ( b' ) | a'2 |b'8. b'16 b'8 b'8 | \break
 
\time 3/4 d''4 b'4 a'8. b'16 | \time 2/4 a'2 | \time 3/4 b'8 a'8 g'8 fis'8 a'8 g'8 | \time 2/4 fis'4 d'4 | \break

e'8 e'8 fis' fis' | \time 3/4 g'8 g' a' a' a'4| \time 2/4 b'8 a' g' fis' \break

a'8 g' fis' e' | d'4 e'8 e' | \repeat volta 2 { e'4 fis'8 fis' | fis'4 g'8 g' |\break
                                                
g'4 a'8 a' | b' a' g' fis' | a'4 fis'8 fis' |  a'8 g' fis' e' | \break

d'4 e'8 e' | e' e' e' fis' | g'4 e'8 fis' | \break

g'4 b'8 b'8 | b'8 a'8 g'8 fis'8 | a'4 fis'8 fis' | \break

a'8 g' fis' e' | } \alternative { { d'4 e'8 e'8 } { d'2 } } 







}

text = \lyricmode {Све -- тъл лъч от -- го -- ре сли -- за,

мал -- ки -- те цве -- тя да о -- за -- ри.

Бли -- зо из -- вор -- че из -- ви -- ра,

ле -- ко бли -- ка, шуш -- не, шу -- мо -- ли

и цве -- тя -- та веч -- но ве -- се -- ли.

Ве -- се -- ли, ве -- се -- ли, ве -- се -- ли, бли -- ка, шуш -- не, ве -- се -- ли, 

бли -- ка, шуш -- не, ве -- се -- ли, бли -- ка, шуш -- не, ве -- се -- ли, ве -- се -- ли,

ле -- ко бли -- ка, шу -- мо -- ли и цве -- тя -- та ве -- се -- ли.

Ве -- се -- ли
 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Малкия извор / Malkijat izvor" }
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