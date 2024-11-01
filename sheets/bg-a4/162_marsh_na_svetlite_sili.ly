\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"
\bookpart {
  \label #'ref162
  \tocItem \markup "Марш на светлите сили"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }


  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Moderato" 4 "72"
      \autoBeamOff
      c'8 \p [<e'
      c'>8]   <e'
      c'>8  [g8] | % 2
      c'8  [<e'
      c'>8]  <e'
      c'>8  [g8] | % 3
      b8  [<d'
      b>8]   <d'
      b>8 [g8] | % 4
      b8  [<d'
      b>8] <d'
      b>8 [g8] \break | % 5
      \acciaccatura { g16 [( a16 b16 ]} c'8 ) [<e'
      c'>8] <e'
      c'>8 [g8] | % 6
      c'8 [<e'
      c'>8]  <e'
      c'>8  [g8] | % 7
      b8 [<d'
      b>8] <d'
      b>8 [g8] | % 8
      b8 [ <d'
      b>8] <d'
      b>8 [g8] \break | % 9
      g8. [g16] a8. [g16] |
      b8 b4 b8 | % 11
      g8. [g16] a8. [g16] | % 12
      c'8 c'4 c'8 \bar "||"
      \key g \minor c'4 g'4 ( \break | % 14
      g'4 ) g'16 [( f'16 es'16 d'16 )] | % 15
      c'8 [es'8] c'8 [es'8] | % 16
      c'8 [es'8] f'16 [( es'16 d'16 c'16 )] | % 17
      bes8 [d'8] bes8 [d'8] \break | % 18
      bes8 [d'8] es'16 ([ d'16 c'16 bes16 ]) | % 19
      a8 [d'8] a8 [d'8] |
      a8 [d'8] g16 ([ a16 bes16 a16 ]) | % 21
      g8 g4 g8 \bar "||"
      \break | % 22
      \time 5/4
      \bar ".|:-||"  \repeat volta 2 {
        d'8 d'4 d'4 d'8 bes'8[ \acciaccatura { a'16 ( [bes'16] } a'8] ) g'8
        [es'8] | % 23
        d'8 d'4 d'4 d'8 bes'8[ \acciaccatura { a'16 ( [bes'16] } a'8] ) g'8
        [es'8] \break | % 24
        d'8 d'4 d'4 d'8 c'8 [d'8] es'8 [g'8] | % 25
        d'8 d'4 d'4 d'8 c'8 [d'8] es'8 [g'8] \break | % 26
        \time 3/4  d'8 d'4 d'4 d'8 | % 27
        g8 [a8] bes8 [a8] c'8 [bes8] |  % 28
      }
      \alternative {
        {
          \acciaccatura { bes16 ( [c'16] } bes8 ) [a8] a8 [g16 a16] bes8 [a8]
          \break | % 29
          g8 g4 g4 g8     |
        }
        {
          \acciaccatura { bes16 ( [c'16] } bes8 ) [a8] g16 [a16 bes16 a16] g8 g8 | % 31
          g8 g4 g8 g'4 \bar "|."
        }
      }
    }

    \addlyrics {}

    \header {
      title = \titleFunc #'ref_desc_17 "Марш на светлите сили" "Marš na svetlite sili  – Marsch der lichen Mächte"
    }

    \midi{}

  } % score

  \markup \dcr-two "D.C." "con ripetizione" #6

} % bookpart
