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
    
    e8\accent d c b16 | \noBreak
    c8\accent d e d16 | \noBreak
    e8\accent d c b16 | \noBreak
    a8^\accent \stemUp b \stemNeutral c d16 | \break
    
    e8\accent d c b16 | \noBreak
    c8\accent d \stemUp b \stemNeutral g16 | \noBreak
    a4 a8. | \noBreak
    g8^\accent a f[e16] | \noBreak
    e8^\accent g f[d16] | \break
    
    e4\prall~ e8[d16] | \noBreak
    e8^\accent e e8. | \noBreak
    g8^\accent a f e16 | \noBreak
    e8^\accent g f e16 | \noBreak
    e4\prall~ e8[d16] | \noBreak
    e8^\accent e e d16 | \break
    
    \repeat volta 1 { 
      c8 d e d16 | \noBreak
      e8 d c b16 | \noBreak
      a8 b c d16 | \noBreak
      e8 d c b16 | \break
      
      c8 d b g16 | \noBreak
      a4 a8. | \noBreak
    }
    \time 4/4 \tempo "Lento" a4 d8([e]) \tuplet 3/2 {f16([ g f]} e4.) | \time 5/4 \break
    \override TupletNumber #'avoid-slur = #'ignore
    c'4\fermata \acciaccatura{ b16[c] } \tuplet 3/2 { \stemUp b8 \stemNeutral a gis} a8 \tupletUp \tuplet 3/2 { b16(c b) } e,2 | \noBreak
    \time 4/4 \tuplet 3/2 { e8\tenuto f\tenuto g\tenuto } g2 a4 | \time 3/4 \break
    
    \acciaccatura {f16[g]} \tuplet 3/2 { f8 e f } f4\tenuto e4\tenuto | \noBreak
    a2 d,4 | \noBreak
    \time 4/4 g16 f e d c b c d e2 | \break
    
    \tempo "rit." a,8 b c4 b8 d c b | \noBreak
    a2 r2 | \noBreak
    \tempo "a tempo" a'4  d8([e]) \tupletNeutral \tuplet 3/2 { f16([ g f] } e4.) \time 5/4 | \break

    c'4\fermata \acciaccatura { b16[c] }  \tuplet 3/2 { b8[ a gis]} a8[ \tupletUp \tuplet 3/2 { b16(c b)] }  e,2 \tupletNeutral | \noBreak
    \time 4/4 \tuplet 3/2 { e8\tenuto[f\tenuto g\tenuto] } g2 a4 | \noBreak
    \time 3/4 \acciaccatura { f16[g] } \tuplet 3/2 { f8[e g] } f4 e | \break
    
    a2
    
    
    
    
  }

  \header {
    title = "Българска рапсодия / Balgarska rapsodiya"
  }

} % score
} %bookpart
