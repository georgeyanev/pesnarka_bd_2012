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
    
    \repeat volta 1 { 
      d'4.( \tuplet 3/2 { ees16 [f ees]) } d8.([g16]) | \noBreak
      g4..(f16) \tuplet 3/2 { f16( [g f] } ees8~ | \noBreak
      ees16)[a, bes c] d8 d4. | \noBreak
      \tuplet 3/2 { d16( [ees d] } c4.) bes16([c bes a\fermata]) | \break
  
      bes8 [c] d8 d4.\trill | \noBreak
      \time 4/4 fis,16([g) a g] bes8.\trill([ a16]) c4.\trill( bes8) | \noBreak
      \time 3/4  \tuplet 6/4 { a16([g fis g a bes]) }  a16.([g32) \slurDown g16.(\tieDown bes32~] \stemUp bes4) | \time 4/4 \break
      
      \tuplet 6/4 { a16\trill([g fis g a bes]) } a8.\trill([g16])  \acciaccatura { g16([ a] } g2) | \noBreak
    } 
    \set Score.doubleRepeatType = #":|.|:"
    \repeat volta 1 { 
      \time 7/16  
      \tempo "Allegro"
       
      d8 g g16([f ees]) | \noBreak 
      \acciaccatura { d16([ ees]  } d8) c8 c8. | \noBreak 
      c8 ees <c ees>8. | \break
       
      c8 f f16([ees d]) | \noBreak
      c8 bes bes8. | \noBreak
      bes8 d <bes d>8. | \noBreak 
      bes8 ees ees16([d c]) | \noBreak 
      bes8 <a d>8 <a d>8. | \noBreak 
      a8 a a8. | \break
     
      a8 bes c[d16] | \noBreak 
      bes8 a bes[c16] | \noBreak 
      \acciaccatura { a16([ bes]} a8) g g[d'16] | \noBreak
      g,8 g g8. | \noBreak
    }
    \repeat volta 2 { 
      <g d'>8\stopped \stemNeutral d''8 d8. | \noBreak
      <g,, d'>8\stopped c'8 c8. | \break
       
      <g, d'>8\stopped \acciaccatura { bes'16([c] } bes8) bes8. | \noBreak
      a8 g \acciaccatura { g16([a]} g8)([f16]) | \noBreak
    }
    \alternative {
      { g4 g8. | \noBreak }
      { g4~(g8 f16) | \noBreak }
    }
    \repeat volta 2 { 
      <f a>8 <f a> a\trill c16 | \noBreak
      \stemUp bes4~ bes8\trill a16 | \break
    }
    \alternative { 
      {
        a8 g \acciaccatura { g16[a]}  g8( f16) | \noBreak
        g4~ g8 f16 | \noBreak 
      }
      {
        a8 \acciaccatura { f8 } g \acciaccatura { g16[a] } g8 f16 | \noBreak
        g8~ g~ g8. | \bar "||" \noBreak
      }
    }
    \stemNeutral c8 d16([d,]) d'8[d16] | \noBreak
    \tieUp d4~ d8[g16] | \break
    
    f8\trill ees d\trill[c16] | \noBreak
    c8 \slurNeutral c16([d]) \acciaccatura { bes16[c] } bes8([a16]) | \noBreak
    g8 g g[a16] | \noBreak
    bes8 bes16([a]) c16([bes a]) | \noBreak
    \tieNeutral g4~\trill g8[f16] | \noBreak
    c'([d,]) c'([d]) bes8\trill[a16] \break
    
     g8 g g[a16] | \noBreak
     \stemUp bes8 a bes8\prall[a16] | \noBreak
     g4~\trill g8[f16]  | \noBreak
     ees16[f] g8 g[f16] | \noBreak
     g4 g8.\accent | \noBreak
    \repeat volta 2 { 
      \stemNeutral <d g,>8\stopped d'8 d8. | \noBreak
      <d, g,>8\stopped c'8 c8. | \break
      
      <d, g,>8\stopped bes' \acciaccatura { bes16[c] } bes8[a16] | \noBreak
      a8 g \acciaccatura { g16[a] } g8([f16]) | \noBreak
    }
    \alternative { 
      { g4 g8. }
      { g4~(g8[f16]) }
    }
    \repeat volta 2 { 
      a16([f]) a16([f]) a8[c16] | \break
      
      \tieUp \slurDown bes4~\trill(bes8[a16])
    }
    \alternative { 
      {
        a8 g \acciaccatura { g16[a] } g8([f16]) | \noBreak
        \tieNeutral g4~ g8[f16] | \noBreak
      }
      {
        \tempo "rit." 
        a8 \acciaccatura { f8 } g \acciaccatura { g16[a] } g8[f16] | \noBreak
        <g g,>8~ g~ g8. | \noBreak
      }
    }
    \time 3/4 \break
    \repeat volta 2 { 
      \tempo "Largo" 
      \slurNeutral d'4 g4.^\markup{\musicglyph #"scripts.trill" {\raise #1 \flat}}(f8) | \noBreak
      \time 4/4 f8.([ees16]) ees8.([d16]) d8.([c16]) d8.\prall([c16]) | \noBreak
      \acciaccatura { c32[d c bes] } c8.\fermata([f16]) f8.([ees16]) ees8.([d16]) d8.([c16]) | \break
      
      c16.\prall([bes32 d16. c32]) bes8.([d16]) ees8.([])
      
    }    
    
  }
  \header {
    title = "Българска идилия / Balgarska idiliya"
  }

} % score
