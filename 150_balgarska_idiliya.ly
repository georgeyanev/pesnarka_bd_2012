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
    \key g \minor
    \time 3/4
    \tempo "Largo" 4 = 50
    \autoBeamOff
    
    d'4.( \tuplet 3/2 { ees16 [f ees]) } d8.([g16]) | \noBreak
    g4..(f16) \tuplet 3/2 { f16( [g f] } ees8~ | \noBreak
    ees16)[a, bes c] d8 d4. | \noBreak
    \tuplet 3/2 { d16( [ees d] } c4.) bes16([c bes a\fermata]) | \break



    
  }

  \header {
    title = "Българска идилия / Balgarska idiliya"
  }

} % score
