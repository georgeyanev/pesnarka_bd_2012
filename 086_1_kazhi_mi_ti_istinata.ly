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
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 60)" }
      }
    }
    \partial 8
    \autoBeamOff
	
	 d'8 | \repeat volta 2 { b'4. a'8 g'4 | \time 4/4  fis'8. e'16 e'4 d'4. d'8 \break | 
                       
    e'8 fis' g' a' b' d'' ( d''4 ) | \time 3/4  c''4. b'8 a' g' \break | }
    
   \alternative { { \time 4/4  b'4 a' g'4.  \tempo "a tempo" d'8 } { \tempo "rit." b'4 a'4 g'4.\fermata \break } }
  }
  
  \addlyrics {Ка -- жи ми
  ти Ис -- ти -- на -- та, ко -- я -- то но -- си
  Сво -- бо -- да за мо -- я -- та ду -- ша. Ка --
  та ду -- ша.
}
  \addlyrics {Ka -- zhi mi
  ti Is -- ti -- na -- ta, ko -- ya -- to no -- si
  Svo -- bo -- da za mo -- ya -- ta du -- sha. Ka --
  ta du -- sha.

}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Кажи ми ти истината }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {  Kazhi mi ti Istinata}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/086_1_kazhi_mi_ti_istinata_lyrics_de"

} % bookpart
