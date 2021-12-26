\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
\paper {
  print-all-headers = ##t
  print-page-number = ##t 
  print-first-page-number = ##t
  
  % put page numbers on the bottom
  oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.6\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

  % change lyrics and titles font (affects notes also)
  fonts = 
    #(make-pango-font-tree
     "Times New Roman"
     "DejaVu Sans"
     "DejaVu Sans Mono"
     (/ (* staff-height pt) 3.6))
  
  % change distance between staves
  system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
}

\header {
  tagline = ##f
}

\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
    
    \context { % change staff size
      \Staff
      fontSize = #+0 % affects notes size only 
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #0.5
      \override BarLine #'hair-thickness = #1     
      %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
    }
    
    \context { % adjust space between staff and lyrics and between the two lyric lines
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
        (basic-distance . 4.5)
        (padding . 0.5)
      )
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout


  \new Voice \absolute  {
    \clef treble
    \key c \major
    \time 6/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Lento " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 50)" }
      }
    }
    \autoBeamOff
   \repeat volta 3 {   g4 c' e' c' g2 | g4 c' e' c' g2 | \time 4/4  e'4 g' c''2 \break |
 
   b'4 ( a' ) g'2 | \time 6/4 } \alternative { 
    { a'4 f' a' g' e'2 | g'4 e' f' d' c'2 | \break } 
    { \once \override Score.TimeSignature.break-visibility = ##(#f #f #t)
      \time 6/4 a'4 ( f' a' g' ) e'2 |  g'4 e'8 e' f'4 d' c'2}
   }  
   \bar "|."
  }
  
  \addlyrics { Вдъх -- но -- ве -- ни -- е,
  вдъх -- но -- ве -- ни -- е, 
  вдъх -- но -- ве -- ни -- е, вдъх -- но -- ве -- ни -- е,
  вдъх -- но -- ве -- ни -- е, ти си бла -- го --
  сло -- ве -- ни -- е.
    
  }

  \addlyrics {
  Vdah -- no -- ve -- ni -- e,
  vdah -- no -- ve -- ni -- e, 
  vdah -- no -- ve -- ni -- e, vdah -- no -- ve -- ni -- e,
  vdah -- no -- ve -- ni -- e, ti si bla -- go --
  slo -- ve -- ni -- e.
   
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { Вдъхновение }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Vdahnovenie }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}
} % score


\markup \halign #-9.0 \raise #2.8 \override #'(baseline-skip . 2) { 
  \column  { 
    \line { " " }
    \line { " " }
    \line { " " }
    \line { " " }
    \line { " " }
  }
} 


% include foreign translation(s) of the song
\include "lyrics_de/095_vdahnovenie_lyrics_de.ly"

} % bookpart
