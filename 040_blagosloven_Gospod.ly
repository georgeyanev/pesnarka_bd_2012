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
      \omit TimeSignature
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key f \major
    \tempo "Andante" 4 = 56 - 58
    \autoBeamOff
    
    \time 8/4 c'4 f'8. g'16 a'4 d'' c'' a' c''2 | \bar "!" c''4 c'' c'' c''4. d''8 c''2 r4 | \bar "!" \break 
    g'4 g'8. g'16 g'4 a' bes'2 bes' | \bar "!" bes'4 d'' d'' d'' c''4. bes'8 a'2 | \bar "!" \break  
    g'4 g' g' g' g'4. a'8 bes'2 | \bar "!" a'4 a' a' a' a'4. bes'8 c''2 | \bar "!" \break 
    d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 | \bar "!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 | \bar "|."
  }
  
  \addlyrics {
    Бла -- го --
    сло -- вен Гос -- под Бог наш на всич -- ки ве
    -- ко -- ве; бла -- го -- сло -- вен Ба -- ща наш
    на Свет -- ли -- те ду -- хо -- ве, на Свет --
    ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
    -- хо -- ве, на Свет -- ли -- те ду -- хо -- ве,
    на Свет -- ли -- те ду -- хо -- ве.
  }
  
  \header {
    title = "Благословен Господ / Blagosloven Gospod"
  }

} % score

  \markup \halign #-34 {
    \raise #3 \bold  { "D. C." }
  }

} % bookpart
