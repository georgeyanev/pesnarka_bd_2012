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
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
 
    d'4 g'8 a'8 | b'4 e''4 | d''8 d''8 e''8 c''8 | b'2| d''4 c''8 b'8 | \break
    a'4 a'8 b'8 | c''8 c''8 b'8  a'8| b'2 | e''4 c''8 e''8 | d''4 b'8 c''8 | \break
    d''8 d''8 d''8 e''8 | d''2 | a'4 a'4 | a'4 a'4 | a'4 b'8 a'8 | g'2 | \break
    d'4 d'4 | d'4 d'4 | d'4 c''8 b'8 | a'2 \repeat volta 2 { b'4 b'4 | b'4 b'4 | \break
    b'4 e''8 d''8 | c''2 | c''4 c''4|c''4 c''4| b'4 d''8 b'8 |a'2 |\break
    a'4 b'8 a'8 | g'2|} 
    \alternative { 
      { d'4 e'8 d'8 | d'2 | d'4 c''8 b'8| a'2 } 
      { \time 4/4 \break
         \override Score.MetronomeMark #'outside-staff-priority = #599
         \override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
         \tempo "Meno mosso" 4 = 92
         d'2 e'4 d'4 | b'1 | \tempo "rit." a'2 b'4 b'4 | g'1| \bar "|." \break } 
    }
  }
  
  \addlyrics {
    Брат -- ство, е -- дин -- ство ни -- е ис -- ка -- ме, 
    зо -- ва на Лю -- бов -- та ни -- е пус -- ка -- ме, ми -- ра на Ра -- дост -- та
    ни -- е ви -- ка -- ме: благ Жи -- вот в~нас да вли -- ва -- ме,
    благ Жи -- вот в~нас да вли -- ва -- ме, благ Жи -- вот в~нас
    да вли -- ва -- ме, благ Жи -- вот в~нас да вли -- ва -- ме,
    да вли -- ва -- ме, да вли -- ва -- ме, да вли -- ва -- ме,
    да вли -- ва -- ме, да вли -- ва -- ме. 
  }

  \addlyrics {
    Brat -- stvo, e -- din -- stvo ni -- e is -- ka -- me, 
    zo -- va na Lyu -- bov -- ta ni -- e pus -- ka -- me, mi -- ra na Ra -- dost -- ta
    ni -- e vi -- ka -- me: blag Zhi -- vot v~nas da vli -- va -- me,
    blag ZHi -- vot v~nas da vli -- va -- me, blag ZHi -- vot v~nas
    da vli -- va -- me, blag ZHi -- vot v~nas da vli -- va -- me,
    da vli -- va -- me, da vli -- va -- me, da vli -- va -- me,
    da vli -- va -- me, da vli -- va -- me. 
  }
  
  \header {
    title = "Братство, единство / Bratstvo, edinstvo"
  }

} % score

  \markup \halign #-10 { 
    \column  { 
      \line  \halign #-5 { 
        \bold  { "D. C." }
      }
      \line { 
        \bold { con ripetizione }
      }
    }
  } 
} % bookpart
