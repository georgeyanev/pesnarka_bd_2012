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

    bes8 [c] d8 d4.\trill | \noBreak
    \time 4/4 fis,16([g) a g] bes8.\trill([ a16]) c4.\trill( bes8) | \noBreak
    \time 3/4  \tuplet 6/4 { a16([g fis g a bes]) }  a16.([g32) \slurDown g16.(\tieDown bes32~] \stemUp bes4) | \time 4/4 \break
    a16\prall

    
  }

  \header {
    title = "Българска идилия / Balgarska idiliya"
  }

} % score
