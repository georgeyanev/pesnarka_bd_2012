\version "2.22.1"

\include "include/globals.ily"
\bookpart {
  \paper {
    % the system system spacing is custom here so do not include bookpart-paper.ily
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 10))
  }

  \header {
    tagline = ##f
  }

  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff

      a4 dis8([e]) e2 | \noBreak
      f8([e]) f[gis] f4 e | \noBreak
      \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
      e,16([f) gis a] f4.. e16 a([gis f e]) | \break

      dis4 c b a | \noBreak
      gis2. r4 | \noBreak
      \time 5/4 e'4 dis a'8([gis]) f[e] d([e]) | \time 2/4 \break

      c2 | \noBreak
      \time 5/4 dis16([e) f e] gis8[f] e4..( e16\tenuto) a([gis f e]) | \noBreak
      \time 4/4 \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \break

      \tuplet 6/4 { gis,16 ^\markup { \large \italic "poco a poco accelerando"} ([a gis f e dis]) } \tuplet 6/4 { gis([a gis f e dis]) } \tuplet 6/4 { gis([a gis f e dis]) } \tuplet 6/4 { gis ^\markup \italic "rit." ([a gis f e dis]) } | \noBreak
      \time 4/4 \acciaccatura { dis8 } e2 \acciaccatura { dis'8 } e2 | \noBreak
      a,,8^\markup { \large \italic "a tempo"}_\markup \italic { risoluto } ([b]) c[dis] c4(b) \time 5/4 \break

      \acciaccatura { a8 } fis'4.\fermata( \tuplet 3/2 { e16[fis e]) } dis8[c] b2 | \noBreak
      c16 ^\markup { \large \italic "poco a poco accelerando"} ([dis c b]) c([dis c b]) c([dis c b]) b8. ^\markup \italic "rit." (a16) a4 | \time 4/4 \break

      \repeat volta 1 {
        e''16 ^\markup { \large \italic "a tempo"} [(f) gis a] b8 d,4. \acciaccatura { c16[d] } c4 | \noBreak
        \time 2/4 b2 | \noBreak
        \time 5/4 a,4 gis f'8.([e16]) e2 | \noBreak
        \time 4/4 d16([e) f a] gis4 f e8.([d16]) | \time 2/4 \break

        e2 | \noBreak
      }
      \set Score.doubleRepeatType = #":|.|:"
      \repeat volta 1 {
        \time 3/4 \tuplet 3/2 { a8^\markup { \large \italic "poco a poco accelerando"} ([f e] } \tuplet 3/2 { a[f e] } \tuplet 3/2 { a[f e]) } | \noBreak
        d4 d2 \noBreak
        \tuplet 3/2 { a'8\p([ f e] } \tuplet 3/2 { a[f e] } \tuplet 3/2 { a^\markup \italic "rit." [f e]) } | \noBreak
        dis4 e2
      }
      \time 9/16 \break
      \tempoFunc "Allegretto" 8 "108"
      dis16[dis] e[e] e8 a16[gis f] | \noBreak
      \acciaccatura { f[gis] } f[e] f[gis!] f8 e16[e e] | \noBreak
      e[f] gis[a] \acciaccatura { f[gis!] } f8 e16[e gis] | \break

      \acciaccatura { f[gis] } f[e] dis[e] c8 c16[c c] | \noBreak
      \repeat volta 1 {
        b[c] dis[e] \acciaccatura { c[dis!] } c8 b16[b dis] | \break

        \acciaccatura { c[dis!] } c[b] b[gis]  a8 a16[a a] | \noBreak
      }
      \repeat volta 1 {
        g![c] b[g] a8 a16[a a] | \noBreak
        g[c] b[g] a8 a16[a a] | \bar "|."
      }
    }

    \header {
      title = \titleFunc "Берхан Ази" "Berhan Azi"
    }
    \midi { }
  } % score
} % bookpart
