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
    \key f \major
    \time 2/4 
    
     \tempo \markup { % make tempo note smaller
      \concat { "Moderato " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88 )" }
      }
    }
    \autoBeamOff
    a'4 f'8 a' | g'4 e'8 g' | f'2 | bes'4 g'8 bes' | a'4 f'8 a' | g'2 \break | 
    c''4 c'' | d''4. c''8 | bes'8 a' g'4 | bes'4 bes' | c''4. bes'8 | a'8 g' f'4 \break | 
    c'4 c' | a'4. g'8 | a'8 g' f'4 | d'4 d' | bes'4. a'8 | bes'8 a' g'4 \break |
    c''4 c'' | d''4. c''8 | bes'8 a' g'4 | c'4 c' | a'4. g'8 | a'4 g' | f'2 |\break \bar "|."
  }
  
  \addlyrics {
    Слън -- це -- то на Лю -- бов -- та из -- гря -- ва веч във све -- та. 
    Вре -- дом пра -- ща Свет -- ли -- на и раз -- на -- ся Топ -- ли -- на. 
    Ний сме слън -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи -- вот.
    Ний сме слън -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи -- вот.
  }

  \addlyrics {
    Slan -- tse -- to na Lyu -- bov -- ta iz -- grya -- va vech vav sve -- ta. 
    Vre -- dom pra -- shta Svet -- li -- na i raz -- na -- sya Top -- li -- na. 
    Niy sme slan -- che -- vi la -- chi, no -- sim No -- vi -- ya zhi -- vot.
    Niy sme slan -- che -- vi la -- chi, no -- sim No -- vi -- ya zhi -- vot.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line {  Слънцето на Любовта }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Slantseto na Lyubovta }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\markup \halign #-38 \raise #2.8 { 
  \column  { 
    \line  \halign #-3.8 { 
      \bold  { "D. C." }
    }
  }
} 



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
\include "lyrics_de/055_1_slantseto_na_lyubovta_lyrics_de.ly"

} % bookpart
