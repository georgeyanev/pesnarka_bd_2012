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
  \key c \major
  %\time 3/4 \tempo "Tempo di marcia" 4 = 96
  \tempo \markup { % make tempo note smaller
      \concat { "Tempo di marcia " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 96)" }
      }
    }
  \partial 8
  \autoBeamOff
 
    e'8 | g'4. fis'8 g' a' | g'4 e'2 | e'4 e'8. e'16 e'8 e' \break | 

    g'4 f'2 | \time 4/4  f'4 f'8 f' d''4 c'' | b'4 a'8 b' c''2 \break |
  
    g'4 f'8 e' a'2 | d'4 e'8 f' g'4. e'8 | g'4 f' e'2 \break |
  
    e'8 f' g'4 g'2 | a'4 a'8. a'16 a'4 a' | d'8 e' f'4 f'2 \break | 
    
    b'8 ([ d'' ]) a' b' c''2 | b'8 a' g' f' e'4 d'8 e' \break | 
  
    \time 2/4  f'2 |  \time 4/4  b'4 a'8 b' c''2 |  a'4 b'8 c'' d''2 \break |
  
    c''4 b'8 a' e'2 | d'4 e'8 f' g'4. e'8 |  g'4 f' e'4. | \bar "|."
  }
  
  \addlyrics { На -- пред,
    на -- пред за сла -- ва в~бой за Ца -- ря не --
    бес -- ни, Ца -- ря на Прав -- да, Мир и Лю --
    бов, Мир и Лю -- бов, Мир и Лю -- бов, Лю --
    бов, Лю -- бов. Сла -- ва, сла -- ва Теб по --
    до -- ба -- ва, Ти си цар на Прав -- да и Мир,
    Ти си цар на Прав -- да и Мир, Мир и Лю --
    бов, Мир и Лю -- бов, Мир и Лю -- бов, Мир и
    Лю -- бов, Лю -- бов, Лю -- бов.}
  \addlyrics {Na -- pred,
    na -- pred za sla -- va v~boy za TSa -- rya ne --
    bes -- ni, TSa -- rya na Prav -- da, Mir i Lyu --
    bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Lyu --
    bov, Lyu -- bov. Sla -- va, sla -- va Teb po --
    do -- ba -- va, Ti si tsar na Prav -- da i Mir,
    Ti si tsar na Prav -- da i Mir, Mir i Lyu --
    bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Mir i
    Lyu -- bov, Lyu -- bov, Lyu -- bov.}
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { За Небесния цар }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Za Nebesniya tsar}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

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
\include "lyrics_de/041_za_nebesnija_zar_lyrics_de.ly"

} % bookpart
