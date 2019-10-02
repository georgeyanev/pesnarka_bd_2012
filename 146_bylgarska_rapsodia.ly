\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \relative c' {
    \clef treble
    \key c \major
    \time 7/16
    \tempo "Andante maestoso" 8 = 152
    \autoBeamOff
    
    g8^\accent a16([b]) c8.( | \noBreak
    c4)(c8.) | \noBreak 
    \acciaccatura {g8} d'^\accent e c8. | \noBreak
    \acciaccatura {g8} d'^\accent e c8. | \noBreak
    b8 d a([g16]) | \break
    
    b4 b8.\fermata | \noBreak
    g8 a16([b]) c8. | \noBreak
    b8 d a8. | \noBreak
    a4 a8.\fermata | \bar "||"
    
    g''8\accent a16[b] c8.( | \noBreak
    c4)(c8.) | \break
    d8\accent e c8. | \noBreak
    d8\accent e c8. | \noBreak
    b8 d a([g16]) | \noBreak
    b4 b8. | \noBreak
    g8\accent a16[b] c8. | \noBreak
    b8\accent d a8. | \noBreak
    a4 a8. | \bar "||" \break
    
    g,8 a16 \stemUp b \stemNeutral c8 d16 | \noBreak
    e8 e e8. | \noBreak
    d8 e16 d16 c8 b16 | \noBreak
    d8 d d8.\fermata | \break
    
    d8 e16 d16 c8 b16 | \noBreak
    d8 c8 c8.\fermata( | \noBreak
    b4~ b8.) | \noBreak
    g8 a16 \stemUp b \stemNeutral c8 d16 | \noBreak
    e8 d c8([b16]) | \break
    
    d8 c b8. | \noBreak
    c16 b a8 g8. | \noBreak
    a8 a8~ a8. | \bar "||" \noBreak
    \tempo "Allegro grazioso" d,8^\accent e e[e16] | \noBreak
    e8^\accent e e[d16] | \break
    
    g8^\accent f e[d16] | \noBreak
    d8^\accent e c[b16] | \noBreak
    g8^\accent a16([b]) c8. | \noBreak
    b8^\accent d a[g16] | \noBreak
    b4~ b8.\fermata | \noBreak
    \tempo "rit." g8 a16([b]) c8. | \break
    
    b8^\accent d a8. | \noBreak
    a4\prall~ a8. | \noBreak
    \tempo "a tempo" d'8\accent e e e16 | \noBreak
    e8\accent e e d16 | \noBreak
    g8\accent f e d16 | \break
    
    e8\accent
    
  }

  \header {
    title = "Българска рапсодия / Balgarska rapsodiya"
  }

} % score
} %bookpart
