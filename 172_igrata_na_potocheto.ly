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
    \key g \major
    \time 2/4 \tempo "Allegro" 4 = 126
    
    
  d''4. cis''16 d''16 | % 2
  e''8 d''8 d''8 c''8 | % 3
  c''8 b'8 b'8 a'8 | % 4
  a'8 g'8 g'8 fis'8 \break | % 5
  a'16 g'16 fis'16 e'16 d'8 c'8 | % 6
  b8 c'8 d'8 e'8 | % 7
  d'2 | % 8
  a8. b16 c'8 d'8 | % 9
  e'8 e'8 e'8 fis'8 \break 

  \time 3/4  a'16 g'16 fis'16 e'16 e'8 d'8 d'4 | % 11
  \time 2/4  b8 d'8 d'8 c'8 | % 12
  c'8 e'8 e'8 d'8 | % 13
  a8 b16 c'16 e'8 d'8 \break | % 14
  d'8 b8 d'4 | % 15
  c''8 e'8 e'8 e'8 | % 16
  e'8 e'8 e'4 | % 17
  c''8 d'8 d'8 d'8 | % 18
  d'8 d'8 d'4 \break | % 19
  g''8 b'8 b'8 b'8 |
  b'8 b'8 b'4 | % 21
  e''8 fis''16 g''16 b''8 a''8 | % 22
  a''8 g''8 g''8 fis''8 | % 23
  a''8 g''8 g''4 \break | % 24
  d''8 e''16 fis''16 g''8 g''8 | % 25
  g''8 fis''16 g''16 a''8 g''8 | % 26
  g''8 fis''8 fis''8 e''8 | % 27
  e''8 d''8 d''4 | % 28
  a'8. b'16 c''8 d''8 \break | % 29
  e''8 e''8 e''8. fis''16 |
  a''16 g''16 fis''16 e''16 e''8 d''8 | % 31
  d''8 b'8 d''16 c''16 b'16 a'16 | % 32
  g'8 fis'8 a'8 g'8 | % 33
  g'2 \break | % 34
  d'8 g'8 g'8 fis'8 | % 35
  fis'8 e'8 e'8 e'8 | % 36
  \time 3/4  g'16 fis'16 e'16 d'16 c'8 c'8 c'8 c'8 | % 37
  \time 2/4  e'8 d'8 d'4 \break | % 38
  \repeat volta 2 {
    a8 b8 c'8 d'8 | % 39
    e'8 d'8 e'16 d'16 c'16 b16 |
    a8 b16 a16 b8 a8 | % 41
    g8 g8 g4 
  }
    
  }
  


  \header {
    title = " Играта на поточето / Igrata na potocheto"
  }

  \midi {
  }
} % score

  \markup \halign #-10 { 
    \column  { 
      \line  \halign #-5 { 
        \bold  { "D. C." }
      }
      \line { 
        \bold { con ripetizione }
      }
    }
  }

} % bookpart
