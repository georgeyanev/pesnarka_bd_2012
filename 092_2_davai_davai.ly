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
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
  } % layout

   \new Voice \absolute  {
    \clef treble
    \key a \minor
    \time 5/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
      }
    }
   

a4 c' e' a'2 |c''4 b' a' e'2 | c''4 c'' c'' c''2 \break |

 b'8 ( c'' ) d''4 b' a'2 | b'4 a' gis' a'2 | f'4 d' e' e'2 \break |

 a'4 b' a' gis'2 | f'4 gis' f' e'2 | a'4 a' f' gis'2 \break |

f'4 d' e' e'2 \repeat volta 2 {| a'4 a' b'8 ( c'' ) d''2 |  e''4 c'' b' a'2 \break | % 13
    
 b'4 a' gis' a'2 | f'4 d' e' e'2 } | gis'4 f' f' gis'2 \break |

f'4 d' e' e'2 | gis'4 f' f' gis'2 |  f'4  d' e' e'2|



    
  }
  
  
  
 \addlyrics {
 Да -- вай, да  -- вай, всич -- ко да -- вай,

чис -- то се -- ме пше -- ни -- че -- но.

Да се се -- е на ни -- ва -- та, на ни -- ва -- та кра -- си -- ва -- та.

Да се чи -- сти през зи -- ма -- та.

Да се рад -- ва на жи -- во -- та

всич -- ко ся -- то на по -- ле -- то,

на по -- ле -- то от Hе -- бе -- то,

на по -- ле -- то от Hе -- бе -- то.
 

  
  }

  \addlyrics {
  
  Da -- vay, da  -- vay, vsich -- ko da -- vay,

chis -- to se -- me pshe -- ni -- che -- no.

Da se se -- e na ni -- va -- ta, na ni -- va -- ta kra -- si -- va -- ta.

Da se chi -- sti prez zi -- ma -- ta.

Da se rad -- va na zhi -- vo -- ta

vsich -- ko sya -- to na po -- le -- to,

na po -- le -- to ot He -- be -- to,

na po -- le -- to ot He -- be -- to.
 
    
    
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Давай, давай}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Davay, davay}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score

\markup \halign #-12.4 \raise #2.8 \override #'(baseline-skip . 2) { 
  \column  { 
    \line  \halign #-3 { 
      \bold  { "D. C." }
    }
   
  }
} 



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/092_2_datay_davay_lyrics_de.ly"

} % bookpart
