\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute {
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
  
  
  % lyrics here
  
  \header {
    title = "Марш на светлите сили / Marsh na svetlite sili"
  }

} % score
} % bookpart
