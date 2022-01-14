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
  
    \new Voice \absolute  {
    \clef treble
    \key c \major
    \time 4/4 
    %\tempo "Moderato" 8 = 160
    \tempo \markup { % make tempo note smaller
      \concat { "Moderato " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 76)" }
      }
    }
    \autoBeamOff

c'4 e'8. f'16 g'4 e' | a'4 g'8. e'16 g'4 g' \break |

g'4 f'8. e'16 f'4 a' | \time 5/4  g'4 g'8. fis'16 g'2 c''4 | \time 2/4  b'4 a'8 b' \break |

\time 4/4  c''4 c''2 c''4 \repeat volta 2 { g'4 e'8. f'16 g'4 g' | a'4 g'8 ( e' ) f'4 d' | \break
                                            
d'4 d'8 e' f'4 a' g'2 e'8 d' e' f' | \time 2/4  g'2 | \break
 
 \time 5/4  a'4 g' a'8 b' c''2 | \time 4/4  d''8 [( c'' )] b' [( a' )] g'2 \break 

 d'8  [( e' )] f' [( e' )] g' [( f' )] e' d' } \alternative { { | c'2. c''4 | } {c'2. r4 } } \bar "|."
  }
  
  \addlyrics {
  Всич -- ко
  в~Жи -- во -- та е по -- сти -- жи -- мо, ко --
  га -- то вре -- ме -- то е до -- бро и ний сме
  ра -- зум -- ни. За -- що -- то До -- бро -- то
  е ос -- но -- ва, а Ра -- зум -- ност -- та 
  цел, с~ко -- и -- то Ду -- хът гра -- ди бъд --
  ни -- ни, бъд -- ни -- ни, ве -- ли -- ки бъд --
  ни -- ни. За -- ни.
  }
  
  \addlyrics {
  Vsich -- ko
  v~Zhi -- vo -- ta e po -- sti -- zhi -- mo, ko --
  ga -- to vre -- me -- to e do -- bro i niy sme
  ra -- zum -- ni. Za -- shto -- to Do -- bro -- to
  e os -- no -- va, a Ra -- zum -- nost -- ta 
  tsel, s~ko -- i -- to Du -- hat gra -- di bad --
  ni -- ni, bad -- ni -- ni, ve -- li -- ki bad --
  ni -- ni. Za -- ni.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Всичко в Живота е постижимо }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Vsichko v zhivota e postizhimo }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score



\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/100_vsichko_v_zhivota_e_postizhimo_lyrics_de.ly"

} % bookpart
