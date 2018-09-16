


melody = \absolute  {
  \clef treble
  \key ges \major
  \time 4/4 \tempo "Andante" 4 = 66
  
  \autoBeamOff
 
 d'8. es'16 s2. | % 2
  f'2 as'4 ges'8. ( f'16 ) | % 3
  ges'2 f'8. es'16 f'4 \break | % 4
  \time 3/4  es'8. ( d'16 ) es'4 d'8. ces'16 | % 5
  ces'2 d'8. es'16 | % 6
  f'2 es'8. ( d'16 ) \break | % 7
  es'2 d'8. ces'16 | % 8
  ces'4 bes2 | % 9
  \time 2/4  as2 \break | \barNumberCheck #10
  \time 8/16  | \barNumberCheck #10
  g8 -\markup{ \bold {Allegretto} } ( as16 ) bes8 ( ces'8. ) | % 11
  d'8. es'8 ~ es'8. | % 12
  f'8 ( es'16 ) d'8 ces'8. | % 13
  d'8 ces'16 d'8 ces'8. \break | % 14
  bes8 ( as16 ) bes8 ~ bes8. | % 15
  ces'8. ( ~ ces'8 bes8. ) | % 16
  as8. ~ as8 ~ as8. | % 17
  g8 as16 bes8 ces'8. \break | % 18
  d'8. es'8 ~ es'8. | % 19
  f'8 es'16 d'8 ces'8. | \barNumberCheck #20
  d'8 ces'16 d'8 ces'8. | % 21
  bes8 ( as16 ) bes8 ~ bes8. \break | % 22
  ces'8. ( ~ ces'8 bes8. ) | % 23
  as8. ~ as8 ~ as8. | % 24
  g8 as16 bes8 ces'8. | % 25
  d'8. es'8 ~ es'8. \break | % 26
  f'8 es'16 d'8 ces'8. | % 27
  d'8 ces'16 d'8 ces'8. | % 28
  bes8 ( as16 ) bes8 ~ bes8. \bar "|."



}

text = \lyricmode { В_ле -- тен
  ден, в_ран -- ни ри май -- ка ми ти -- се при --
  бли -- жи. Сла -- дък глас бла -- га ду -- ма ми
  ка -- за: „Ста -- вай, дъ -- ще, на ни -- ва
  тряб -- ва да се хо -- ди. Ста -- вай, че ба --
  ща ти вън -- ка мен и те -- бе със ко -- ла --
  та ча -- ка. Ста -- вай, че ба -- ща ти вън --
  ка мен и те -- бе със ко -- ла -- та ча --
  ка.“

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Ставай дъще / Stavai daste" }
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