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

 \new Voice \relative c' {
    \clef treble
    \key c \major
    \time 7/16 \tempo "Vivo"
    \autoBeamOff
    c8 e8 g8. | g8 c8 g8. | c,8 e8 g8. | g8 c8 g8. | \break
    c,8 d8 e8. | d8 e8  \acciaccatura {d16[e16]} d8([c16]) | g'8 g8 g8. | c,8 d8 e8. | \break 
    d8 e8 \acciaccatura {d16[e16]} d8([c16]) | g'8 g8 g8. | c,8 d8 e8. | d8 e8 \acciaccatura {d16[e16]} d8([c16]) | c8~ c8~ c8. | \bar "|." \break
  }
    
  \addlyrics {
   "1. a" -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a a
  }

  \addlyrics {
    "2. o" -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o 
    o -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o 
    o -- o -- o  o -- o -- o  o -- o -- o  o -- o -- o o
  }

  \addlyrics {
    "3. у" -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у 
    у -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у 
    у -- у -- у  у -- у -- у  у -- у -- у  у -- у -- у у
  }

  \addlyrics {
    "4. а" -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у 
    а -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у 
    а -- о -- у  а -- о -- у  а -- о -- у  а -- о -- у а
  }

  \addlyrics {
    "5. a" -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a 
    a -- a -- a  a -- a -- a  a -- a -- a  a -- a -- a a
  }

  \addlyrics {
    "6. e" -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e 
    e -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e 
    e -- e -- e  e -- e -- e  e -- e -- e  e -- e -- e e
  }

  \addlyrics {
    "7. и" -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и 
    и -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и 
    и -- и -- и  и -- и -- и  и -- и -- и  и -- и -- и и
  }

  \addlyrics {
    "8. а" -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и 
    а -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и 
    а -- е -- и  а -- е -- и  а -- е -- и  а -- е -- и а
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Песен на гласните букви }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Pesen na glasnite bukvi}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { "Lied der Vokale " }
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
%\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
