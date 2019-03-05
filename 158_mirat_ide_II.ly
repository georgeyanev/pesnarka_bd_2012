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
    %ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \relative c' {
    \clef treble
    \key bes \major
    \time 2/4 
    \tempo "Moderato" 4 = 72
    \autoBeamOff
    
    g''8 f ees d | \noBreak
    c4. c8 | \noBreak
    f8. ees16 d([c]) d f | \break
    
    bes,8. bes16 bes4 | \noBreak
    ees8 d c bes | \noBreak
    a4 d | \noBreak
    g,8. a16 bes([a]) bes ([d]) | \break
    
    g,8 g g r | \noBreak
    g'8. f16 ees([d]) ees([g]) | \noBreak
    c,8. c16 c8 c16 c | \break
    
    f8.([ees16]) d8 c | \noBreak
    bes4 bes8 bes | \noBreak
    ees8. d16 c([bes]) c([ees]) | \break
    
    a,8. a16 a8 d | \noBreak
    g,8. a16 bes([a]) bes([d]) | \noBreak
    g,8 d g r | \break
    
    g8 g16 a bes8([a]) | \noBreak
    g fis a([g]) | \noBreak
    g2 | \noBreak
    d16 ees ees ees ees d ees([g]) | \break
    
    d4 r8 d | \noBreak
    g4 a | \noBreak
    bes16 ([a]) bes ([a]) g8 fis | \noBreak
    g2 | \break
    
    g'16 f ees d c bes a g | \noBreak
    a8 bes c d | \noBreak
    ees d d4~ | \break

    d8 bes g d | \noBreak
    g8. a16 bes8 a | \noBreak
    a g g fis | \noBreak
    g2\fermata | \bar "||" \break 
    
    g'8 f ees d | \noBreak
    d([c]) d4~ | \noBreak
    d8 c bes8. a16 | \noBreak
    bes8 c d ees | \break
    
    d cis d4~ | \noBreak
    d8 c! bes a | \noBreak
    fis8. g16 a8 g | \noBreak
    bes a c bes | \break
    
    a g fis a | \noBreak
    g2 | \noBreak
    bes8. bes16 bes8 bes | \noBreak
    bes4 a8([bes]) | \break
    
    c16([bes]) a([g]) fis8([g]) | \noBreak
    a8. bes16 a8([d,]) | \noBreak
    d2 | \noBreak
    bes'8 bes16 bes bes8 bes | \break
    
    c bes a16([bes]) c([d]) | \noBreak
    f4.(ees8) | \noBreak
    d8. c16 d4~ | \noBreak
    d8 bes g d | \break

    g4 \times 2/3 { g8 g g }  | \noBreak
    g4. fis8 | \noBreak
    g8. a16 bes8 a | \noBreak
    \acciaccatura { bes } a g g fis | \break
    
    g ees d4 | \noBreak
    d2 | \noBreak
    f!8. g16 g8 g | \noBreak
    f ees16 f g8 g | \break
    
    \acciaccatura { g } f ees \acciaccatura { f } ees  cis | \noBreak
    d4 d | \noBreak
    c'8. c16 c8 c | \noBreak
    c4 bes8([a]) | \break
    
    bes([c]) d ees | \noBreak
    d2 | \noBreak
    a8. a16 a8 a | \noBreak
    a8. a16 c4 | \break 
    
    bes8([a]) g([fis]) | \noBreak
    a8. g16 g4 
    g2\fermata \bar "||" | \noBreak
    d2 \break
    
    cis8([d]) ees d | \noBreak
    d2 | \noBreak
    d | \noBreak
    g | \noBreak
    fis8 g a g | \break
    
    g2 | \noBreak
    g4 g8 a | \noBreak
    bes2 | \noBreak
    a4 g | \noBreak
    fis8 g a g | \break
  
    g2 | \noBreak
    a4. bes8 | \noBreak
    c2 | \noBreak
    \acciaccatura { c8 } bes([a]) bes c | \noBreak
    d2 | \break
    




  }

  \header {
    title = "Мирът иде / Mirat ide"
  }

} % score
