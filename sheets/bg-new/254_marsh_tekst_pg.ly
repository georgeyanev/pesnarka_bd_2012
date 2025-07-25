\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref254
  \tocItem \markup "Марш на светлите сили II"
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
    #'((basic-distance . 18)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Moderato " 4 "69"

      \autoBeamOff


      c8 \p e e g, | c8 e e g, | b d d g, | b d d g, | \break

      c8 e e g, |c8 e e g, | b d d g, |  b d d g, | \break

      g8.^\p g16 a8. g16 | b8 b4 b8 | g8.^\< g16 a8. g16 |  c8 c4  \! c8 | \bar "||" \break

      \key g \minor  c4^\mf  g'4 (g4) g16 f es d |  c8\staccato es\staccato c\staccato es\staccato |\break

      c\staccato es\staccato f16 es d c | bes8\staccato d\staccato bes\staccato d\staccato | bes\staccato d\staccato es16 d c bes | a8\staccato d\staccato a\staccato d\staccato | a d g,16 a bes a | g8\staccato g4-- g8\staccato | \break

      \bar ".|:-||"  \repeat volta 2 {

        \time 5/4 d'8\staccato^\mf d4 d4 d8\staccato bes'8 a g\staccato es\staccato |

        d8^\p  d4 d4 d8 bes'8 a8 g es | \break

        d8^\mf  d4  d4 d8 c d es g |

        d^\mp  d4 d4 d8 c8 d8 es g |

        \time 3/4 d8 d4 d4 d8 | \time 2/4 g8 a bes a |c bes bes a | \break

        a g16 a bes8 a8 |
        \time 3/4
      }

      \alternative {
        { g8 g4 g4 g8}
        { g8 g4 g4 g8\bar "|." }
      }


    }

    \addlyrics {
      \set stanza = "1. " Ду -- хо -- ве на Свет -- ли -- на -- та стъп -- ват ле -- ко в~ти -- ши -- на -- та.

      Сли --  зат те в~ре -- ди -- ци бе -- ли от ви -- со -- ки -- те пре -- де -- ли.

      Ид  -- ват на зе -- мя -- та, на хо -- ра -- та в~сър -- ца -- та

      и е -- то: __ раж -- дат се и -- де -- и, свет --  ли, но -- ви,

      как да смък -- нем теж -- ки -- те о -- ко -- ви на

      враж -- ди без -- смис -- ле -- ни, ве -- ков -- ни, в~мир да за -- жи -- ве -- ем



      и все -- ки ще ра -- бо -- ти с~ра -- дост на Бо -- жест -- ве -- на -- та ни -- ва,

      ще ца -- ру -- ва веч -- на мла -- дост, ня -- ма ни -- кой да у -- ми -- ра,

      в~мир, в~Лю -- бов ще за -- жи -- ве -- ем

      всич -- ки друж -- но и ще про -- сла -- вим Бо -- га с~пе -- сен. Свет -- ли -- на -- та!

    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      \set stanza = "2. " Но   -- ви пес -- ни ще за -- пе -- ем за хар -- мо -- ни -- я все -- мир -- на.

      Нов жи -- вот ще за -- жи -- ве -- ем, тя -- ло -- то ни ще про -- свет -- не

      и на -- кра -- я ще по -- лит -- нем във е -- фи -- ра кат' ду -- хо -- ве на


      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc #'ref_desc_12 "Марш на светлите сили II" "Marš na svetlite sili II"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C. con ripetizione"



} % bookpart

% Più mosso
%
