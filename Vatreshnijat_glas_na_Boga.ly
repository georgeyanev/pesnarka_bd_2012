


melody = \absolute  {
  \clef treble
  \key bes \major
  \time 3/4 \tempo "Largo" 4 = 60
 
 d'4 \p s2 | % 2
  d''2 c''4 | % 3
  bes'2 a'4 | % 4
  g'4 \times 2/3 {
    fis'8*255/256 ( g'8*255/256 ) a'8*129/128
  }
  g'4 \> ~ | % 5
  g'2 \! bes'4 \break | % 6
  a'2 \p g'4 | % 7
  fis'2 es'4 | % 8
  d'2 c'8 ( es'8 ) | % 9
  d'2 c'4 -"," \< \break | \barNumberCheck #10
  es'2 d'4 | % 11
  d'2 bes'4 | % 12
  a'2 \! g'4 | % 13
  d''2. \break | % 14
  es''8 ( d''8 cis''8 d''8 ) bes'8. \> ( a'16 ) | % 15
  bes'2 a'4 | % 16
  g'2 \! d''4 \p \break | % 17
  \time 4/4  c''2 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bes'8*255/256 ( a'8*255/256 g'8*129/128 )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fis'8*255/256 ( g'8*255/256 a'8*129/128 )
  }
  | % 18
  \time 3/4  g'2 es'4 -"," \break | % 19
  d'2 -\markup{ \bold {rall.} } c'4 | \barNumberCheck #20
  d'2 fis'4 \ppp | % 21
  g'2. ( | % 22
  g'2 -\markup{ \bold {D. C.} } ) s4 \bar "|."
}




text = \lyricmode {"Ве" -- "ну" "Ба"
  -- "хар" "са" -- "ли" "му" -- "се" -- "нет." "Ту" -- "си" "Ба" --
  "хар." "Ве" -- "ну" "се" -- "нет." "Ту" -- "си" "Ба" -- "хар," "Ве"
  -- "ну" "Ба" -- "хар" "Са" -- "ли" "му" -- "се" -- "нет." "Ве" --
  "ну" "ил" -- "би" -- "ют." "Би" -- "ют," "Би" -- "ют," "Би" -- "ют."

 
 
}

textL = \lyricmode {Ve -- nu Ba -- har
  sa -- li mu -- se -- "net." Tu -- si Ba -- "har." Ve -- nu se --
  "net." Tu -- si Ba -- "har," Ve -- nu Ba -- har Sa -- li mu -- se --
  "net." Ve -- nu il -- bi -- "yut." Bi -- "yut," bi -- "yut," bi --
  "yut."
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Вътрешният глас на Бога / Vatreshnija glas na Boga" }
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