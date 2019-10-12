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
    \time 3/4 \tempo "Andante" 4 = 66
    \partial 4
    \autoBeamOff
      f'8 f'8 | d'4. es'8 f' ([ g' ]) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
      c''4. b'8 c'' ([ d'' ]) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |
      d'4. es'8 f' ([ g' ]) | f'2 g'8 a' | bes'4. a'8 bes' ([ c'' ]) | d''2 es''8 es'' \break 
      \repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( a' ) |} \alternative { { bes'2 es''8 es'' } {  bes'2 \bar "|." \break } }
 }
  
  \addlyrics {
    Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
    ска, чуд -- но пре -- ме -- не -- на, пъл -- на
    с~ху -- бост май -- ска; бил -- ки и дър -- ве --
    та, в_кра -- со -- та раз -- ви -- ти, с~и -- зо
    -- бил -- на рож -- ба вся -- ко -- га по -- кри
    -- ти, с~и -- зо -- ти.    
  }

  \addlyrics {
    Mi -- lo -- sar -- di -- e -- to e gra -- di -- na ray --
    ska, chud -- no pre -- me -- ne -- na, pal -- na
    s~hu -- bost may -- ska; bil -- ki i dar -- ve --
    ta, v_kra -- so -- ta raz -- vi -- ti, s~i -- zo
    -- bil -- na rozh -- ba vsya -- ko -- ga po -- kri
    -- ti, s~i -- zo -- ti.    
  }


  \header {
    title = "Милосърдието / Milosardieto"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}


} % bookpart
