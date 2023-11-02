\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref253
  \tocItem \markup "Марш на светлите сили II"
  \include "include/bookpart-paper.ily"
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
      Ду -- хо -- ве на Свет -- ли -- на -- та, стъп -- ват ле -- ко в~ти -- ши -- на -- та.

      Сли --  зат те в~ре -- ди -- ци бе -- ли от ви -- со -- ки -- те пре -- де -- ли.

      Ид  -- ват на Зе -- мя -- та, на хо -- ра -- та в~сър -- ца -- та

      и е -- то: __ раж -- дат се и -- де -- и, свет --  ли, но -- ви,

      как да "смък-" -- нем теж -- ки -- те о -- ко -- ви на

      "враж-" -- ди без -- смис -- ле -- ни, ве -- ков -- ни, в~мир да за -- жи -- ве -- ем



      и все -- ки ще ра -- бо -- ти "с~ра-" -- дост на Бо -- жест -- ве -- на -- та ни -- ва,

      ще ца -- ру -- ва веч -- на "мла-" -- дост, ня -- ма ни -- кой да у -- ми -- ра,

      в~мир, в~Лю -- бов ще за -- жи -- ве -- ем

      всич -- ки друж -- но и ще "про-" -- сла -- вим Бо -- га с~пе -- сен. Свет -- ли -- на -- та!

    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      "2.  Но-"   -- ви пе -- сни ще за -- пе -- ем, за хар -- мо -- ни -- я все -- "мир-" -- на.

      Нов жи -- вот ще за -- жи -- ве -- ем, тя -- ло -- то ни ще про -- свет -- не

      и на -- кра -- я ще по -- лит -- нем във е -- фи -- ра кат' ду -- хо -- ве на


      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \header {
      title = \titleFunc "Марш на светлите сили II" "Marš na svetlite sili II"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C. con ripetizione"



} % bookpart

% Più mosso
%
