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
    \key g \minor
    \time 2/4 
    \tempo \markup { % make tempo note smaller
      \concat { "Tempo di marcia " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 112)" }
      }
    }
    \autoBeamOff
    \partial 8
    f'8 |  bes'4 f'8 bes'16 c'' | d''4 bes'8 d'' | f''8 es'' d'' es'' \break |

    c''4. f'8 | c''4 f'8 c''16 d'' | es''4 c''8 d'' | f''8 es'' c'' d'' \break | 

    bes'4. bes'8 \repeat volta 2 { | g''4 f''8 bes'16 c'' d''4 d''8 d'' \break |
                           
    es''8. d''16 c''8 bes' | a'4. g'8 | g''4 f''8 bes'16 c'' \break | 
 
    d''4 d''8 d'' | f''8 es'' c'' d'' | 
    } \alternative {
      { bes'4. bes'8 | }
      {bes'4.   \break }
    } \bar "|."
  }
  
  \addlyrics {
    С~кри -- ла -- та на о -- ре -- ла, Си -- о -- не наш лю --
    бим, стре -- ми -- тел -- но към те -- бе ний друж -- но днес ле -- 
    тим. Смърт -- та ни веч не пла -- ши, в~нас 
    Дух жи -- ве -- е свят; ед -- на -- кво нас ни 
    рад -- ва и тоз, и он -- зи свят. Смърт -- свят.
  }

  \addlyrics {
    S~kri -- la -- ta na o -- re -- la, Si -- o -- ne nash lyu --
    bim, stre -- mi -- tel -- no kam te -- be niy druzh -- no dnes le -- 
    tim. Smart -- ta ni vech ne pla -- shi, v~nas 
    Duh zhi -- ve -- e svyat; ed -- na -- kvo nas ni 
    rad -- va i toz, i on -- zi svyat. Smart -- svyat.
  }
  
  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { Към Сион }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Kam Zion }
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
    
\line {   2. Плътта ще победиме}

\line {   "   "със смелост в подвиг нов;}

\line {   "   "сърцата ще стопиме}

\line {   "   "с Христовата Любов.}

\line { " " }

\line {   "   "Сияй, свети Сионе,}

\line {   "   "ний бързо веч летим,}

\line {   "   "на Бога скоро в тебе,}

\line {   "   "с дух ще се поклоним. }

    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
     


\line {  2. Platta shte pobedime}

\line {   "   "sas smelost v podvig nov;}

\line {   "   "sartsata shte stopime}

\line {   "   "s Hristovata Lyubov.}
\line { " " }

\line {   "   "Siyay, sveti Sione,}

\line {   "   "niy barzo vech letim,}

\line {   "   "na Boga skoro v tebe,}

\line {   "   "s duh shte se poklonim. }


    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/054_kam_sion_lyrics_de.ly"

} % bookpart
