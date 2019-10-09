\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
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
    \key bes \major
    \time 2/4 
    \tempo "Moderato" 4 = 72
    \autoBeamOff
    
    g'8[f8] es8[d8] | \noBreak
    c4. c8 | \noBreak
    f8.[es16] d16[c16 d16 f16] | \noBreak
    bes,8.[bes16] bes16[bes16 bes16 bes16] | \noBreak
    es8[d8] c8[bes8] | \break
    
    a4 d4 | \noBreak
    g8.[a16] bes[a bes d] | \noBreak
    g,8[g] g r | \noBreak
    g'8.[f16] ees[d es g] | \noBreak
    c,8.[c16] c[c c c] | \break

    f8.[es16] d8[c] | \noBreak
    <d, bes'>4. <d bes'>8 | \noBreak
    ees'8.[d16] c[bes c ees] | \noBreak
    a,8.[a16] \stemUp a[a a d] | \noBreak
    g,8.[a16] bes8[a] | \noBreak
    g[d] g r | \break
    
    g8.[a16] bes8[a] | \noBreak
    g[fis] a[g] | \noBreak
    <bes, g'>2 | \noBreak
    d16[ees ees ees] ees[d ees g] | \noBreak
    d4 r8 d | \noBreak
    g4 a | \break
    
    bes16[a bes a] g8[fis] | \noBreak
    <bes, g'>2 | \noBreak \stemNeutral
    g''16([f ees d] c[bes a g]) | \noBreak
    a8[bes] c[d] | \noBreak
    es[d] d4~ | \noBreak
    d8[bes] g[d] \break
    
    g'8.[a16] bes8[a] | \noBreak
    a[g] g[fis] | \noBreak
    g2~ | \noBreak
    g8[f] ees[d] | \noBreak
    d[c] d4 ~ | \noBreak
    d8[c] bes8.[a16] | \break
    
    bes8[c] d[ees] | \noBreak
    d[cis] d4~ | \noBreak
    d8[c!] bes[a] | \noBreak
    fis8.[g16] a8[g] | \noBreak
    bes[a] c[bes] | \barNumberCheck #40 \noBreak
    a[g] fis[a] | \break
    
    g4 bes8.[bes16] | \noBreak
    bes4 a8[bes] | \noBreak
    c16[bes a g] fis8[g] | \noBreak
    a8.[bes16] a8[d,16 d] | \noBreak
    d2 | \noBreak
    bes'8.[bes16] bes8[bes] | \break
    
    bes4 c8([bes]) | \noBreak
    a[bes] c[d] | \noBreak
    f[ees] d8.[c16] | \barNumberCheck #50 \noBreak
    d2~ | \noBreak
    d8[bes] g[d] | \noBreak
    g8.[g16] g8[g] | \break 
    
    g4. fis8 | \noBreak
    g8.[a16] bes8[a] | \noBreak
    \acciaccatura { bes } a[g] g[fis] | \noBreak
    g[ees] d4~ | \noBreak
    d2 | \noBreak
    f'8[g] g[g] | \break
    
    f4 ees8[f] | \noBreak
    g[g] f[ees] | \noBreak
    \acciaccatura { f } ees[cis] d4~ | \noBreak
    d r | \noBreak
    c!8.[c16] c8[c] | \noBreak
    c4. bes16[a] | \break
    
    bes8[c] d[ees] | \noBreak
    d2 | \noBreak
    a8.[a16] a8[a] | \noBreak
    a4. c8 | \noBreak
    \acciaccatura { c } bes[a] g[fis] | \noBreak
    a[g] g4~ | \noBreak
    g r | \break
    
    d'2\trill | \noBreak
    cis8[d] ees[d] | \noBreak
    d2~ | \noBreak
    d2 | \noBreak
    g2\mf ~ | \noBreak
    g2 | \noBreak
    fis8\f[g] a[g] | \break
    
    g2~ | \noBreak
    g4. a8 | \noBreak
    bes2 | \noBreak
    a8[g] fis[g] | \noBreak
    a\<[g] g4 ~ | \noBreak
    g2 | \noBreak
    a4. bes8\! | \break
    
    c2 | \noBreak
    \acciaccatura { c8 } \tempo "rit." bes \tenuto[a\tenuto] bes\tenuto[c\tenuto] \noBreak
    d2\f \noBreak
    d,8^\markup{ \italic {largamente} }\p[ees16 d] cis8[d]  | \noBreak
    \acciaccatura { c' } bes4. a8 | \noBreak
    <g bes,>4 <g bes,>8.[<g bes,>16] | \noBreak
    <g,, d' bes' g'>8 r r4 | \break
  
    \tempo "a tempo"
    g'8.\p[f16] ees[d ees g] | \noBreak
    c,8.[c16] c[c c c] | \noBreak
    f8.[ees16] d8[c] | \noBreak
    <bes d>8\staccato r  <bes d>8\staccato r | \noBreak
    <bes d>8\staccato r  <bes d>8\staccato r | \break
  
    ees8.[d16] c[bes a d] | \noBreak
    a8.[a16] a[a a a] | \barNumberCheck #100 \noBreak
    d8.[c16] bes8[a] | \noBreak
    g r g r | \noBreak
    g r g r | \break
    
    d'4\mf^\markup{ \italic {largamente} } es8\<[fis] | \noBreak
    <bes, g'>4 bes'8.[a16]\! | \noBreak
    <bes, g'>8 r <bes g'>[<bes g'>] \noBreak
    <bes g'> r <g d' bes' g'> r | \bar "|."
  }

  \header {
    title = "Мирът иде / Mirat ide"
  }

} % score
} % bookpart