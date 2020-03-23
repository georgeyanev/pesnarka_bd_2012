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
    ragged-last = ##f % do not spread last line to fill the whole space
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
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
 
    d'4 g'8 a'8 | b'4 e''4 | d''8 d''8 e''8 c''8 | b'2| d''4 c''8 b'8 | \break
    a'4 a'8 b'8 | c''8 c''8 b'8  a'8| b'2 | e''4 c''8 e''8 | d''4 b'8 c''8 | \break
    d''8 d''8 d''8 e''8 | d''2 | a'4 a'4 | a'4 a'4 | a'4 b'8 a'8 | g'2 | \break
    d'4 d'4 | d'4 d'4 | d'4 c''8 b'8 | a'2 \repeat volta 2 { b'4 b'4 | b'4 b'4 | \break
    b'4 e''8 d''8 | c''2 | c''4 c''4|c''4 c''4| b'4 d''8 b'8 |a'2 |\break
    a'4 b'8 a'8 | g'2|} 
    \alternative { 
      { d'4 e'8 d'8 | d'2 | d'4 c''8 b'8| a'2 } 
      { \time 4/4 \break
         \override Score.MetronomeMark #'outside-staff-priority = #599
         \override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
         \tempo "Meno mosso" 4 = 92
         d'2 e'4 d'4 | b'1 | \tempo "rit." a'2 b'4 a'4 | g'1| \bar "|." \break } 
    }
  }
  
  
  
 \addlyrics {
    Брат -- ство, е -- дин -- ство ни -- е ис -- ка -- ме, 
    зо -- ва на Лю -- бов -- та ни -- е пус -- ка -- ме, ми -- ра на Ра -- дост -- та
    ни -- е ви -- ка -- ме: благ Жи -- вот в~нас да вли -- ва -- ме,
    благ Жи -- вот в~нас да вли -- ва -- ме, благ Жи -- вот в~нас
    да вли -- ва -- ме, благ Жи -- вот в~нас да вли -- ва -- ме,
    да вли -- ва -- ме, да вли -- ва -- ме, да вли -- ва -- ме,
    да вли -- ва -- ме, да вли -- ва -- ме. 
  }

  \addlyrics {
    Brat -- stvo, e -- din -- stvo ni -- e is -- ka -- me, 
    zo -- va na Lyu -- bov -- ta ni -- e pus -- ka -- me, mi -- ra na Ra -- dost -- ta
    ni -- e vi -- ka -- me: blag Zhi -- vot v~nas da vli -- va -- me,
    blag Zhi -- vot v~nas da vli -- va -- me, blag Zhi -- vot v~nas
    da vli -- va -- me, blag ZHi -- vot v~nas da vli -- va -- me,
    da vli -- va -- me, da vli -- va -- me, da vli -- va -- me,
    da vli -- va -- me, da vli -- va -- me. 
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Братство, единство }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Bratstvo, edinstvo }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  
  
  \midi{}

} % score

\markup \halign #-13 { 
    \column  { 
      \line  \halign #-3 { 
        \bold  { "D. C." }
      }
      \line  { 
        \bold { con ripetizione }
      }
    }
  } 



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/020_bratstvo_edinstvo_lyrics_de.ly"

} % bookpart
