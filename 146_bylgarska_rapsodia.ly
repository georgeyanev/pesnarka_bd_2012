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
    
    
    
    
  }

  \header {
    title = "Българска рапсодия / Balgarska rapsodiya"
  }

} % score
} %bookpart
