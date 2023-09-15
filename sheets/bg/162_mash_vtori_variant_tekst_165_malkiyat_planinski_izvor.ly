\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref162_2
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



  \label #'ref165
  \tocItem \markup "Малкият планински извор"
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
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative  c'{
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Tempo di valzer" 2. "56"
      \autoBeamOff
      g'4. g8 g4 | % 2
      a2 e4 | % 3
      g2 f8 e8 | % 4
      f2. | % 5
      b2 a8  b8 | % 6
      c2  b4 \break | % 7
      b2 a8  b8 | % 8
      g2. | % 9
      g4. g8 g4 |
      e'4.  d8  c4 | % 11
      c4.  b8  b4 | % 12
      a2. \break | % 13
      g2 a8 g8 | % 14
      e2 f4 | % 15
      e2 d8 e8 | % 16
      c2. \repeat volta 2 {
        | % 17
        c'2  c4 | % 18
        b2 f4  | % 19
        a2. \break |
        g2. | % 21
        e2 e4 | % 22
        d2 d4
      }
      \alternative {
        {
          | % 23
          c2. ~ | % 24
          c2.
        }
        {
          | % 25
          c2. ~ | % 26
          c2 g'4
        }
      }
      a2 g4 \break | % 28
      f2 e8 ([ f8] ) | % 29
      g2 f4 |
      e2  c'4 | % 31
      a2  b4 | % 32
      c2 a4 | % 33
      g2. ( | % 34
      g2 )  c4
      \repeat volta 2 {
        | % 35
        d2  c4 \break | % 36
        b2 a8 [(  b8 )] | % 37
        c2. | % 38
        g2. | % 39
        a4 g4 e4 |
        d2 d4
      }

      \alternative {
        {
          | % 41
          c2. ( | % 42
          c2 )  c'4
        }
        {
          | % 43
          c,2. ( | % 44
          c2. )
        }
      }
      \bar "|."
    }

    \addlyrics {
      Бли -- ка и пе -- е из -- "во-" --
      рът чист с~по -- глед не -- ви --
      нен, ве -- дър, лъ -- чист. В~ску --
      та пла -- нин -- ски ро -- дил се
      в~зо -- ри, тре -- "пет-" -- на Ра --
      дост, бо -- дрост зву -- чи. Бис --
      три стру -- и пе -- ят, кап -- чи --
      ци бле -- стят. __   стят. __   Раз --
      ли -- ва све -- жест,  кра -- со
      -- та, мъл -- ви за Лю -- бов -- та. __
      В~сър -- це -- то на чо -- ве
      -- ка о -- "тек-" -- ва пе -- сен -- та. __
      В~сър -- та. __

    }

    \header {
      title = \titleFunc "Малкият планински извор" "Malkijat planinski izvor"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repitione"


  \markup \fontsize #bgCoupletFontSize {
    \hspace #10
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line {   2. Нежни цветя край него цъфтят, }
      \line {   "   "  приказки чудни тихо редят,  }
      \line {   "   " нимфи игриви тук танци плетат, }
      \line {   "   "  в губера росен стъпки трептят. }
      \line {   "   "  Нощем се оглеждат в извора  звезди. (2)}
      \line {   "   "  И блика, дава  той без спир, тъй дава Любовта. }
      \line {   "   "   В сърцето на човека изгрява Радостта. (2)}
    }

  } % markup



} % bookpart

% Più mosso
%
