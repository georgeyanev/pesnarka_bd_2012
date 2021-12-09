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
    %ragged-last = ##f % do not spread last line to fill the whole space
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
  \key g \major
  \time 2/4
  \tempo \markup { % make tempo note smaller
    \concat { "Moderato" \normal-text { " (" }
      \teeny \general-align #Y #DOWN \note #"4" #0.8
      \normal-text { " = 88)" }
    }
  }  
  
   
  \autoBeamOff
  
  \repeat volta 2 { 
    g8 b d'4 | g8 b d'4 | g'4 g' | g'2 |   \break
  
  g'8 a'8 b'4 |  g'8 a'8 b'4 | d''4 d''4 | d''2 | \break
  
  d''8 c'' b'4 | d''8 c'' b'4 | b'8 b'8 a'8 a'8 | \tempo "                    Fine" g'2 } \break
  
   \time 3/4 
  \tempo \markup { % make tempo note smaller
    \concat { "       Meno mosso " \normal-text { " (" }
      \teeny \general-align #Y #DOWN \note #"4" #0.8
      \normal-text { " = 66)" }
    }
  }  
   
   
   g'2 a'4 | b'2. | c''2 b'4 | a'2. | a'2 b'4 | \break
   
   c'2. | d''2 c''4 | b'2.   \repeat volta 2 { g''2 d''4 | b'2. \break
   
   c''2 b'4 | a'2. | g'2 a'4 | b'2. | a'2 g'4 | g'2.| }  \break
  
  }

\addlyrics {
  Све -- тъл ден, све  -- тъл ден,
ден, ден, ден.
Ве -- сел ден, ве -- сел ден,
ден, ден, ден.
Бо -- жи ден, Бо -- жи ден,
све -- тъл Бо -- жи ден.
Све -- тъл ден, све -- тъл ден,
све -- тъл ден, Бо -- жи ден.
Све -- тъл ден, све -- тъл ден,
све -- тъл ден, Бо -- жи ден.
    
  }
  \addlyrics {  Sve -- tal den, sve  -- tal den,
den, den, den.
Ve -- sel den, ve -- sel den,
den, den, den.
Bo -- zhi den, Bo -- zhi den,
sve -- tal Bo -- zhi den.
Sve -- tal den, sve -- tal den,
sve -- tal den, Bo -- zhi den.
Sve -- tal den, sve -- tal den,
sve -- tal den, Bo -- zhi den.
  
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Светъл ден}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Svetal den }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

 \markup \halign #-11.21 \raise #2.8 \override #'(baseline-skip . 2) { 
        \column  { 
          \line  \right-align { 
            \bold  { "D. C. al Fine" }
          }
          \line \right-align { 
            \bold { "senza ripetizione" }
          }
        }
      } 



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/090_svetal_den_lyrics_de.ly"

} % bookpart
