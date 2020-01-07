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
  \key c \major
  \time 3/4 \tempo "Andante" 4 = 60
  
  \partial 4
  
  g4 |  c'2 g4 | e'2 c'4 | g'2. |  f'2. | e'2. | d'2. | c'2. \fermata | \break
  }
  
  \addlyrics { А -- ум, А
  -- ум, А -- ум, Ом, Ом, Ау -- мен. }
  
  \addlyrics { A -- um, A --
  um, A -- um, Om, Om, Au -- men.}
  
  \header {
    title = "Аум / Aum"
  }
  
  \midi{}

} % score
} % bookpart
