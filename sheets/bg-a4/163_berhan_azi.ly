\version "2.24.4"

\include "include/globals.ily"
\bookpart {
  \label #'ref163
  \tocItem \markup "Берхан-Ази"
     \include "include/bookpart-paper.ily"

  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key a \minor
      \time 4/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff

      a4 dis8([e]) e2 | \noBreak
      f8([e]) f[gis] f4 e | \noBreak
      \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
      e,16([f) gis a] f4.. e16 a([gis f e]) | \break

      dis4 c b a | \noBreak
      gis2. r4 | \noBreak
      \time 5/4 e'4 dis a'8([gis]) f[e] d([e]) | \time 2/4 \noBreak

      c2 | \break
      \time 5/4 dis16([e) f e] gis8[f] e4..( e16\tenuto) a([gis f e]) | \noBreak
      \time 4/4 \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \break

      \tuplet 6/4 { gis,16 ^\markup { \huge \italic "poco a poco accelerando"} ([a gis f e dis]) } \tuplet 6/4 { gis([a gis f e dis]) } \tuplet 6/4 { gis([a gis f e dis]) } \tuplet 6/4 { gis ^\markup \huge \italic "rit." ([a gis f e dis]) } | \noBreak
      \time 4/4 \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
      a,,8^\markup { \huge \italic "a tempo"}_\markup \huge \italic { risoluto } ([b]) c[dis] c4(b) \time 5/4 \break

      \acciaccatura { a8 } fis'4.\fermata( \tuplet 3/2 { e16[fis e]) } dis8[c] b2 | \noBreak
      c16 ^\markup { \huge \italic "poco a poco accelerando"} ([dis c b]) c([dis c b]) c([dis c b]) b8. ^\markup \huge \italic "rit." (a16) a4 |  \bar ".|:-|"  \time 4/4 \break


      e''16 ^\markup { \huge \italic "a tempo"} [(f) gis a] b8 d,4. \acciaccatura { c16[d] } c4 | \noBreak
      \time 2/4 b2 | \noBreak
      \time 5/4 a,4 gis f'8.([e16]) e2 | \noBreak
      \time 4/4 d16([e) f a] gis4 f e8.([d16]) | \time 2/4 \break

      e2 | \bar ":|.|:" \noBreak

      %\set Score.doubleRepeatType = #":|.|:"

      \time 3/4 \tuplet 3/2 { a8^\markup { \huge \italic "poco a poco accelerando"} ([f e] } \tuplet 3/2 { a[f e] } \tuplet 3/2 { a[f e]) } | \noBreak
      d4 d2 \noBreak
      \tuplet 3/2 { a'8\p([ f e] } \tuplet 3/2 { a[f e] } \tuplet 3/2 { a^\markup \huge \raise #1.5 \italic "rit." [f e]) } | \noBreak
      dis4 e2 | \bar ":|."

      \time 9/16 \break
      \tempoFunc "Allegretto" 8 "108"
      dis16[dis] e[e] e8 a16[gis f] | \noBreak
      \acciaccatura { f[gis] } f[e] f[gis?] f8 e16[e e] | \noBreak
      e[f] gis[a] \acciaccatura { f[gis] } f8 e16[e gis] | \break

      \acciaccatura { f[gis] } f[e] dis[e] c8 c16[c c] | \bar ".|:" \noBreak

      b[c] dis[e] \acciaccatura { c[dis] } c8 b16[b dis] | \break

      \acciaccatura { c[dis!] } c[b] b[gis]  a8 a16[a a] \bar ":|.|:" | \noBreak


      g?[c] b[g] a8 a16[a a] | \noBreak
      g[c] b[g] a8 a16[a a] | \bar ":|."

    }

    \header {
      title = \titleFunc #'ref_desc_14 "Берхан-Ази" "Berhan-Azi"
    }
    \midi { }
  } % score
} % bookpart
