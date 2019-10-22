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
  \key c \major
  \time 3/4 \tempo "Tempo di marcia" 4 = 96
  \partial 8
  \autoBeamOff
 
    e'8 | g'4. fis'8 g' a' | g'4 e'2 | e'4 e'8. e'16 e'8 e' \break | 

    g'4 f'2 | \time 4/4  f'4 f'8 f' d''4 c'' | b'4 a'8 b' c''2 \break |
  
    g'4 f'8 e' a'2 | d'4 e'8 f' g'4. e'8 | g'4 f' e'2 \break |
  
    e'8 f' g'4 g'2 | a'4 a'8. a'16 a'4 a' | d'8 e' f'4 f'2 \break | 
    
    b'8 ([ d'' ]) a' b' c''2 | b'8 a' g' f' e'4 d'8 e' \break | 
  
    \time 2/4  f'2 |  \time 4/4  b'4 a'8 b' c''2 |  a'4 b'8 c'' d''2 \break |
  
    c''4 b'8 a' e'2 | d'4 e'8 f' g'4. e'8 |  g'4 f' e'2 | \bar "|."
  }
  
  \addlyrics {
    На -- пред,
    на -- пред за сла -- ва в~бой за Ца -- ря не --
    бес -- ни, Ца -- ря на Прав -- да, Мир и Лю --
    бов, Мир и Лю -- бов, Мир и Лю -- бов, Лю --
    бов, Лю -- бов. Сла -- ва, сла -- ва Теб по --
    до -- ба -- ва, Ти си цар на Прав -- да и Мир,
    Ти си цар на Прав -- да и Мир, Мир и Лю --
    бов, Мир и Лю -- бов, Мир и Лю -- бов, Мир и
    Лю -- бов, Лю -- бов, Лю -- бов.
  }

  \addlyrics {
    Na -- pred,
    na -- pred za sla -- va v~boy za TSa -- rya ne --
    bes -- ni, TSa -- rya na Prav -- da, Mir i Lyu --
    bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Lyu --
    bov, Lyu -- bov. Sla -- va, sla -- va Teb po --
    do -- ba -- va, Ti si tsar na Prav -- da i Mir,
    Ti si tsar na Prav -- da i Mir, Mir i Lyu --
    bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Mir i
    Lyu -- bov, Lyu -- bov, Lyu -- bov.
  }


  \header {
    title = "За Небесния цар / Za Nebesniya tsar"
  }

} % score
} % bookpart
