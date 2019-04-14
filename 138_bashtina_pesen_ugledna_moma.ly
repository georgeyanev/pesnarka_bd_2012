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
    \key bes \major
    \time 8/16 
    \tempo "Lento" 8 = 112
    \autoBeamOff
    
    g'8. a8 f(e16) | \noBreak
    g8. g8(g8.) | \noBreak
    fis8. ees8 d8. | \noBreak
    ees8. c8(c8.) | \break
    ees8.
    
    

  }

  \header {
    title = "Бащина песен - Угледна мома / Bashtina pesen - Ugledna moma"
  }

} % score
