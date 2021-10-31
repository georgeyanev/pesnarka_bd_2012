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
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 84)" }
        }
      }
      
      \autoBeamOff

\repeat volta 2 { d'8 d' g' g' | a'8 a' b' b' | d''4 d'' | e''8 c'' c'' b' \break |

 d''8 c'' b' a' |} \alternative { { \time 3/4 a'4 g'2 |} { \time 4/4  a'4 g'2 d'8. e'16 | } } \repeat volta 2 { \time 3/4 d'2 d'8. e'16 \break | 
 
    d'4. g'8 g'8. a'16 | } 
    \alternative  { 
      {\time 4/4 b'4 g'2 d'8. e'16 | } 
      { b'4 g'2 \bar "|."} 
    }


  }
  
  \addlyrics {Си --
  ла жи -- ва, из -- вор -- на, те -- чу -- ща, си
  -- ла жи -- ва, из -- вор -- на, те -- чу -- ща.
  чу -- ща. Зун ме -- зун, зун ме -- зун, би --
  ном ту ме -- то. Зун ме -- ме -- то. }
  \addlyrics { Si --
  la zhi -- va, iz -- vor -- na, te -- chu -- shta, si
  -- la zhi -- va, iz -- vor -- na, te -- chu -- shta.
  chu -- shta. Zun me -- zun, zun me -- zun, bi --
  nom tu me -- to. Zun me -- me -- to. }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Сила жива, изворна}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 {Sila zhiva, izvorna }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

  \markup { 
    \column  { 
      \line  {" "}
      \line  {" "}
    }
  } 




% include foreign translation(s) of the song
\include "lyrics_de/071_2_sila_zhiva_izvorna_lyrics_de.ly"

} % bookpart
