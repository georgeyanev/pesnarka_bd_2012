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
      \key g \major
      \time 2/4
      %\tempo "Moderato" 8 = 160
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 104)" }
        }
      }
  \autoBeamOff
 
 
d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2   \break | 

\repeat volta 2 {  a'8 a' a'4 | b'8 b' b'4 | d''8 c'' b' a' |  g'2 }  \break |


\repeat volta 2 { d''4 g'' | fis''4 e'' | e''4 fis''8 e'' | d''2 \break | 
                  
    b'4 d'' | c''4 b' | a'4 b'8 a' | g'2 }
  }
  
\addlyrics {Слад -- ко,
  ме -- де -- но, слад -- ко, ме -- де -- но, ме --
  де -- но, ме -- де -- но, слад -- ко, ме -- де --
  но. От Слън -- це -- то из -- пра -- те -- но,
  от пче -- ли -- те до -- не -- се -- но. }
  
 \addlyrics {Slad -- ko, me -- de -- no, slad -- ko, me --
  de -- no, me -- de -- no, me -- de -- no, slad -- ko, me --
  de -- no. Ot Slan -- tse -- to iz -- pra -- te -- no, ot pche --
  li -- te do -- ne -- se -- no. }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Сладко медено }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Skadko medeno}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

  \markup \halign #-12.1 \raise #2.8 \override #'(baseline-skip . 2) {
        \column  {
          \line  \halign #-3.8 {
            \bold  { "D. C. al Fine" }
          }
          \line  {
            \bold { con ripetizione }
          }
        }
      }




% include foreign translation(s) of the song
\include "lyrics_de/072_sladko_medeno_lyrics_de.ly"

} % bookpart
