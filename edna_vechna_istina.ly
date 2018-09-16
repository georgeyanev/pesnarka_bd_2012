


melody = \absolute  {
  \clef treble
  \key bes \major
  \time 6/4 \tempo "Andante" 4 = 72
 
d'2 \p g'2 d'2 | % 2
  \numericTimeSignature\time 4/2  | % 2
  d'2 \< g'2. \! ( a'4 \> ) g'4 \! \< es'4 | % 3
  d'2. \! ( es'4 \> ) c'2 \! \< bes4 a4 \! \break | % 4
  bes2. ( c'4 d'4 \> es'4 d'4 c'4 | % 5
  bes4 a4 bes2 \! ) g2 r2 | % 6
  g'4 a'4 bes'2 a'2 \< ( g'2 \! ) \break | % 7
  \times 2/3  {
    fis'4*255/256 \> ( g'4*513/512 a'4*513/512 )
  }
  g'1 r2 \! | % 8
  \time 4/4  | % 8
  c''4 \mf bes'4 \< a'2 | % 9
  c''4 d''4 es''2 \! | \barNumberCheck #10
  bes'4 \p a'4 \> g'2 | % 11
  f'4 ( es'4 ) d'2 \! \break | % 12
  es'8 \pp ( d'8 ) cis'8 ( d'8 ) es'2 ( ~ | % 13
  es'4 d'4 ) r2 | % 14
  d'4. ( c'8 f'8 es'8 ) d'8 ( cis'8 ) | % 15
  d'2. r4 \break | % 16
  bes4. \mp \> ( a8 ) g2 \! | % 17
  a4. \< ( bes8 ) c'2 \! | % 18
  a4. \> ( bes8 ) g2 \! | % 19
  es'2 \< d'4 fis'4 \! | \barNumberCheck #20
  g'2 bes'2 \> \break | % 21
  a'2 g'2 \! | % 22
  bes4. \p \> ( a8 ) g2 \pp \! | % 23
  a4. \< ( bes8 ) c'2 \! | % 24
  a4. \> ( bes8 \! ) g2 \ppp \fermata \bar "|."




}

text = \lyricmode {"Ед" -- "на" --
  "та," "А" -- "дит" -- "на," "Би" -- "от" -- "на" "Ам" -- "ри" --
  "хал" -- "на." "А" -- "ме" -- "рун," "Ше" -- "ме" -- "рун." "Ил"
  "Би" -- "хар," "Ил" "Би" -- "хар," "Ил" "Би" -- "хар." "Би" --
  "хар," "Ил" "Би" -- "хар." "Ил" "ме" -- "зун." "Ве" -- "ю," "Ве" --
  "Ве" -- "ю," "Ве" -- "ю," "Та" -- "о" "Би" "Ом," "Ом," "Би" -- "ют,"
  "Ве" -- "ю," "Ве" -- "ю," "Ве" -- "ю."

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Една вечна истина, която е Бог на Любовта / Edna vechna istina, kojato e Bog na Ljubovta" }
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