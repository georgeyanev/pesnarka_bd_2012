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
\new Voice \absolute  {
    \clef treble
    \key g \major
    \time 4/4 

    \tempo \markup { % make tempo note smaller
      \concat { "Adagio " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 56 )" }
      }
    }
    \autoBeamOff
    b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |fis'2 fis'4 | a'4 g' fis' | \break 
    e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | \break 
    e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
  }
  
  \addlyrics {
    Ти си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по -- 
    ди. Ду -- ша -- та ми коп -- неe за Твой -- та чис -- то -- 
    та. Ду -- ша -- та ми коп -- неe за Твой -- та свет -- ли -- на.
  }

  \addlyrics {
    Ti si pro -- ya -- ve -- na -- ta Lyu -- bov kam men, Gos -- po -- 
    di. Du -- sha -- ta mi kop -- nee za Tvoy -- ta chis -- to -- 
    ta. Du -- sha -- ta mi kop -- nee za Tvoy -- ta svet -- li -- na.
  }

  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Ти си проявената Любов}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Ti si proyavenata Lyubov }
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
\include "lyrics_de/055_2_ti_si_proyavenata_lyubov_lyrics_de.ly"

} % bookpart
