\version "2.18.2"

\paper {
  print-all-headers = ##t
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}

\bookpart {
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
    \time 3/8
    \tempo "Moderato" 8 = 160
    \autoBeamOff
    \partial 8 c8 | 
    e4 g8 | 
    

  }

  \header {
    title = "Зората на Новия живот / Zorata na Noviya zhivot"
  }
} % score
} % bookpart
