


melody = \absolute  {
  \clef treble
  \key f \major
  \time 8/16 \tempo "Moderato" 4 = 88
 
 g8 g16 a8 a8. ~ | % 2
  a8. ~ a8 ~ a8. | % 3
  d'8. f'8 f'8. ~ | % 4
  f'8. ~ f'8 r8. \break | % 5
  g'8 f'16 e'8 d'8. | % 6
  d'8. f'8 d'8. | % 7
  e'8. e'8 ~ e'8. ~ | % 8
  e'8. ~ e'8 r8. \break | % 9
  f'8 f'16 f'8 d'8 d'16 | \barNumberCheck #10
  g'8 f'16 f'8 f'8 d'16 | % 11
  e'8. e'8 ~ e'8. ~ | % 12
  e'8. ~ e'8 ~ e'8. \break | % 13
  \repeat volta 2 {
    a8. a16 ( bes16 ) cis'8. \fermata | % 14
    d'8. d'8 ( cis'8. ) | % 15
    a8 ( bes16 ) cis'8 ~ cis'8. \break | % 16
    e'8 ( f'16 ) d'8 ~ d'8. | % 17
    \time 11/16  d'8 d'8 e'8 ( f'16 ) d'8 d'8 | % 18
    \time 8/16  e'8. e'8 ~ e'8. ~ \break | % 19
    e'8. ~ e'8 ~ e'8.
  }
  | \barNumberCheck #20
  \key c \major e'8 ( f'16 ) gis'8 ( a'8. ) | % 21
  d''8 c''16 b'8 a'8. | % 22
  a'8. b'8 ~ b'8. \fermata \break | % 23
  c''8. c''8 ~ c''8. \fermata | % 24
  c''8. a'8 ~ a'8. \fermata | % 25
  a'8. c''8 a'8. | % 26
  b'8. b'8 ~ b'8. \fermata \break | % 27
  \repeat volta 2 {
    a'8. a'8 a'8. | % 28
    a'8. f'8 ~ f'8. | % 29
    gis'8 f'16 e'8 d'8. | \barNumberCheck #30
    e'8. e'8 ~ e'8. \fermata
  }



}

text = \lyricmode { А  бре,
син -- ко, зна -- еш ли 
  що съ -- се -- ди за теб го
  -- во -- рят? Че си ста -- 
  -- до -- то в_пла --  ни -- на --
 та о -- ста -- вял и ве --
  чер си се връ -- щал мо --
  ми по се -- ден -- ки  да 
  сре -- щаш. Мо -- ми,  що 
  се -- ден -- ки па -- лят,
  па -- лят, па -- лят,  но 
  и раз -- ва -- лят.  Мо --
  ма се, син -- ко, ве -- чер
   не  из -- би -- ра.

 
 
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