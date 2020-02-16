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
    ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \relative c' {
    \clef treble
    \key g \minor
    \time 3/4 \tempo "Adagio" 4 = 56
    \autoBeamOff
    
   \partial 4 g'8. bes16 | d2 es8. g16 | \time 4/4 d4 d2 es8. d16 | \break
   
   c2. c8. d16 | bes4 g2 bes8. bes16 | \time 3/4 a2 g8. a16| \time 4/4 \break
   
   bes4 a2 bes8. g16 | \time 3/4 bes2 g8. a16 | \time 4/4 \break
   
   bes4 a2 g8. a16| \time 3/4 bes2 a8. g16 | g4 g2| \break
   
   
   % notes here
  }
  
  % lyrics here
  
   \addlyrics {Фир -- фюр --
  фен Тао Би Ау -- мен. Фир -- фюр --
  фен Тао Би Ау -- мен. Фир -- фюр --
  фен Тао Би Ау -- мен. Фир -- фюр --
  фен Тао Би Ау -- мен. Фир -- фюр --
  фен Тао Би Ау -- мен.
     
   }
   
   \addlyrics {Fir -- fyur --
  fen Tao Bi Au -- men. Fir -- fyur --
  fen Tao Bi Au -- men. Fir -- fyur --
  fen Tao Bi Au -- men. Fir -- fyur --
  fen Tao Bi Au -- men. Fir -- fyur --
  fen Tao Bi Au -- men.
     
   }
  
  \header {
    title = "Към Фир фюр фен / Kam Fir fyur fen"
  }
  
  \midi { }

} % score
} % bookpart
