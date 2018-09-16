\version "2.18.2"
\header {
  title = "Freude und Trauer"
  composer = "Beinsa Duno"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  
  
  melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Andante" 4 = 60
 
  
  c d
  
  
}

}