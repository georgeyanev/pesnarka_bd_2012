\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Andante" 4 = 60
  
  \partial 4
  
  g4 |  c'2 g4 | e'2 c'4 | g'2. |  f'2. | e'2. | d'2. | c'2. \fermata | \break
 



}

text = \lyricmode {  А -- ум, А
  -- ум, А -- ум, Ом, Ом, Ау -- мен.

 
 
}

textL = \lyricmode {A -- um, A --
  um, A -- um, Om, Om, Au -- men.
 
 
}



\score{
 \header {
  title = \markup { \fontsize #-3 "Аум / Aum" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " "

}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
  
   \midi { }
  \layout { }
 
}