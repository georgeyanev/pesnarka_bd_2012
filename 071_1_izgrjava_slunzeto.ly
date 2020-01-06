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

  \new Voice \absolute {
  \clef treble
  \key g \major
  \time 3/4 \tempo "Andantino" 4 = 69
  \partial 4
 
  \repeat volta 2 {  b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break | 

  g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4 |  g'2 \break }


  }
  
  \addlyrics { Из -- гря --
  ва Слън -- це -- то, пра -- ща Свет -- ли -- на,
  но -- си Ра -- дост за Жи -- во -- та тя.
  
  
  }
  
  \addlyrics { Iz -- grya --
  va Slan -- tse -- to, pra -- shta Svet -- li -- na,
  no -- si Ra -- dost za Zhi -- vo -- ta tya.}
  
  \header {
    title = "Изгрява слънцето / Izgryava slantseto"
  }
  
  \midi {}

} % score


} % bookpart
