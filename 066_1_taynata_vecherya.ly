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
    %ragged-last = ##t % do not spread last line to fill the whole space
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
    \time 2/4 
      \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
        \teeny \general-align #Y #DOWN \note #"4" #0.8
        \normal-text { " = 60)" }
      }
    } 
    %\tempo "Andante" 4 = 60
    \autoBeamOff
    a8 ([ e'8 ]) d'8 c'8 | d'4 e'4 | a8 ([ e'8 ])  d'8 c'8 | d'8 e'8 e'8 e'8 \break |
    c'8 g'8 g'8 g'8 | g'8 ([a'8]) g'8 f'8 | e'2 \repeat volta 2 { c'8 ([ d'8 ]) e'8 a'8 |\break
    b'4 a'4 | c'8 ([ d'8 ]) e'8 a'8 | a'8 ([ c''8 ]) b'8 g'8 | a'2 | } \alternative { {  c'8 ([ d' e' ]) a'  | \break
    b'8 ([ d''8 ]) c''8 b'8 | a'2 | } {  c'8 ([ d'8 e'8 ]) a8 | b8 ([ d'8 ]) c'8 b8 | a2 | \bar "|." \break } }
  }
  
  \addlyrics {
    "1. Зун" ме -- ри ма -- ну, зун ме -- ри -- ма -- нун -- да -- на,
    а -- са -- ви -- та ви -- та нан -- да. Зун ме -- ри 
    ма -- ну, Зун ме -- ри ма -- нун -- да -- на, а -- са -- 
    ви -- та  нан -- да.  а -- са -- ви -- та  нан -- да.    
  }

  \addlyrics {
    "1. Zun" me -- ri ma -- nu, zun me -- ri -- ma -- nun -- da -- na,
    a -- sa -- vi -- ta vi -- ta nan -- da. Zun me -- ri 
    ma -- nu, Zun me -- ri ma -- nun -- da -- na, a -- sa -- 
    vi -- ta  nan -- da.  a -- sa -- vi -- ta  nan -- da.    
  }

  \addlyrics {
    "2. Вси" -- чко е све -- тло, вси -- чко е о -- све -- те -- но
    с~Мой -- та жи -- ва Ви -- де -- ли -- на. 
  }

  \addlyrics {
    "2. Vsi" -- chko e sve -- tlo, vsi -- chko e o -- sve -- te -- no
    s~Moy -- ta zhi -- va Vi -- de -- li -- na. 
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Тайната вечеря}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Taynata vecherya}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score



\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {
      
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
     
    } %column
} % markup



% include foreign translation(s) of the song
\include "lyrics_de/066_1_taynata_vecherya_lyrics_de.ly"

} % bookpart
