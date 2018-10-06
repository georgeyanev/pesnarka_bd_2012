\version "2.18.2"

\paper {
  print-all-headers = ##t
}

\score{
  \layout { indent = 0.0\cm } % remove first line indentation
  
  \new Staff \relative c' {
    \clef treble
    \key g \major
    \time 4/4
    \tempo "Largo" 4 = 46
    \autoBeamOff
  
    b8. [(c16)] a8. b16 c2 | 
    e4 d8. c16 b2 | 
    g'4 fis8. g16 e4. fis8 | \break 
  
    \time 3/4 g8 a8 b2 |
    \time 4/4 c8. [(d32 c32] b8 [c8]) a2 |
    d8. [c16] b8 [(a8)] b2 | \break

    a4. (b8) g2 | 
    fis8. [g16] e4. fis8 [g8 a8] |
    \time 5/4 b4 d8 c8 b8 a8 b2 | \break
    
    d4 e4 c8. b16 c2 |
    d4 b4 b8. a16 b2 |
    \time 4/4 c4 b4 a8 a8 g8 g8 | \break
    
    fis4 e8 e8 fis4 a8. a16 |
    g4. a8 b4 a8. a16 |
    \time 3/4 g2 d8. d16 |
    \repeat volta 3 { 
      g4 fis4 fis8. e16 | \break
      
      e4 e4 d8. b16 | 
      \time 4/4 d4 c4 c4 e8. d16 |
      d4 b4 b4 d8. a16 |
    
    
    } %
  }  
  
  \header {
    title = "Бог е Любов / Bog e Lyubov"
  }
}


%{
\score {
  \new PianoStaff <<
    \new Staff { s1 }
    \new Staff { \clef "bass" s1 }
  >>
  \header {
    title = "PRAELUDIUM I"
    opus = "BWV 846"
    % Do not display the subtitle for this score
    subtitle = ##f
  }
}
\score {
  \new PianoStaff <<
    \new Staff { s1 }
    \new Staff { \clef "bass" s1 }
  >>
  \header {
    title = "FUGA I"
    subsubtitle = "A 4 VOCI"
    opus = "BWV 846"
    % Do not display the subtitle for this score
    subtitle = ##f
  }
}
%}
