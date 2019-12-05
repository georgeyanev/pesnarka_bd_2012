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
      \key c \major
      \time 7/8 \tempo "Vivo"
      \autoBeamOff


      c8 e8 g8. | g8 c8 g8. | c,8 e8 g8. | g8 c8 g8. | \break

      c,8 d8 e8 | d8 e8  \autoBeamOn d16 e16  d8 c16 | g'8 \noBeam g8 g8. | c,8 d8 e8 | \break

      d8 e8 d16 e16 d8 c16 | g'8 g8 g8. | c,8 d8 e8 | d8 e8 d16 e16 d8 c16 | c8 c8 c8. | \break

      % notes here
    }
    
  \addlyrics {
    
    a - a - a  a - a - a  a - a - a  a - a - a 
    
    a - a - a  a - a - a  a - a - a  a - a - a 
    
    a - a - a  a - a - a  a - a - a  a - a - a 
    
  }

\addlyrics {
  
  o - o - o o - o -  o  o - o - o o - o - o 
  
  o - o - o o - o -  o  o - o - o o - o - o 
   
  o - o - o o - o -  o  o - o - o o - o - o 
  
}

\addlyrics {
  у - у - у  у - у - у  у - у - у  у - у - у 
  
  у - у - у  у - у - у  у - у - у  у - у - у 
  
  у - у - у  у - у - у  у - у - у  у - у - у 
}


\addlyrics {
  a - o - у a - o - у a - o - у a - o - у 
  
  a - o - у a - o - у a - o - у a - o - у 
  
  a - o - у a - o - у a - o - у a - o - у  
}

  \addlyrics {
    
    a - a - a  a - a - a  a - a - a  a - a - a 
    
    a - a - a  a - a - a  a - a - a  a - a - a 
    
    a - a - a  a - a - a  a - a - a  a - a - a 
    
  }
  
  \addlyrics {
    
    e - e - e e - e - e e - e - e e - e - e 
    
    e - e - e e - e - e e - e - e e - e - e 
    
    e - e - e e - e - e e - e - e e - e - e 
    
  }
  
  \addlyrics {
     и - и - и и - и - и и - и - и и - и - и 
     
     и - и - и и - и - и и - и - и и - и - и 
     
     и - и - и и - и - и и - и - и и - и - и 
  }
  
  \addlyrics {
    
    a - е - и a - е - и a - е - и a - е - и
    
    a - е - и a - е - и a - е - и a - е - и
    
    a - е - и a - е - и a - е - и a - е - и
    
    
  }
  


    % lyrics here

    \header {
      title = "Песен на гласните букви / Pesen na glasnite bukvi"
    }

  } % score
} % bookpart
