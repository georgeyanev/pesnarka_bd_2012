\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \relative c' {
   \clef treble
  \key g \major
  \time 6/4 \tempo "Andante" 4 = 63
 
 \autoBeamOff
 
   \omit Staff.TimeSignature
 
 g4 b d d8. e16 d 2  \bar "!"  d4 e e a g8. g16 fis2 \break  "!" 
 
 d4 g g g8. a16 b2 \bar "!" b4 b b b8. c16 d2 \bar "!" c4 c b d8. b16 a2 \bar "!" 
 
 
  }
  
  % lyrics here
  
  \header {
    title = "Скръбта си ти кажи / Skrabta si ti kazhi"
  }
  
  \midi{}

} % score
} % bookpart
