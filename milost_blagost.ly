
\version "2.18.2"
\header {
  title = "Milost, Blagost"
  composer = "Beinsa Duno"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


melody = \absolute  {
  \clef treble
  \key c \major
  \time 3/4 \tempo "Moderato" 4 = 80
 
a'2 e'4 | % 2
  a'2 e'4 | % 3
  a'2. | % 4
  g'2 e'4 | % 5
  g'2. | % 6
  d'4 ( e'4 ) f'4 | % 7
  f'2 e'4 \break | % 8
  g'2. | % 9
  f'2 e'4 | \barNumberCheck #10
  e'2. | % 11
  d'4 ( e'4 ) f'4 | % 12
  e'2. | % 13
  d'4 -\markup{ \bold {rit.} } ( e'4 ) f'4 | % 14
  e'2. -\markup{ \bold {D. C.} } \bar "|."



}

text = \lyricmode { Mi -- lost,
  bla -- gost v_men Toi vse -- li. Mi -- lost, bla
  -- gost v_men Toi vse -- li, v_men vse -- li,
  v_men vse -- li.

 
 
}

textL = \lyricmode { Mi -- de, Gü -- te flößt Er mir ein. Mi -- de, Gü -- te flößt Er mir ein, flößt Er ein, flößt Er ein.
 
 
}


  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}