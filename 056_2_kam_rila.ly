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
    \key e \minor
    \time 3/4 \tempo "Tempo di valzer" 2. = 54
    \partial 4 b4 | e'2 g'4 | c''2 b'4 | b'2. | b'2 b4 | e'2 g'4 | \break
    c''2 b'4 | b'2. ( | b'2 ) b'4 |
    \repeat volta 2 { a'2 c''4 | b'2 a'4 | g'2. \break 
      e'2 g'4 | b2 b4 | g'2 fis'4 } 
    \alternative { 
      { e'2. ( | e'2 ) b'4 | } 
      { e'2. ( | e'2 ) s4 \bar "|." } 
    }
  }
  
  \addlyrics {
    Към Ри -- ла с~мощ -- на ми -- съл ле -- тим ний
    все -- ки ден. В~гър -- ди -- те с~туй же -- ла -- 
    ние жи -- ве -- ем в~свят не -- тлен. В_гър -- тлен.    
  }

  \addlyrics {
    Kam Ri -- la s~mosht -- na mi -- sal le -- tim niy
    vse -- ki den. V~gar -- di -- te s~tuy zhe -- la -- 
    nie zhi -- ve -- em v~svyat ne -- tlen. V_gar -- tlen.    
  }


  \header {
    title = "Към Рила / Kam Rila"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}


} % bookpart
