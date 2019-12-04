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
       \set midiInstrument = #"violin"
    \clef treble
    \key d \minor
    \time 7/4 \tempo "Adagio, ad libitum" 4 = 56
    \autoBeamOff
    
  \omit Staff.TimeSignature
 
\repeat volta 2 {  a'4^\p bes'8 ( a' gis' a' bes'2 ) a' \bar "!"  \breathe  d''4^\mp  e''8 ( d'' cis'' d'' b' a' c''16 b' a' gis' ) a'2 \bar "!" \breathe \break |

\time 10/4 g'8 ( f' e' f' g'4 a' ) f'4. ( e'8 g'16 f' e' f' ) d'2 
\once \override BreathingSign #'text = #(make-musicglyph-markup "scripts.caesura.straight")
\breathe a4^\pp \bar "!" \break |


  bes2 a2 a4 \bar "!"  bes2 a a4  \bar "!"  bes2 a r4 } \break
   
  }
  
  \addlyrics {
    
    Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
  
  }

  \addlyrics { Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di,
Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di.
    
  }
  
  \header {
    title = "Вехади / Vehadi"
  }

} % score


} % bookpart
