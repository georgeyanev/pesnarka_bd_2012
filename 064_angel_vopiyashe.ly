\version "2.18.2"

\paper {
  print-all-headers = ##t
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}


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
    \key f \major
    \tempo "Senza misura"
    \autoBeamOff
    \omit Score.TimeSignature
    \cadenzaOn % allows custom bar lines

    \acciaccatura g'8 (a2 \tuplet 3/2 { g8 [f g] } \bar "|"
    a4) a2 g4 a4 \bar "|"
    a8 [bes a g f g] \acciaccatura { a16 [b] } c4 b!8 [c] a2 \bar "|" \break
    
    g4 a a8 ([g a bes]) g2 \bar "|" 
    d'2 c4 (b8 [c]) a8. ([bes16 a8 g]) \bar "|"
    f8 [g] \acciaccatura { a16 [b] } c4 b!8 [c] f,2 \bar "|"  \break
    
    \slurDown a8( [bes] \acciaccatura { c16 [d] } c4) bes8( [a g a]) g4. g8 \bar "|"
    \slurNeutral c8.( [bes16]) a8.( [g16]) g4 f8( [g \appoggiatura bes a g]) \bar "|"  \break
    
    f8( [e a g] f4. e8 d [e16 f]) d4 d2 \bar "|"
    \appoggiatura g8  a2( \tuplet 3/2 { g8 [f g] } a4) a2 c4( \stemUp b) \bar "|"  \break
    
    \stemNeutral c4( d  c b!8 [c]) a2 g4 a \bar "|"
    \stemUp a8( [b16 c] a8 [g]) f( [e a g]) \bar "|"  \break
    
    f4.( e8 d[ e16 f] d4) d2 r8 d \bar "|"
    \stemNeutral d'2 c4( b!8[ c]) a2 a4 \bar "|"  \break
    
    \slurDown a8([bes] \acciaccatura { c16 [d] } c4) bes8( [a] g [a]) g2 \bar "|"
    g4( f8 [e] d [e] c4) \bar "|"
    d8([ e f g]) g2 \bar "|"  \break
    
    c8([ bes a g]) f([ e a g]) \bar "|"
    f4.( e8) d([ e16 f] d4) d2 r8 d \bar "|"  \break
    
    g4 \acciaccatura { f16 [g] } f4 g a \acciaccatura { f16 [g] } f4 e8[  f] \bar "|"
    d4.( e8) c4( d) \bar "|"  \break
    
    ees4.( d8 g8[ fis \acciaccatura { ees16 [fis] }  ees8 d])
    
    
    
    
    
  }

  \header {
    title = "Ангел вопияше / Аngel vopiyashe"
  }

} % score
