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
    \key d \minor
    \autoBeamOff
    \time 3/4 \tempo \markup { % make tempo note smaller
      \concat { "Andante " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66 )" }
      }
    }
    \repeat volta 2 {
      a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 | \break
      g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | \break
      e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 |
    } 
  }
  
  \addlyrics {
    И -- дват дни на Ра -- дост, и -- дват дни на 
    Ра -- дост, и -- дват дни на Ра -- дост 
    за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
  }

  \addlyrics {
    I -- dvat dni na Ra -- dost, i -- dvat dni na 
    Ra -- dost, i -- dvat dni na Ra -- dost 
    za o -- ni -- ya, ko -- i -- to slu -- zhat Bo -- gu.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Идват дни на радост }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Idvat dni na radost }
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
      \line { " " }
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
    
    } %column
} % markup



% include foreign translation(s) of the song
\include "lyrics_de/056_1_idvat_dni_na_radost_lyrics_de.ly"

} % bookpart
