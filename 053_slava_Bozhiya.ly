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
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \major
    \time 4/4 \tempo "Andantino" 4 = 72
    \autoBeamOff
    d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \tupletUp \tuplet 3/2 {  d''8 cis'' b'8 } ais'2 | \break 
    \times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 [( d'' e'' d'' cis'' b' )] ais'4 | b'8 [( cis'' )] b'2. \bar "|."
  }
  
  \addlyrics {
    Не на ме -- не, не на ме -- не, но на И -- ме -- то Си
    дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!  
  }

  \addlyrics {
    Ne na me -- ne, ne na me -- ne, no na I -- me -- to Si
    day, Bo -- zhe, sla -- va, sla -- va, sla -- va!  
  }

  \header {
    title = "Слава Божия / Slava Bozhiya"
  }

} % score
} % bookpart
