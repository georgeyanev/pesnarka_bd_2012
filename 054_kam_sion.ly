\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key g \minor
    \time 2/4 \tempo "Tempo di marcia" 4 = 112
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
    title = "Към Сион / Kam Sion"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
