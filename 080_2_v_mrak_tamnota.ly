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
   % ragged-last = ##t % do not spread last line to fill the whole space
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

  \new Voice \absolute {
    \clef treble
      \key c \minor
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
        }
      }
      
      \partial 4
      
   g4  | c'2 b8 c' | d'2 g4 | es'2 d'4 | c'2 ( d'16 c' b c' \break |
 
 d'2 ) c'4 | c'2 f'4 | f'2 es'8 d' | es'2 f'4 | g'2 as'4 \break 

g'2 fis'4 | g'2 as'4 | g'2 f'4 \autoBeamOff \repeat volta 2 { f'2 es'8 d' |  es'2 f'4 \break | 
                                                 
    g'2 as'4 | g'2 f'4 | es'2 d'4 }  \alternative { { c'2 f'4 } {  c'2. } } \bar "||"  \break | 
  
  c'2 d'4 |  es'2. |  d'2 c'4 | c'2. | b2 b4 | c'2. | \bar "|."
  }
  
  \addlyrics {Във мрак, тъм
  -- но -- та е бил жи -- во -- тът наш, но Слън
  -- це -- то на Жи -- во -- та про -- си -- я у
  нас и ний тръг -- нах -- ме във пъ -- тя чист
  и свят за нас, и нас. Свят за нас, свят за
  нас, свят за нас.
}
  \addlyrics {Vav mrak, tam -- no -- ta e bil zhi -- vo -- tat nash, no Slan
  -- tse -- to na Zhi -- vo -- ta pro -- si -- ya u nas i niy trag --
  nah -- me vav pa -- tya chist i svyat za nas, i nas. Svyat za
  nas, svyat za nas, svyat za nas.}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { В мрак тъмнота}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { V mrak tamnota }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

  \markup \halign #-2.19 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line \right-align { 
        \concat {
          \bold { "D.C. al Fine" }  
          \italic { " „Махар бену аба/Mahar benu aba“ " }  
          \bold { "senza ripetizione" }  
        }
      }
      \line  {" "}
      \line  {" "}
      \line  {" "}
    }
  } 



% include foreign translation(s) of the song
\include "lyrics_de/080_2_v_mrak_tamnota_lyrics_de.ly"

} % bookpart