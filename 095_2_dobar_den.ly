\version "2.22.0"

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
    \key a \minor
    \time 5/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 88)" }
      }
    }
    a4 c' e'2 c'4 | \time 4/4  e'4 ( d' ) c'  d'  | e'2. r4 \break |

g'4 e' a' f' | g'4 d' e'2 \fermata | a'4 a' c''4. b'8 | b'2 a' \break |

 g'4 g' f' f' |  f'2 e' | a'4. a'8 c''4 b' | b'4 a' a' a' \break |
 
 g'4 f' e' d' | d'2 c' |  \time 6/4  b4. c'8 d'4 ( e' f' ) e' \break | 
 
 \time 4/4  g'4 e' a' g' | f'4 e' d' c' | c'2 ( b ) | a2. r4 \break | 

 \bar "|."
  }
  
  \addlyrics { До -- бър
  ден е свет -- ли -- я ден. Ху -- бав и кра --
  сив е той! Всич -- ко о -- за -- ря -- ва, всич
  -- ко о -- жи -- вя -- ва и в~Жи -- во -- та Бо
  -- жи -- е -- то бла -- го той раз -- да -- ва,
  и в~Жи -- во -- та Бо -- жи -- е -- то бла -- го
  той раз -- да -- ва.
    
  }

  \addlyrics {
  Do -- bar
  den e svet -- li -- ya den. Hu -- bav i kra --
  siv e toy! Vsich -- ko o -- za -- rya -- va, vsich
  -- ko o -- zhi -- vya -- va i v~Zhi -- vo -- ta Bo
  -- zhi -- e -- to bla -- go toy raz -- da -- va,
  i v~Zhi -- vo -- ta Bo -- zhi -- e -- to bla -- go
  toy raz -- da -- va.
  }

  \header {
    title = \markup \column \normal-text \fontsize #2.5 { 
              \center-align
              \line { Добър ден }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Dobar den }
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
    \line { " " }
  }
} 


% include foreign translation(s) of the song
\include "lyrics_de/095_2_dobar_den_lyrics_de.ly"

} % bookpart
