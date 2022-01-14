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

  \new Voice \absolute {
     \clef treble
      \key g \major
      \time 3/4
      %\tempo "Moderato" 8 = 160
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andantino " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 69)" }
        }
      }
      \partial 4
      \autoBeamOff
    
    \repeat volta 2 {  b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break | 

    g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4^\markup { \concat {"              (" \fermata ")"}} |  g'2
    \break }
  }
  
  \addlyrics { Из -- гря --
    ва Слън -- це -- то, пра -- ща Свет -- ли -- на,
    но -- си Ра -- дост за Жи -- во -- та тя.
  }
  
  \addlyrics { Iz -- grya --
  va Slan -- tse -- to, pra -- shta Svet -- li -- na,
  no -- si Ra -- dost za Zhi -- vo -- ta tya. }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {  Изгрява Слънцето }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Izgryava Slantseto }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

  \markup \halign #-5.9 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line  { 
        \italic \right-align { "attacca „Сила жива, изворна“" }
      }
      \line  { 
        \italic \right-align { "attacca „Sila zhiva, izvorna“" }
      }
      \line  {" "}
      \line  {" "}
      \line  {" "}
      \line  {" "}
    }
  } 

  % include foreign translation(s) of the song
  \include "lyrics_de/071_1_izgryava_slunzeto_lyrics_de.ly"

} % bookpart
