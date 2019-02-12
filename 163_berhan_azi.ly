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
    \key c \major
    \time 4/4
    \tempo "Adagio" 4 = 56
    \autoBeamOff
    
    a4 dis8([e]) e2 | \noBreak
    f8([e]) f[gis] f4 e | \noBreak
    \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
    e,16([f) gis a] f4.. e16 a([gis f e]) | \break
    
    dis4 c b a | \noBreak
    gis2. r4 | \noBreak
    \time 5/4 e'4 dis a'8([gis]) f[e] d([e]) | \time 2/4 \break
    
    c2 | \noBreak
    \time 5/4 
    
  }

  \header {
    title = "Берхан Ази / Berhan Azi"
  }

} % score
