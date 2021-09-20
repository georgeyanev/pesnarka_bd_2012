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
    \key c \major
    \time 2/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Adagio" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 54)" }
      }
    }
    \partial 4
    \autoBeamOff  
	
	 a4 | d'2 | \time 3/4 b'4 a' fis' | \time 4/4 a'2 ( a'8 ) r8 a4 | \time 2/4 d'2 | \time 3/4 b'4 a'4 fis'4 \break
 
 a'2 r8 fis'8 | \repeat volta 2 {  \time 9/8 fis'4 fis'8 fis'4 fis'8 fis'4 g'8 | a'4 a'8 b'4 a'8 a'4 fis'8 | \break
 
 a'4 g'8 g'4 fis'8 fis'4 e'8 | \time 6/8 e'4 e'8 fis'4 e'8 | } \alternative { {d'4. (d'4 ) fis'8 } 
  
{d'4. (d'4) a8 | } } \break \repeat volta 2 {  \time 9/8 a4 a8 a4 a8 a4 a8 | g'4 fis'8 e'4 e'8 e'4 e'8 | \break 

\time 6/8  fis'4 e'8 d'4 cis'8 | } \alternative { { d'4. ( d'4 ) a'8 } { d'4. ( d'4 )  r8 } }
   
  }
  
  \addlyrics { 
    Ми -- сли, пра -- во ми -- сли. Ми -- сли, пра -- во ми -- сли! 
                    
Све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи, све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи. Све -- пи. Кре -- пи кре -- пи

кре -- пи све -- ще -- ни ми -- сли за Жи -- во -- та ти кре -- пи.  Кре -- пи.
  }

  \addlyrics {
   Mi -- sli, pra -- vo mi -- sli. Mi -- sli, pra -- vo mi -- sli! 
                    
Sve -- shte -- ni mi -- sli za Zhi -- vo -- ta ti kre -- pi, sve -- shte -- ni mi -- sli za Zhi -- vo -- ta ti kre -- pi. Sve -- pi. Kre -- pi kre -- pi

kre -- pi sve -- shte -- ni mi -- sli za Zhi -- vo -- ta ti kre -- pi.  Kre -- pi.
    
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { Мисли, право мисли }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Misli, pravo misli! }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}
} % score



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/093_misli_pravo_misli_lyrics_de.ly"

} % bookpart
