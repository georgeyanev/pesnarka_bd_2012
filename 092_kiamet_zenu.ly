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
      )
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout

  \new Voice \absolute {
    \clef treble
    \key c \major
    \time 4/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
      }
    } 
  
	\autoBeamOff
   
  \tupletUp \tuplet 3/2 {r8 c'' c''8 }  c''4~ ( \slashedGrace { \stemDown d''16[c''16] \stemNeutral }  b'8[c''] d''4) | \time 5/4  c''4 ( b'8 [c''] a'4 ) g'2 \break | 
 
  \time 6/4  g'4 -- a' -- g' ( f' ) e'2 | \time 5/4  g'8 g' f' e' f'2 g'4 \break |

  \time 6/4  a'4 b'8 b' c''4 a' g'2 |\time 5/4  c''8 e' g'4 f' f'2 |  a'8 a' a'4 g' g'2 \break |

  b'8 b' b'4 a'8 [( b' )] c''2 |e'4 g' g' g'2 | \tempo "rit. e morendo" e'4 g' g' g'2 | \bar "|."
    
  }
  
  
  
 \addlyrics {
   Ки -- а мет Зе --  -- ну. Ма -- хар Бе  --  ну. Хай  --  ри ме  -- ши  --  на се  -- 
   ват се  -- му  -- си бе  -- ни. "Ха-"  -- "бе-" -- рим я -- ве су  -- бе  -- рим са  -- ве,
   Ки -- а мет Зе --  -- ну. Ма -- хар Бе  --  ну, Ма -- хар Бе  --  ну.  
 }

 \addlyrics {
   Ki -- a met Ze --  -- nu. Ma -- har Be  --  nu. Hay  --  ri me  -- shi  --  na se  -- 
   vat se  -- mu  -- si be  -- ni. "Ha-"  -- "be-" -- rim ya -- ve su  -- be  -- rim sa  -- ve,
   Ki -- a met Ze --  -- nu. Ma -- har Be  --  nu, Ma -- har Be  --  nu.  
 }
  
 \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Киамет Зену }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Kiamet zenu }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score

\markup \halign #-38.8 \raise #2.8 \override #'(baseline-skip . 2) { 
  \column  { 
    \line { 
      \bold  { "D. C." }
    }
   
  }
} 

\pageBreak

% include foreign translation(s) of the song

} % bookpart
