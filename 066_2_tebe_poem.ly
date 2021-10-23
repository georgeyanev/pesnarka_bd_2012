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
    \key c \minor
    \time 5/4 
    
    %\tempo "Andante" 4 = 80
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
        \teeny \general-align #Y #DOWN \note #"4" #0.8
        \normal-text { " = 80)" }
      }
    }   

    c'4 es'4 d'4 c'2 | \time 7/4 c'4 es'4 d'4 c'4 b4 c'2 |  \break
    \time 6/4 g'4 c''4 bes'4 as'4 g'4 f'4 |  es'2 d'4 c'2 c'8 ( d'8 ) | \break
    \repeat volta 2 { es'4 d'4 c'4 c'2 f'8 ( g'8 ) | as'4 g'4 f'4 es'2  g'8 ( c''8 ) | \time 4/4 \break
    c''4 bes'4 as'4 g'4 } \alternative { 
      { \time 6/4 f'4 es'4 d'4 c'2 c'8 ( d'8 ) } 
      { f'4 \override Staff.BarLine.stencil = ##f es'4 d'4 c'2. 
      \override Staff.BarLine.stencil = ##t
      \bar "|."} 
    }
  }
  
  \addlyrics {
    Те -- бе по -- ем, Те -- бе бла -- го -- да -- рим.
    Те -- бе бла -- го -- сло -- вим, Бо -- же наш.  И 
    мо -- лим Ти ся, и  мо -- лим Ти ся,  и  
    мо -- лим Ти ся, o, Бо -- же наш. И o, Бо -- же наш.
  }

  \addlyrics {
    Te -- be po -- em, Te -- be bla -- go -- da -- rim.
    Te -- be bla -- go -- slo -- vim, Bo -- zhe nash.  I 
    mo -- lim Ti sya, i  mo -- lim Ti sya,  i  
    mo -- lim Ti sya, o, Bo -- zhe nash. I o, Bo -- zhe nash.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Тебе поем }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Tebe poem }
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
      \line { " " }
      \line { " " }
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { " " }
      \line { " " }
    } %column
} % markup



% include foreign translation(s) of the song
\include "lyrics_de/066_2_tebe_poem_lyrics_de.ly"

} % bookpart
