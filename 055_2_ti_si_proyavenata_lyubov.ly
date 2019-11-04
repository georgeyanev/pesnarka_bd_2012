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
    \key g \major
    \time 4/4 \tempo "Adagio" 4 = 56
    \autoBeamOff
    b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |fis'2 fis'4 | a'4 g' fis' | \break 
    e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | \break 
    e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
  }
  
  \addlyrics {
    Ти си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по -- 
    ди. Ду -- ша -- та ми коп -- неe за Твой -- та чис -- то -- 
    та. Ду -- ша -- та ми коп -- неe за Твой -- та свет -- ли -- на.
  }

  \addlyrics {
    Ti si pro -- ya -- ve -- na -- ta Lyu -- bov kam men, Gos -- po -- 
    di. Du -- sha -- ta mi kop -- nee za Tvoy -- ta chis -- to -- 
    ta. Du -- sha -- ta mi kop -- nee za Tvoy -- ta svet -- li -- na.
  }


  \header {
    title = "Ти си проявената Любов / Ti si proyavenata Lyubov"
  }

} % score

\markup \halign #-34 {
  \raise #0 \bold  { "D. C." }
}

} % bookpart
