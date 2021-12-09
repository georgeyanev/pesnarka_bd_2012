\version "2.18.2"

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
    ragged-last = ##f % do not spread last line to fill the whole space
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

   \new Voice \absolute {
    \clef treble
    \key d \minor
     \tempo \markup { % make tempo note smaller
      \concat { "Rubato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 56)" }
      }
    } 
	
	\autoBeamOn 
   
  \omit Score.TimeSignature
  \cadenzaOn % allows custom bar lines
	
	 a''2 ( \tuplet 3/2 { bes''8 [a'' gis''8] } \tuplet 3/2 { a''8 [f'' e''8] } g''16 [f'' e'' d''] )  f''8--  f''-- f''2 \bar "|" e''16 ( [f'' g'' a''] g''[ f'' e'' d''] ) e''8-- e''-- e''2 \bar "|" \break
	 
	 \time 7/4 g''4-- g''-- \tuplet 3/2 { f''8 ([e'' d''8]  } \tuplet 3/2 {cis''8 [d'' e''8] })   d''2 \bar "|" f''8. f''16 f''4 e''8-- d''-- \tuplet 3/2 {cis''!8 [( d'' e''8 )] } d''2 \bar "|" \break 

	e''16-- f''16-- g''16-- a''-- bes''2-- a''8-- g''8--  f''8 ( [e''8 d''8] \tuplet 3/2 { cis''!8 [d''8 e''8] ) } d''2-- \bar "|" \break 
	
	f''8-- f''-- e''-- d''-- cis''!4-- bes'8-- a'8-- \tuplet 3/2 {g'8-- ( [a' bes'--])} a'2--  \fermata  g16-- a-- bes--  a-- \bar "|" \break 
	
	c'2-- bes8 a8 \tuplet 3/2 {g [( a bes-. )] } a2 r8 \tempo "rit. e morendo" g16 a bes  a \bar "|" \break 
	
	c'2-- bes8 a8  \tuplet 3/2 {g [(a bes )]}  a2.  r4 \bar "|."

    
  }
  
  
  
 \addlyrics {
   Не -- ва сан -- зу,
не -- ва сан -- зу би -- ю мен -- си,
ха -- ри -- ен ха -- ди хен -- зи.
А -- ва Ма -- хар вен ха -- бер мен -- си,
А -- ва Ма -- хар вен ха -- бер мен -- си,
А -- ва Ма -- хар вен ха -- бер мен -- си,
А -- ва Ма -- хар вен ха -- бер мен -- си.
  
  }

  \addlyrics {
   Ne -- va san -- zu,
ne -- va san -- zu bi -- yu men -- si,
ha -- ri -- en ha -- di hen -- zi.
A -- va Ma -- har ven ha -- ber men -- si,
A -- va Ma -- har ven ha -- ber men -- si,
A -- va Ma -- har ven ha -- ber men -- si,
A -- va Ma -- har ven ha -- ber men -- si.
    
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Нева сензу }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Neva sanzu }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score

\markup \halign #-37.4 \raise #2.8 \override #'(baseline-skip . 2) { 
  \column  { 
    \line  \halign #-3 { 
      \bold  { "D. C." }
    }
   
  }
} 



\pageBreak

% include foreign translation(s) of the song
%\include "lyrics_de/020_bratstvo_edinstvo_lyrics_de.ly"

} % bookpart
