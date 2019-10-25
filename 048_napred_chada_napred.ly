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
    \time 4/4 \tempo "Tempo di marcia" 4 = 100
    \partial 4
    \autoBeamOff
    d'4 | g'4. a'8 bes'4. a'8 | g'2. d'4 | g'4. a'8 bes'8 bes'8 a'8. a'16| \break
    g'2. d''4 | \repeat volta 2 {  g''4. es''8 d''4. cis''8 | d''2 ( d''8 ) d'8 es'8 d'8 | \break
    bes'4. bes'8 a'4. a'8 |} \alternative  { { g'2. d''4 | }  { g'2. } } \bar "|." 
  }
  
  \addlyrics {
    На -- пред ча -- да на -- пред, но -- се -- те Сло -- во -- то на -- 
    вред! Без страх в~Жи -- во -- та нов но -- се -- те 
    Прав -- да, Мир, Лю -- бов. Без бов!
  }

  \addlyrics {
    Na -- pred cha -- da na -- pred, no -- se -- te Slo -- vo -- to na -- 
    vred! Bez strah v~ZHi -- vo -- ta nov no -- se -- te 
    Prav -- da, Mir, Lyu -- bov. Bez bov!
  }
 
  \header {
    title = "Напред, чада, напред / Napred, chada, napred"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
