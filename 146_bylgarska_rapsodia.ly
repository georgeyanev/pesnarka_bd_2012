\version "2.24.0"

\include "include/globals.ily"

\bookpart {
  \label #'ref146
  \tocItem \markup "Българска рапсодия – Bylgarska rapsodia"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 7/16
      \tempoFunc "Andante maestoso" 8 "152"
      \autoBeamOff
      g8^\accent a16([b]) c8.( | \noBreak
      c4)(c8.) | \noBreak
      \acciaccatura {g8} d'^\accent e c8. | \noBreak
      \acciaccatura {g8} d'^\accent e c8. | \break
      b8 d a([g16]) | \noBreak

      b4 b8.\fermata | \noBreak
      g8 a16([b]) c8. | \noBreak
      b8 d a8. | \noBreak
      a4 a8.\fermata | \bar "||" \break

      g''8\accent a16[b] c8.( | \noBreak
      c4)(c8.) | \noBreak
      d8\accent e c8. | \noBreak
      d8\accent e c8. | \noBreak
      b8 d a([g16]) | \break
      b4 b8. | \noBreak
      g8\accent a16[b] c8. | \noBreak
      b8\accent d a8. | \noBreak
      a4 a8. | \bar "||" \break

      g,8 a16 \stemUp b \stemNeutral c8 d16 | \noBreak
      e8 e e8. | \noBreak
      d8 e16 d16 c8 b16 | \noBreak
      d8 d d8.\fermata | \break

      d8 e16 d16 c8 b16 | \noBreak
      d8 c8 c8.\fermata( | \noBreak
      b4~ b8.) | \break
      g8 a16 \stemUp b \stemNeutral c8 d16 | \noBreak
      e8 d c8([b16]) | \noBreak

      d8 c b8. | \noBreak
      c16 b a8 g8. | \noBreak
      a8 a8~ a8. | \bar "||" \break
      \tempo "Allegro grazioso" d,8^\accent e e[e16] | \noBreak
      e8^\accent e e[d16] | \noBreak

      g8^\accent f e[d16] | \noBreak
      d8^\accent e c[b16] | \break
      g8^\accent a16([b]) c8. | \noBreak
      b8^\accent d a[g16] | \noBreak
      b4~ b8.\fermata | \noBreak
      \tempo "rit." g8^\accent a16([b]) c8. | \break

      b8^\accent d a8. | \noBreak
      a4\prall~ a8. | \noBreak
      \tempo "a tempo" d'8\accent e e e16 | \noBreak
      e8\accent e e d16 | \break
      g8\accent f e d16 | \noBreak

      e8\accent d c b16 | \break
      c8\accent d e d16 | \noBreak
      e8\accent d c b16 | \noBreak
      a8^\accent \stemUp b \stemNeutral c d16 | \break

      e8\accent d c b16 | \noBreak
      c8\accent d \stemUp b \stemNeutral g16 | \noBreak
      a4 a8. | \break
      g8^\accent a f[e16] | \noBreak
      e8^\accent g f[d16] | \break

      e4\prall~ e8[d16] | \noBreak
      e8^\accent e e8. | \noBreak
      g8^\accent a f e16 | \noBreak
      e8^\accent g f d16 | \noBreak
      e4\prall~ e8[d16] | \noBreak
      e8^\accent e e d16 | \break

      \repeat volta 1 {
        c8 d e d16 | \noBreak
        e8 d c b16 | \noBreak
        a8 b c d16 | \break
        e8 d c b16 | \noBreak

        c8 d b g16 | \noBreak
        a4 a8. | \break
      }
      \time 4/4 \tempo "Lento" a4 d8([e]) \tuplet 3/2 {f16([ g f]} e4.) | \time 5/4 \noBreak
      \override TupletNumber.avoid-slur = #'ignore
      c'4\fermata \acciaccatura{ b16[c] } \tuplet 3/2 { \stemUp b8 \stemNeutral a gis} a8 \tupletUp \tuplet 3/2 { b16(c b) } e,2 | \break
      \time 4/4 \tuplet 3/2 { e8\tenuto f\tenuto g\tenuto } g2 a4 | \time 3/4 \noBreak

      \acciaccatura {f16[g]} \tuplet 3/2 { f8 e g } f4\tenuto e4\tenuto | \noBreak
      a2 d,4 | \break
      \time 4/4 g16 f e d c b c d e2 | \break

      \tempo "rit." a,8 b c4 b8 d c b | \noBreak
      a2 r2 | \break
      \tempo "a tempo" a'4  d8([e]) \tupletNeutral \tuplet 3/2 { f16([ g f] } e4.) \time 5/4 | 

      c'4\fermata \acciaccatura { b16[c] }  \tuplet 3/2 { b8[ a gis]} a8[ \tupletUp \tuplet 3/2 { b16(c b)] }  e,2 \tupletNeutral | \break
      \time 4/4 \tuplet 3/2 { e8\tenuto[f\tenuto g\tenuto] } g2 a4 | \noBreak
      \time 3/4 \acciaccatura { f16[g] } \tuplet 3/2 { f8[e g] } f4 e | \break

      a2 d,4  | \noBreak
      \time 4/4 g16[f e d] c[b\tenuto c\tenuto d\tenuto] e2 | \noBreak
      a,8[b] c4 b8[d] c[b] | \noBreak
      a2 a' | \time 2/4 \break
      \repeat volta 1 {
        \tempo "Vivo" c,8\accent[b] a[g] | \noBreak
        a\accent[g] f[e] | \noBreak
        g\accent[f] e[d] | \noBreak
        e4\prall e | \noBreak
      }
      e8[d] c[b] | \noBreak
      c[d] e[d] | \break

      c[b] d[c] | \noBreak
      b[g] a4~ | \noBreak
      a8[b] c[d] | \noBreak
      e[d] c[b] | \noBreak
      d[c] b[g] | \noBreak
      a2 | \noBreak
      a4 a | \break

      \repeat volta 1 {
        c''8\accent[b] a[g] | \noBreak
        a\accent[g] f[e] | \noBreak
        g\accent[f] e[d] | \noBreak
        e4\prall e | \noBreak
      }
      e8[d] c[b] | \noBreak
      c[d] e[d] | \break

      c[b] d[c] | \noBreak
      b[g] a4~ | \noBreak
      a8[b] c[d] | \noBreak
      e[d] c[b] | \noBreak
      d[c] b[g] | \noBreak
      a2 | \noBreak
      a4 a | \bar "||" \time 3/4 \break

      \tempo "Andante" \acciaccatura { dis,8 } e2 d16\tenuto([c\tenuto b\tenuto c\tenuto]) | \noBreak
      \acciaccatura { dis8 } e2 d16\tenuto([c\tenuto b\tenuto c\tenuto]) | \noBreak
      \acciaccatura { dis8 } e2 d16\tenuto([c\tenuto b\tenuto g\tenuto]) | \noBreak
      a4. b8 c4 \break

      d8([e]) \acciaccatura { d16[e] } d8[c] b[g] | \noBreak
      a2. \noBreak
      \acciaccatura { dis'8 } e2 d16\tenuto c\tenuto b\tenuto c\tenuto | \break
      \acciaccatura { dis8 } e2 d16\tenuto c\tenuto b\tenuto c\tenuto | \noBreak

      \acciaccatura { dis8 } e2 d16 c b g | \break
      a4. b8 c4 | \noBreak
      d8 e d c b\tenuto g\tenuto | \noBreak
      a2. | \noBreak
      a2. | \bar "||" \time 2/4 \break

      \tempo "Allegretto" g,16[c b g] a8[a] | \noBreak
      g16[c b g] a8[a] | \noBreak
      \acciaccatura { fis'8 } g[c,] \acciaccatura { dis } e[d16 c] | \noBreak
      \acciaccatura { fis8 } g[c,] \acciaccatura { dis } e[d16 c] | \break

      b16[c d e] d[c b g] | \noBreak
      a8.[g16] a[b c d] | \noBreak
      e[f e d] c[d b g] | \noBreak
      a4 a8 a \break

      \acciaccatura { fis''8 } g[c,] \acciaccatura { dis } e[d16 c] | \noBreak
      \acciaccatura { fis8 } g[c,] \acciaccatura { dis } e[d16 c] | \noBreak
      b[c d e] d[c b g] | \noBreak
      a8.[g16] a[b c d] | \break

      e[f e d] c[d b g] | \noBreak
      a4 a8 a | \bar "||" \noBreak
      d,^\accent e e e | \noBreak
      e4 e | \break
      d8^\accent c c c | \noBreak

      c4 c | \noBreak
      d8^\accent e e e | \break
      e4 e | \noBreak
      d8^\accent c c c | \noBreak
      c4 c | \break

      \repeat volta 1 {
        b8^\accent g a b | \noBreak
        c4 c | \noBreak
        c8 b b g | \noBreak
        a4 a |
      } \time 3/4 \break

      \override TupletBracket.positions = #'(3 . 3)
      \tuplet 3/2 8 { c16([b g) a(b g]) c16([b g) a(b g]) c16([b g) b(a g])  } | \noBreak
      a4 a2 | \bar "||" \time 7/16 \break

      \tempo "Andante maestoso" g8^\accent a16([b]) c8.~ | \noBreak
      c4~ c8. | \noBreak
      \acciaccatura { g8 } d'^\accent e c8. | \noBreak
      \acciaccatura { g8 } d'^\accent e c8. | \break
      b8 d a([g16]) | \noBreak
      b4 b8. | \noBreak

      g8 a16([b]) c8. | \noBreak
      b8 d a8. | \noBreak
      a4 a8. | \break
      g''8\accent a16([b]) c8.~ | \noBreak
      c4~ c8. | \noBreak
      d8\accent e c8. | \break

      d8\accent e c8. | \noBreak
      b8 d a[g16]| \noBreak
      b4~ b8. | \noBreak
      g8\accent a16[b] c8. | \noBreak
      b8\accent d a8. | \noBreak
      a4~ a8. | \noBreak
      a4~ a8. | \bar "|."
    }

    \addlyrics {
      Там го -- ре край из -- во -- ра срещ -- нах мо -- ма за --
      смя -- на, там го -- ре срещ -- нах Ли -- ля -- на.
      \repeat unfold 22 { \skip 1 }
      Из -- во -- рът стру -- и, из -- ви -- ра и чис -- ти во -- ди раз -- ли -- ва,
      пла -- нин -- ска пе -- сен раз -- низ -- ва; мо -- ма -- та мен -- ци на -- ли -- ва,
      в~пе -- сен -- та ти -- хо се за -- слуш -- ва.
      \repeat unfold 26 { \skip 1 }
      Ще о -- ти -- да та -- мо го -- ре, ще о -- ти -- да
      в~пла -- ни -- на -- та, чис -- ти во -- ди да по -- гле -- дам, ти -- ха пе -- сен
      да по -- слу -- шам, ще о -- ти -- да та -- мо.
      \repeat unfold 23 { \skip 1 }
      Чис -- ти во -- ди да по -- гле -- дам, ти -- ха пе -- сен да по -- слу -- шам,
      ще о -- ти -- да та -- мо. Ли -- ля -- но,
      цве -- те ра -- но в~гра -- ди -- на, а -- ко таз пе -- сен,
      Ли -- ля -- но, не чу -- я, ах, от таз во -- да а -- ко не пи -- я,
      скръб ще ми пъл -- ни сър -- це -- то.
      \repeat unfold 85 { \skip 1 }
      Ли -- ля -- но мо -- ме, ти в~пла -- ни -- на -- та
      там го -- ре ще ме за -- ве -- деш, из -- во -- рът де -- то из -- ви -- ра.
      \repeat unfold 30 { \skip 1 }
      Го -- ре в~пла -- ни -- на -- та, Слън -- це дей о --
      гря -- ло сред тре -- ви зе -- ле -- ни, сред цве -- тя за -- сме -- ни.
      Го -- ре в~пла -- ни -- на -- та, Слън -- це дей о -- гря -- ло.
      \repeat unfold 5 { \skip 1 }
      Там го -- ре край из -- во -- ра срещ -- нах мо -- ма зас -- мя -- на,
      там го -- ре срещ -- нах Ли -- ля -- на.
    }
    \addlyrics {
      Tam go -- re kray iz -- vo -- ra sresht -- nah mo -- ma za --
      smya -- na, tam go -- re sresht -- nah Li -- lya -- na.
      \repeat unfold 22 { \skip 1 }
      Iz -- vo -- rat stru -- i, iz -- vi -- ra i chis -- ti vo -- di raz -- li -- va,
      pla -- nin -- ska pe -- sen raz -- niz -- va; mo -- ma -- ta men -- tsi na -- li -- va,
      v~pe -- sen -- ta ti -- ho se za -- slush -- va.
      \repeat unfold 26 { \skip 1 }
      Shte o -- ti -- da ta -- mo go -- re, shte o -- ti -- da
      v~pla -- ni -- na -- ta, chis -- ti vo -- di da po -- gle -- dam, ti -- ha pe -- sen
      da po -- slu -- sham, shte o -- ti -- da ta -- mo.
      \repeat unfold 23 { \skip 1 }
      Chis -- ti vo -- di da po -- gle -- dam, ti -- ha pe -- sen da po -- slu -- sham,
      shte o -- ti -- da ta -- mo. Li -- lya -- no,
      tsve -- te ra -- no v~gra -- di -- na, a -- ko taz pe -- sen,
      Li -- lya -- no, ne chu -- ya, ah, ot taz vo -- da a -- ko ne pi -- ya,
      skrab shte mi pal -- ni sar -- tse -- to.
      \repeat unfold 85 { \skip 1 }
      Li -- lya -- no mo -- me, ti v~pla -- ni -- na -- ta
      tam go -- re shte me za -- ve -- desh, iz -- vo -- rat de -- to iz -- vi -- ra.
      \repeat unfold 30 { \skip 1 }
      Go -- re v~pla -- ni -- na -- ta, Slan -- tse dey o --
      grya -- lo sred tre -- vi ze -- le -- ni, sred tsve -- tya za -- sme -- ni.
      Go -- re v~pla -- ni -- na -- ta, Slan -- tse dey o -- grya -- lo.
      \repeat unfold 5 { \skip 1 }
      Tam go -- re kray iz -- vo -- ra sresht -- nah mo -- ma zas -- mya -- na,
      tam go -- re sresht -- nah Li -- lya -- na.
    }

    \header {
      title = \titleFunc "Българска рапсодия" "Bylgarska rapsodia"
    }

    \midi{}

  } % score

  \pageBreak
  % include foreign translation(s) of the song
  \include "lyrics_de/146_bylgarska_rapsodia_lyrics_ de.ly"

} % bookpart
