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
  
  c c c c | c c c c | c c c c | c c c c |\break 
  
  c c c c | c c c c | c c c c | c c c c |\break
  c c c c | c c c c | c c c c | c c c c |\break
  c c c c | c c c c | c c c c | c c c c |\break
  c c c c | c c c c | c c c c | c c c c |\break
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
