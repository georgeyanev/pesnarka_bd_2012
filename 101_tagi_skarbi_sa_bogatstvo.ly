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
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout


  \new Voice \absolute  {
    \clef treble
    \key g \minor
    \time 2/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Andantino" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
      }
    }
    
    \autoBeamOff
  
  d''8 c'' bes' a' | c''8 bes' a' g' | a'8 g' fis' es' \break 
 
 d' c' d'4 | a'2|  \time 5/4 a'4 c''8 bes'8 a' g' a'2 | \break 
 
  g'4  a'8 g' fis'8 es' d'2 | \time 2/4 c'4 d'8 es'8| g'2 | \break

  a'4 g'8 fis' | es'2 |  c'4 d'8 es'8 | fis'4 \fermata  es'4 \fermata  | d'2 \fermata  \bar "|."
  }
  
  \addlyrics { 
    Тъ -- ги, скър -- би са бо  --  гат -- ство
    за Жи -- во -- та, в~ду -- ша скри -- ти
    за бъд -- ни До -- бри -- ни,
    за бла -- ги пло -- до -- ве,
    за свет -- ли дни,
    за свет -- ли дни,
    за свет -- ли дни,
    дни, дни.
 }

  \addlyrics {
    Ta -- gi, skar -- bi sa bo  --  gat -- stvo
    za Zhi -- vo -- ta, v~du -- sha skri -- ti
    za bad -- ni Do -- bri -- ni,
    za bla -- gi plo -- do -- ve,
    za svet -- li dni,
    za svet -- li dni,
    za svet -- li dni,
    dni, dni.
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { Тъги, скърби са богатство }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {  Tagi, skarbi sa bogatstvo }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}
} % score

\markup \halign #-35.2 \raise #2.8 \override #'(baseline-skip . 2) { 
  \column  { 
    \line \right-align { 
      \bold  { "D. C." }
    }
    \line { " " }
    \line { " " }
    \line { " " }
  }
} 

% include foreign translation(s) of the song
\include "lyrics_de/101_tagi_skarbi_sa_bogatstvo_lyrics_de.ly"

} % bookpart