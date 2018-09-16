\version "2.18.2"
\header {
  title = "Marsch der lichtvollen Mächte"
  composer = "Beinsa Duno - Peter Ganev" 
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}



melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Moderato" 4 = 72
 
 g'8 b'8 b'8 d'8 |g'8 b'8 b'8 d'8 |fis'8 a'8 a'8 d'8 | fis'8 a'8 a'8 d'8   |g'8 b'8 b'8 d'8 |g'8 b'8 b'8 d'8 \break
 
 fis'8 a'8 a'8 d'8 | fis'8 a'8  a'8  d'8 | d'8. d'16 e'8. d'16 | fis'8 fis'4 fis'8 | d'8. d'16 e'8. d'16 | g'8  g'4 g'8  | \key g \minor g'4 d''4 ( |\break

d''4) d''16 c''16 bes'16 a'16 |g'8 bes'8 c''16 bes'16 a'16 g'16 |f'8 a'8 f'8 a'8 | f'8 a'8 bes'16 a'16 g'16 f'16 | \break


e'8 a'8 e'8 a'8 | e'8 a'8 d'16 e'16 f'16 e'16| d'8 d'4 d'8 | \repeat volta 2 { \key f \major \time 5/4 a'8 a'4 a'4 a'8 f''8 \acciaccatura { d''16 f''16 } e''8 d''8 bes'8| \break

a'8 a'4 a'4 a'8 f''8 \acciaccatura { e''16 f''16 } e''8 d''8 bes'8 | a'8 a'4 a'4 a'8 g'8 a'8 bes'8 d''8 \break

a'8 a'4 a'4 a'8 g'8 a'8 bes'8 d''8 | \time 3/4 a'8 a'4 a'4 a'8 | \time 2/4 d'8 a'8 f'8 e'8 \break


g'8 f'8 f'8 e'8 | e'8 d'16 e'16 f'8 e'8 | \time 3/4 d'8 d'4 d'4 d'8 | } d'8 d'4 d'4 d''8 \fermata \break



}

text = \lyricmode { Lei -- se schreit -- en in der Stil -- le di -- e Mäch -- te de -- s Licht -- es.

 Sie stei -- gen in weiß -- en Reih -- en von der -- Höh -- e   hi -- ab -- hin -- ab. Sie komm -- en auf die Er -- de in die Herz -- en der Mensch -- en.
 
 Und nun es ent -- steh -- en neu -- e leucht -- ende Ide -- en,  wie wir die alten, sinn -- losen Feind- schafts - kett -- en brech -- en, brech -- en und in Fried -- en leb -- en, leb -- en leb -- en.
 
 Mö -- ge jed -- er mit Freu -- de auf dem gött -- lich -- en Ack -- er arbeit -- en, es wird ewi -- ge Ju -- gend herr -- schen nie -- mand wird sterb -- en.   Alle werd -- en in Fried -- en leb -- en
 
 und Gott mit Liedern lob -- preis -- en. 
 
 
 
}

textL = \lyricmode {
  
  
  






  
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Марш на светлите сили / Marsch der hellen Mächte" }
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