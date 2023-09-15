\version "2.24.2"

\include "include/globals.ily"

\bookpart {
  \label #'ref146
  \tocItem \markup "Българска рапсодия"
   \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 11)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 7/16
      \tempoFunc "Maestoso" 8 "160"
      \autoBeamOff
      g'8^\accent a16([b]) c8. ~ | \noBreak
      c4 ~ c8. | \noBreak
      \acciaccatura {g8} d'^\accent e c8. | \noBreak
      \acciaccatura {g8} d'^\accent e c8. | \break
      b8 d a([g16]) | \noBreak

      b4 b8. ~| b4 ~ b8. | \noBreak
      g8 a16([b]) c8. | \noBreak
      b8 d a8. | \noBreak
      a4 a8. ~ | a4 ~ a8. | \bar "||" \break

      g'8\accent^\mf  a16[(b)] c8.( | \noBreak
      c4)(c8.) | \noBreak
      \acciaccatura {g8} d'8\accent e c8. | \noBreak
      \acciaccatura {g8} d'8\accent e c8. | \noBreak
      b8 d a([g16]) | \break
      b8 ~ b8 b8. ~ | \noBreak
      b4 ~ b8. | \noBreak
      g8 \accent a16 ([b]) c8. | \noBreak
      b8\accent d a8. | \noBreak
      a4 a8. ~ | \noBreak
      a4 ~ a8. | \bar "||" \break

      g,8 a16 \stemUp b \stemNeutral c8 d16 | \noBreak
      e8 e e8. ~ | \noBreak
      e4 ~ e8. | \noBreak
      d8 e16 d16 c8 b16 | \noBreak
      d8 d d8. ~ | \noBreak

      d4 ~ d8. | \break

      d8 e16 d16 c8 b16 | \noBreak
      d8 c8  c8. \( |\noBreak
      c8( b) ~ b8. ~ | \noBreak
      b4 ~ b8. \) | \break
      g8 a16 \stemUp b \stemNeutral c8 d16 | \noBreak
      e8 d c8([b16]) | \noBreak

      d8 c b8. | \noBreak
      c8 b a g16 | \noBreak
      a4 a8. ~| \noBreak
      a4 ~ a8. | \bar "||" \break
      \tempo "Allegro grazioso" d8^\accent e e e16 | \noBreak
      e8^\accent e e d16 | \noBreak

      g8^\accent f e d16 | \noBreak
      d8^\accent e c b16 | \noBreak
      g8^\accent a16([b]) c8. | \break
      b8^\accent d a g16 | \noBreak
      b4~ b8. ~ | \noBreak
      b4 ~ b8. | \noBreak
      \tempo "rit." g8^\accent a16([b]) c8. | \noBreak

      b8^\accent d a8. | \noBreak
      a4 a8.\prall ~ | \noBreak
      a4 ~ a8. | \bar "||" \break
      \tempo "a tempo" d8\accent e e e16 | \noBreak
      e8\accent e e d16 | \noBreak
      g8\accent f e d16 | \noBreak

      e8\accent d c b16 | \noBreak
      c8\accent d e d16 | \break
      e8\accent d c b16 | \noBreak
      a8^\accent \stemUp b \stemNeutral c d16 | \noBreak

      e8\accent d c b16 | \noBreak
      c8\accent d \stemUp b \stemNeutral g16 | \noBreak
      a4 a8. | \bar "||"  \break
      g'8\f^\accent a f e16 | \noBreak
      e8^\accent g f d16 | \noBreak

      e4 \prall e8 (d16) | \noBreak
      e8^\accent e e8. | \noBreak
      g8^\accent a f e16 | \break
      e8^\accent g f d16 | \noBreak
      e8\prall~ e8 e8 (d16) | \noBreak
      e8^\accent e e d16  |  \noBreak

      \bar ".|:"
      c8 ^\markup{ \dynamic f } ^\mp d^\markup{\italic{при повторението} } e d16 | \noBreak
      e8 d c b16 | \break
      a8 b c d16 | \noBreak
      e8 d c b16 | \noBreak
      \tempo "rit." c8 d b g16 | \noBreak
      a4 a8. | \break \bar ":|."

      \time 7/8  \tempoFunc "Andante" 8 "150" a4 (d8[e]) f8([ g f]) | e4 ~ e4 ~ e4. | \noBreak

      c4 \acciaccatura{ b16[c] } \stemUp b4 \stemNeutral a8 gis a8 |  b8([c b])  e,2 | \break

      e'8\tenuto f\tenuto g\tenuto  g4 a4 |  \noBreak

      \acciaccatura {f16[g]}  f8 e g  f4\tenuto e4\tenuto | \noBreak
      a4. d,2 | g4 f e d8 |   c b c4 d4. | \break e4 ~ e4 ~ e4. | \noBreak

      \tempo "rit." a,4 b c4. | \time 9/8 b4 d c b4. | \noBreak
      \time 7/8
      a4 ~ a4 ~ a4. ~ | a4 ~ a4 ~ a4. | \bar "||"  \break
      \tempo "a tempo" a4  d8 e  f([ g f]) | e4. ~ e4 ~ e4 |  \noBreak

      c'4 \acciaccatura{ b16[c] } b4 a8 [gis  a] | b8 ( [c8 b]) e,4 ~ e4 | \break


      e8\tenuto[f\tenuto g\tenuto] g4 a4 | \noBreak
      \acciaccatura { f16[g] } f8[e g] f4 e | \noBreak

      a4. d,4 ~ d4 | \noBreak
      g4 f e d8 | \noBreak

      c [b\tenuto] c4\tenuto d4.\tenuto| \break e4 e4 ~ e4. | 
      a,4 b c4. | \time 9/8 b4 d c b4. | \noBreak
      \time 7/8 a4.~ ( a4 ~ a4) | a'4. ~ a4 ~ a4 \fermata \breathe | \bar "|" \time 2/4 \break    \bar ".|:-||"

      \tempoFunc "Vivace" 4 "160"  c8_\markup{ \italic {ordinario} }\accent[b] a[g] | \noBreak
      a\accent[g] f[e] | \noBreak
      g\accent[f] e[d] | \noBreak
      e4\prall e | \noBreak \bar ":|."

      e8\tenuto[d]\tenuto c\tenuto[b]\tenuto | \noBreak
      c\tenuto[d]\tenuto e\tenuto[d]\tenuto | \break

      c\tenuto[b]\tenuto d\tenuto[c]\tenuto | \noBreak
      b\tenuto[g]\tenuto a4\tenuto~ | \noBreak
      a8\tenuto[b]\tenuto c\tenuto[d]\tenuto | \noBreak
      e\tenuto[d]\tenuto c\tenuto[b]\tenuto | \noBreak
      d\tenuto[c]\tenuto b\tenuto[g]\tenuto | \noBreak
      a2\tenuto | \noBreak
      a4\tenuto a\tenuto | \break \bar ".|:-|"


      c'8\staccato[b]\staccato a\staccato[g]\staccato | \noBreak
      a\staccato[g]\staccato f\staccato[e]\staccato | \noBreak
      g\staccato[f]\staccato e\staccato[d]\staccato | \noBreak
      e4\prall e | \noBreak  \bar ":|."

      e8\staccato[d]\staccato c\staccato[b]\staccato | \noBreak
      c[d] e[d] | \break

      c[b] d[c] | \noBreak
      b[g] a4~ | \noBreak
      a8[b] c[d] | \noBreak
      \tempo "poco a poco rit." e [d] c[b] | \noBreak
      d [c]  b^\>[g]  | \noBreak
      a2 | \noBreak
      a4 a \! \fermata \breathe | \bar "||" \time 3/4 \break

      \tempoFunc "Andante" 4 "50" \acciaccatura { dis8\mp } e2 d16\tenuto([c\tenuto b\tenuto c\tenuto]) \breathe | \noBreak
      \acciaccatura { dis8 } e2 d16\tenuto([c\tenuto  b\tenuto  c\tenuto]) \breathe | \noBreak
      \acciaccatura { dis8 } e2 d16\tenuto([c\tenuto b\tenuto g\tenuto]) | \noBreak
      a4. b8 c4 \break

      d8\tenuto([e\tenuto]) \acciaccatura { d16\tenuto([e\tenuto] } d8\tenuto)[c\tenuto] b\tenuto [g\tenuto] | \noBreak
      a2 a4 \fermata \bar "||" \noBreak
      \acciaccatura { dis8 } e2 d16\tenuto c\tenuto b\tenuto c\tenuto \breathe | \noBreak
      \acciaccatura { dis8 } e2 d16\tenuto c\tenuto b\tenuto c\tenuto  \breathe | \break

      \acciaccatura { dis8 } e2 d16 c b g | \noBreak
      a4. b8 c4 | \noBreak
      d8 e d c b\tenuto g\tenuto | \noBreak
      a2 a4 \fermata | \noBreak \bar "||" \time 2/4 \break

      \tempoFunc "Vivo" 4 "80" g16^\staccato[c^\staccato b^\staccato g^\staccato] a8^\staccato ^\accent[a^\staccato ^\accent] | \noBreak
      g16^\staccato[c^\staccato b^\staccato g^\staccato] a8^\staccato^\accent[a^\staccato^\accent] | \noBreak
      \acciaccatura { fis'8 } g[c,] \acciaccatura { dis } e[d16 c] | \noBreak
      \acciaccatura { fis8 } g[c,] \acciaccatura { dis } e[d16 c] | \break

      b16[c d e] d[c b g] | \noBreak
      a8.[g16] a[b c d] | \noBreak
      e[f e d] c[d b g] | \noBreak
      a4 a8^\accent a^\accent \break

      \acciaccatura { fis'8 } g[c,] \acciaccatura { dis } e[d16 c] | \noBreak
      \acciaccatura { fis8 } g[c,] \acciaccatura { dis } e[d16 c] | \noBreak
      b[c d e] d[c b g] | \noBreak
      a8.[g16] a[b c d] | \break

      e[f e d] c[d b g] | \noBreak
      \tempo "  rit." a4\>  a8 a \!  \fermata | \bar "||" \noBreak
      \tempoFunc "Allegretto" 4 "120" d^\accent e e e | \noBreak
      e4 e | \noBreak
      d8^\accent c c c | \break

      c4 c | \noBreak
      d8^\accent e e e | \noBreak
      e4 e | \noBreak
      d8^\accent c c c | \noBreak
      c4 c | \break \bar ".|:-|"
      b8^\staccato g^\staccato a^\staccato b^\staccato | \noBreak
      c4 c | \noBreak
      c8^\staccato b^\staccato b^\staccato g^\staccato | \noBreak
      a4 a |
      \time 3/4 \break \bar ":|."

      \override TupletBracket.positions = #'(3 . 3)
      \tempo "Tempo"
      \tuplet 3/2 8 { c16\>\mp([b g a b g]) c16([b g a b g]) c16([b g) b(a g\!\p])  } | \noBreak
      \tempo"rit." a4 a2 \fermata | \bar "||" \time 7/16 \break

      \tempoFunc "A tempo" 8 "180" g8\f^\accent a16([b]) c8.~ | \noBreak
      c4~ c8. | \noBreak
      \acciaccatura { g8 } d'^\accent e c8. | \noBreak
      \acciaccatura { g8 } d'^\accent e c8. | \noBreak
      b8 d a([g16]) | \break
      b4 b8. ~ | b4 ~ b8. |\noBreak
      g8 a16([b]) c8. | \noBreak
      b8 d a8. | \noBreak
      a4 a8. ~ | a4 ~ a8. \bar "||" \break
      g'8\mf\accent a16([b]) c8.~ | \noBreak
      c4~ c8. | \noBreak
      \acciaccatura { g8 } d'8\accent e c8. | \noBreak

      \acciaccatura { g8 } d'8\accent e c8. | \noBreak
      b8 d a[g16]| \break
      b4 b8. ~ | b4 ~ b8. | \noBreak
      g,8^\accent a16([b]) c8. | \noBreak
      b8^\accent d a8. \tempo "rit." | \noBreak
      a4 a'8. ~ | \noBreak
      a4 ~ a8. \fermata | \bar "|."
    }

    \addlyrics {
      Там го -- ре __ край из -- во -- ра срещ -- нах мо -- ма за --
      смя -- на, __ там го -- ре "срещ-" -- нах Ли -- ля -- на. __ ""
      \repeat unfold 21 { \skip 1 }
      Из -- "во-" -- рът стру -- и, из -- ви -- ра __ и "чис-" -- ти во -- ди раз -- ли -- ва, __
      пла -- "нин-" -- ска пе -- сен раз -- низ -- ва. __
      \repeat unfold 1 { \skip 1 }
      Mо -- "ма-" -- та мен -- ци на -- ли -- ва, __
      "в~пе-" -- сен -- та ти -- хо се "за-" -- слуш -- ва. __ ""
      \repeat unfold 31 { \skip 1  }
      Ще о -- ти -- да та -- мо го -- ре, ще о -- ти -- да
      "в~пла-" -- ни -- на -- та, чис -- ти во -- ди да по -- гле -- дам, ти -- ха пе -- сен
      да по -- слу -- шам, ще о -- ти -- да та -- мо.
      \repeat unfold 27 { \skip 2 }
      Чис -- ти во -- ди да по -- гле -- дам, ти -- ха пе -- сен да по -- слу -- шам,
      ще о -- ти -- да та -- мо. Ли -- ля -- но, __
      цве -- те ра -- но в~гра -- ди -- на, __ а -- ко таз пе -- сен,
      Ли -- ля -- но, не чу -- я, ах, __ от таз во -- да а -- ко не пи -- я, __
      скръб ще ми пъл -- ни сър -- це -- то. __ ""
      \repeat unfold 97 { \skip 1 }
      Ли -- "ля-" -- но "мо-" -- ме, ти "в~пла-" -- "ни-" -- "на-" -- та
      там го -- ре ще ме за -- ве -- деш, из -- во -- рът де -- то из -- ви -- ра.
      \repeat unfold 30 { \skip 1 }
      Го -- ре "в~пла-" -- ни -- на -- та, "Слън-" -- це дей о --
      гря -- ло сред тре -- ви зе -- ле -- ни, сред цве -- тя за -- сме -- ни.
      Го -- ре в~пла -- ни -- на -- та, Слън -- це дей о -- гря -- ло.
      \repeat unfold 5 { \skip 1 }
      Там го -- ре __ край из -- во -- ра "срещ-" -- нах мо -- ма зас -- мя -- на, __
      там го -- ре "срещ-" -- нах Ли -- ля -- на. __ ""
      \repeat unfold 13 { \skip 1 }
      Там го -- ре "срещ-" -- нах Ли -- ля -- на. __ ""
    }

    \header {
      title = \titleFunc "Българска рапсодия" "Bălgarska rapsodija"
    }

    \midi{}

  } % score
  

} % bookpart
