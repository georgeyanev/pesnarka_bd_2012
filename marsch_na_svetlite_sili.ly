


melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Moderato" 4 = 88
 
 c'8 \p e'8 e'8 g8 | % 2
  c'8 e'8 e'8 g8 | % 3
  b8 d'8 d'8 g8 | % 4
  b8 d'8 d'8 g8 \break | % 5
  \acciaccatura { g16 ( a16 b16 } c'8 ) e'8 e'8 g8 | % 6
  c'8 c'8 c'8 g8 | % 7
  b8 b8 b8 g8 | % 8
  b8 ( b8 ) b8 (g8) \break | % 9
  g8. g16 a8. g16 | \barNumberCheck #10
  b8 b4 b8 | % 11
  g8. g16 a8. g16 | % 12
  c'8 c'4 c'8 \bar "||"
  \key es \major c'4 g'4 ( \break | % 14
  g'4 ) g'16 ( f'16 es'16 d'16 ) | % 15
  c'8 es'8 c'8 es'8 | % 16
  c'8 es'8 f'16 ( es'16 d'16 c'16 ) | % 17
  bes8 d'8 bes8 d'8 \break | % 18
  bes8 d'8 es'16 ( d'16 c'16 bes16 ) | % 19
  a8 d'8 a8 d'8 | \barNumberCheck #20
  a8 d'8 g16 ( a16 bes16 a16 ) | % 21
  g8 g4 g8 \bar "||"
  \break | % 22
  \key bes \major \time 5/4 \repeat volta 2 {
    d'8 d'4 d'4 d'8 bes'8 \acciaccatura { a'16 ( bes'16 } a'8 ) g'8
    es'8 | % 23
    d'8 d'4 d'4 d'8 bes'8 \acciaccatura { a'16 ( bes'16 } a'8 ) g'8
    es'8 \break | % 24
    d'8 d'4 d'4 d'8 c'8 d'8 es'8 g'8 | % 25
    d'8 d'4 d'4 d'8 c'8 d'8 es'8 g'8 \break | % 26
    \time 3/4  d'8 d'4 d'4 d'8 | % 27
    g8 a8 bes8 a8 c'8 bes8 | % 28
    \acciaccatura { bes16 ( c'16 } bes8 ) a8 a8 g16 a16 bes8 a8
    \break | % 29
    g8 g4 g4 g8
  }
  | \barNumberCheck #30
  \acciaccatura { bes16 ( c'16 } bes8 ) a8 g16 a16 bes16 a16 g8 g8 | % 31
  g8 g4 g8 g'4 -\markup{ \bold {D. C. con ripetizione} } \bar "|."
}

PartPOneVoiceNone =  {
  \clef "treble" \key c \major \time 2/4 \pageBreak | % 1
  \tempo 4=100 s8 -"p" e'8 e'8 s4 e'8 e'8 s4 d'8 d'8 s4 d'8 d'8 s8
  \break | % 5
  s8 e'8 e'8 s4 e'8 e'8 s4 d'8 d'8 s4 d'8 d'8 s8 \break | % 9
  s1*2 \bar "||"
  \key es \major s2 \break | % 14
  s1*2 \break | % 18
  s1*2 \bar "||"
  \break | % 22
  \key bes \major \time 5/4 \repeat volta 2 {
    s2*5 \break | % 24
    s2*5 \break | % 26
    \time 3/4  s4*9 \break | % 29
    s2.
  }
  s4*5 s4 -\markup{ \bold {D. C. con ripetizione} } \bar "|."
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
  title = \markup { \fontsize #0 "Песен на зората / Pesen na sorata" }
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