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
    \concat { "Moderato " \normal-text { "(" }
      \teeny \general-align #Y #DOWN \note #"4" #0.8
      \normal-text { " = 80)" }
    }
  }  
  
   
  \autoBeamOff
  

 \repeat volta 2 { d''8 d'' e'' d'' | d''8 c'' c'' b' |b'8 a' a' g' \break }
 
 \repeat volta 2 { b' b' c'' a' | \time 3/4 a' g' g' fis' fis' e' \break 
 
 \time 2/4 e' d' d' d' |} \time 5/4 b d' b d' b d' \bar "!" \break

  g' fis' e' c' | c' e' c' e'  c' e'  \bar "!" \break
  
  fis' e' d' b  | b d' b d' b d'  \bar "!" \break

  e' d' a a | \time 3/4 a b c' d' e' fis' |  \break

  g' g' g' g' g' g' \time 2/4  g' g' g' g' \fermata  |  \bar "|."

  
  
  

 
  
  }
\addlyrics {
    Тъ -- ги, скър -- би вди  -- гай, сла  -- гай

пра  --  во вър -- ви!

Не се спъ -- вай, всич -- ко вди -- гай,

сла -- гай, пра -- во вър -- ви!

Вър -- ви, вър -- ви, вър -- ви, пра -- во вър -- ви!

Вър -- ви, вър -- ви, вър -- ви, пра -- во вър -- ви!

Вър -- ви, вър -- ви, вър -- ви, пра -- во вър -- ви!

Вър -- ви, вър -- ви, пра -- во вър -- ви!

Вър -- ви, вър -- ви, пра -- во вър -- ви!
  }
  \addlyrics {  Ta -- gi, skar -- bi vdi  -- gay, sla  -- gay

pra  --  vo var -- vi!

Ne se spa -- vay, vsich -- ko vdi -- gay,

sla -- gay, pra -- vo var -- vi!

Var -- vi, var -- vi, var -- vi, pra -- vo var -- vi!

Var -- vi, var -- vi, var -- vi, pra -- vo var -- vi!

Var -- vi, var -- vi, var -- vi, pra -- vo var -- vi!

Var -- vi, var -- vi, pra -- vo var -- vi!

Var -- vi, var -- vi, pra -- vo var -- vi! }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Тъги, скърби}
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Tagi, skarbi }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

 \markup \halign #-5.4 \raise #2.8 \override #'(baseline-skip . 2) { 
        \column  { 
          \line \right-align { 
            \bold  { "D. C. con ripetizione" }
          }
		      \line \right-align { 
            \italic { "attacca „Светъл ден/Svetal den“"}
          }
        }
}


\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/089_tagi_skarbi_lyrics_de.ly"

} % bookpart
