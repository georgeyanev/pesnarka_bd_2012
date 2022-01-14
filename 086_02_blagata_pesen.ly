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
    \tempo \markup { % make tempo note smaller
      \concat { "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 72)" }
      }
    }
    \partial 4
    \autoBeamOff
	b8. c'16 | d'4 g' fis'8. e'16 | \time 2/4  e'4. e'8 | \time 3/4  e'4 c' e'8. e'16 \break | 

  d'2 b'8. b'16 | c''4 b' b'8. a'16 | a'4 g'2 \break | 
  
  \time 4/4  b'8. b'16 c''8. c''16 b'2 | d''4 c'' b' a' | a'2 g' \break | 
  
  \bar ".|:" \time 6/4  fis'4 fis' fis'2 e' | e'4 e' e'2 d' |  \time 4/4  b'4 b' c'' a' | a'2 g' \bar ":|."
  }
  
  \addlyrics {
  Ти съ -- зна -- вай, ти лю -- би,
  без -- спир -- но сей, гра -- ди и в~Жи -- во --
  та всич -- ко да -- вай. Та -- зи Ис -- ти --
  на, Бо -- га, ти по -- зна -- вай. Ти по -- зна
  -- вай, ти по -- зна -- вай, Бо -- га ти по --
  зна -- вай.
  }

  \addlyrics {
  Ti sa -- zna -- vay, ti lyu -- bi,
  bez -- spir -- no sey, gra -- di i v~Zhi -- vo --
  ta vsich -- ko da -- vay. Ta -- zi Is -- ti --
  na, Bo -- ga, ti po -- zna -- vay. Ti po -- zna
  -- vay, ti po -- zna -- vay, Bo -- ga ti po --
  zna -- vay.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Благата песен }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Blagata pesen }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

  \markup \halign #-2.59 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line \right-align { 
        \concat {
          \bold { "D.C. al Fine" }  
          \italic { " „Кажи ми ти истината/Kazhi mi ti Istinata“ " }  
        }
      }
      \line \halign #2.59 \bold { "senza ripetizione" }  
      \line  {" "}
      \line  {" "}
      \line  {" "}
      \line  {" "}
    }
  } 



% include foreign translation(s) of the song
\include "lyrics_de/086_02_Blagata_pesen_lyrics_de.ly"

} % bookpart
