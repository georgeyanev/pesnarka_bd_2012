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

  \new Voice \absolute {
    \clef treble
    \key a \major
    \time 6/4 
    %\tempo "Andante" 4 = 66
    \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
      }
    }
 
    \autoBeamOff 
    
     a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |
    
    \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "      Più Mosso"
         
    e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break | 
    
    e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."
    
    
  }
  
  \addlyrics {Ве -- чер,
  су -- трин о -- ти -- де, дой -- де, ве -- чер,
  су -- трин о -- ти -- де, дой -- де. О -- ти --
  де, дой -- де, о -- ти -- де, дой -- де, о -- ти
  -- де, дой -- де, дой -- де.}
  \addlyrics { Ve -- cher,
  su -- trin o -- ti -- de, doy -- de, ve -- cher,
  su -- trin o -- ti -- de, doy -- de. O -- ti --
  de, doy -- de, o -- ti -- de, doy -- de, o -- ti
  -- de, doy -- de, doy -- de.}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Вечер, сутрин }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Vecher, sutrin }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\markup \halign #-12.70 \raise #2.8 \override #'(baseline-skip . 2) { 
  \column  { 
    \line \right-align \bold { "D.C." }  
    \line \right-align \bold { "con ripetizioni" }  
    \line {" "}
    \line {" "}
    \line {" "}
  }
}

% include foreign translation(s) of the song
%\include "lyrics_de/lyrics_de_file_name.ly"
\include "lyrics_de/083_2_vecher_sutrin_lyrics_de.ly"

} % bookpart
