\version "2.18.2"

\paper {
  print-all-headers = ##t
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    %ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout
  
  \new Voice \relative c' {
    \clef treble
    \key g \major
    \time 4/4
    \tempo "Largo" 4 = 46
    \autoBeamOff
  
    b8. [(c16)] a8. b16 c2 | 
    e4 d8. c16 b2 | 
    g'4 fis8. g16 e4. fis8 | \break 
  
    \time 3/4 g8 a8 b2 |
    \time 4/4 c8. [(d32 c32] b8 [c8]) a2 |
    d8. [c16] b8 [(a8)] b2 | \break

    a4. (b8) g2 | 
    fis8. [g16] e4. fis8 [g8 a8] |
    \time 5/4 b4 d8 c8 b8 a8 b2 | \break
    
    d4 e4 c8. b16 c2 |
    d4 b4 b8. a16 b2 |
    \time 4/4 c4 b4 a8 a8 g8 g8 | \break
    
    fis4 e8 e8 fis4 a8. a16 |
    g4. a8 b4 a8. a16 |
    \time 3/4 g2 \tempo "Più mosso"  d8. d16 |
    \repeat volta 3 { 
      g4 fis4 fis8. e16 | \break
      
      e4 e4 d8. b16 | 
      \time 4/4 d4 c4 c4 e8. d16 |
      d4 b4 b4 d8. a16 |
      a4 b2 d4 | \break
      
      b'4 a8. g16 g4 fis4 | 
      \time 6/4 fis4 e4 e4 d8. d16 g2 |
      d4 b4 d4 c8. b16 c2 | \break
      
      e4 d4 b4 b8. c16 d2 |
      \time 4/4 e4 d4 a4 b8. a16 |	
    } % repeat
    \alternative {
      { \time 3/4 g2 d'8. d16 }
      { \time 3/4 g,2.  \bar "|." }
    }
  }
  
  \addlyrics {
    Бог е Лю -- бов, | Бог е Лю -- бов, | Бог е Лю -- бов, Лю -- |
    бов, Лю -- бов  | веч -- на, | "без - гра" -- нич -- на, |
    пъл -- на | със_Жи -- вот, "Жи-вот на" | бла -- ги -- я Бо -- жи  Дух. |
    Дух на бла -- гост -- та, | Дух на све -- тост -- та, | Дух на пъ -- лен Мир и |
    Ра -- дост за вся -- ка ду | ша за вся -- ка ду -- | ша. Ний щe | хо -- дим "в ͜ то" -- я |
    път  на Свет -- ли -- | на -- та, на Свет -- ли -- | на -- та, на Свет -- ли | на -- та, "в ͜ ко" -- |
    я -- то ца -- ру -- ва | Бо -- жи -- я -- та Лю -- бов, | Бо -- жи -- я -- та Лю -- бов, |
    Бо -- жи -- я -- та Лю -- бов, | Бо -- жи -- я -- та Лю -- | бов. Ний ще | бов.
  }
  
  \addlyrics {
    Bog e Lyu -- bov, | Bog e Lyu -- bov, | Bog e Lyu -- bov, Lyu -- |
    bov, Lyu -- bov  | vech -- na, | "bez - gra" -- nich -- na, |
    pal -- na | sas_Zhi -- vot, "Zhi-vot na" | bla -- gi -- ya Bo -- zhi  Duh. |
    Duh na bla -- gost -- ta, | Duh na sve -- tost -- ta, | Duh na pa -- len Mir i |
    Ra -- dost za vsya -- ka du | sha za vsya -- ka du -- | sha. Niy shte | ho -- dim "v ͜ to" -- ya |
    pat  na Svet -- li -- | na -- ta, na Svet -- li -- | na -- ta, na Svet -- li | na -- ta, "v ͜ ko" -- |
    ya -- to tsa -- ru -- va | Bo -- zhi -- ya -- ta Lyu -- bov, | Bo -- zhi -- ya -- ta Lyu -- bov, |
    Bo -- zhi -- ya -- ta Lyu -- bov, | Bo -- zhi -- ya -- ta Lyu -- | bov. Niy shte | bov.
  }
  
  \header {
    title = "Бог е Любов / Bog e Lyubov"
  }
}
} % bookpart