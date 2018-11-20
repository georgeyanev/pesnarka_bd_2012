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
    
    
    
    
    
    
    
  }

  \header {
    title = "Ангел вопияше / Аngel vopiyashe"
  }

} % score
