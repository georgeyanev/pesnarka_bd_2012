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
  
    bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 | a'4. g'8 \break | 
    a'8 g' es' g' |  f'2 |  d'2 \repeat volta 2 { es'4. es'8 | g'8 g' f' e' \break | 
    f'2 | bes'2 d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 |\break }
  }
  
  \addlyrics {
    Ний сме сла -- вей -- че -- та гор -- ски, с~пес -- ни 
    сла -- вим Не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи 
    хор -- ски с~пес -- ни го -- ним от Зе -- мя -- та.
  }
  
  \addlyrics {
    Niy sme sla -- vey -- che -- ta gor -- ski, s~pes -- ni 
    sla -- vim Ne -- be -- sa -- ta, chuv -- stva rob -- ski, gri -- zhi 
    hor -- ski s~pes -- ni go -- nim ot Ze -- mya -- ta.
  }

  \header {
    title = "Славейчета горски / Slaveycheta gorski"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
