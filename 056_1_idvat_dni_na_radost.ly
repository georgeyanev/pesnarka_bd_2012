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
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
        \omit BarNumber %remove bar numbers
    } % context
    \context {
      \Staff
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 88)
           (minimum-distance . 77)
           (padding . 11)
           (stretchability . 100))      
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \minor
    \autoBeamOff
    \time 3/4 \tempo "Andante" 4 = 66
    \repeat volta 2 {
      a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 | \break
      g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | \break
      e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 |
    } 
  }
  
  \addlyrics {
    И -- дват дни на Ра -- дост, и -- дват дни на 
    Ра -- дост, и -- дват дни на Ра -- дост 
    за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
  }

  \addlyrics {
    I -- dvat dni na Ra -- dost, i -- dvat dni na 
    Ra -- dost, i -- dvat dni na Ra -- dost 
    za o -- ni -- ya, ko -- i -- to slu -- zhat Bo -- gu.
  }

  \header {
    title = "Идват дни на Радост / Idvat dni na Radost"
  }

} % score
} % bookpart
