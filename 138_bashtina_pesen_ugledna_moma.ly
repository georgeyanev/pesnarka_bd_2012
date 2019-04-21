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
    
    ees8. ees8 ees8. | \noBreak
    g8. g8(g8.)  | \noBreak
    fis8. ees8 ees8.  | \noBreak
    fis8. ees8 c8.  | \break
    
    d8. d8(d8.)  | \noBreak
    \repeat volta 1 { 
      \time 5/16 ees8 c8.  | \noBreak
      ees8 g8. | \noBreak
      fis8 ees16 c8  | \noBreak
      d8 d8. | \break
    }
    
    \repeat volta 1 { 
      \tempo "Poco più mosso" 8 = 120
      c'8 b8[(aes16)] |  | \noBreak
      c16 c b aes f |  | \noBreak
      b8 aes([f16])  | \noBreak
      g8 g8. 
    }
    \time 8/16 \break
    
    \tempo "Meno mosso" c,8. d8(ees8.)
    
    
    
    
    

  }

  \header {
    title = "Бащина песен - Угледна мома / Bashtina pesen - Ugledna moma"
  }

} % score
