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
      \key c \minor
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Adagio " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 56)" }
        }
      }
      
      \autoBeamOff
      
      \partial 4
      
      \repeat volta 2 { g4 | c2 d4 | es2 c 4 |  g2 g'4 | g2 c8 c8 | c2 b4 | c2 as4 | \break
      
      
      g2 fis4 |g2 f4 | es2 d4 |  es2 d4 | d2 b4 | c2 e4 | g2 f4 | \break
      
      es2 d4 | c2 d8 d | f2 es4 | d2 c4 | es2 d4 | c2. } | \break
      
  }
  
  \addlyrics {Ма -- хар Бе -- ну А -- ба, Ве -- ют
Би -- ла -- дер А -- дер Бе -- ну ше -- ла,
Бе -- ну ше -- ла, Бе -- ну ше -- ла,
ше -- ла, ше -- ла, ше -- ла,
Би -- ла -- дер А -- дер Бе -- ну ше -- ла.}
  \addlyrics {Ma -- har Be -- nu A -- ba, Ve -- yut
Bi -- la -- der A -- der Be -- nu she -- la,
Be -- nu she -- la, Be -- nu she -- la,
she -- la, she -- la, she -- la,
Bi -- la -- der A -- der Be -- nu she -- la.}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Махар бену аба}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Mahar benu aba }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak


% include foreign translation(s) of the song
%\include "lyrics_de/lyrics_de_file_name.ly"

} % bookpart
