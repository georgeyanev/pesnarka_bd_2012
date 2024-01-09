\version "2.24.3"

\include "include/globals.ily"

\bookpart {
  \label #'ref125
  \tocItem \markup "Слънчева песен – пчелна мушичка"
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
      \key es \major
      \time 2/4
      \tempoFunc "Allegretto" 4 "92"
      \autoBeamOff
      bes'4  c8  d8
      | % 44
      es2 | % 45
      f8  es16  d16  c16
      bes16 as16 g16 |  % 46
      f2 | % 47
      as4 f4 \break | % 48
      c'4 f,4 | % 49
      bes8 r8 f16 as16 g16
      f16 |
      es2 |
      \tempoFunc "Poco meno mosso" 4 "88"
      es'4  bes4 | % 52
      c4 f,4 \break | % 53
      g16 as16  bes16  c16
      bes8 r8 ^\fermata |  % 54
      c4 as4 |  % 55
      g4 f4 | % 56
      bes16 as16 g16 f16 es8
      r8 ^\fermata   | % 57
      es4 bes4 |  g'4 d4 | \break % 58
      % 59
      c'16  bes16 as16 g16
      f16 es16 f16 g16 |
      f4 ( bes,4 )  | % 61
      bes'16  c16  d16  es16
      d16  c16  bes16 as16 | % 62
      g8 r8 r4 \break  | % 63
      bes8.  bes16  c16  bes16
      as16 g16  | % 64
      f4 f4 | % 65
      as8. g16  bes16 as16 g16
      f16 | % 66
      es16 d16 es16 f16 es4
      ^\fermata | \break % 67
      es'4  bes4 | % 68
      c4 f,4 | % 69
      g16 as16  bes16  c16
      bes8 r8  |
      c4 as4 |   % 71
      g4 f4 |  \break % 72
      bes16 as16 g16 f16 es8
      r8 |  % 73
      es4 bes4 |  % 74
      g'4 d4 | % 75
      c'16  bes16 as16 g16
      f16 es16 f16 g16 |  \break % 76
      f4 bes,4  | % 77
      bes'16  c16  d16  es16
      d16  c16  bes16 as16 |  % 78
      g8 r8 r4 |
      \tempo"rubato" as16 -- bes16
      c16  d16  es16  f16
      g16  f16 |
      es2 \break | % 81
      \tempoFunc "Meno mosso" 4 "80"
      es16  d16  c16  bes16
      as16 g16 f16 es16 |  % 82
      es16 f16 g16 ^\fermata f16
      es4 ^\fermata | % 83
      bes'2 -. ^\pp | % 84
      es,2 -. | % 85
      bes'2 -. | % 86
      es2 -. \bar "|."
    }

    \addlyrics {
      Про --
      лет е веч, "свет-" -- ло и "топ-" -- ло
      е нав -- ред: Слън -- це гре --
      е, да, "про-" -- лет е дош -- ла. Ра
      -- дост бли -- ка "в~ко-" -- ше -- ра
      ни: бън, всич -- ки бър -- зат да
      "из-" -- "ля-" -- зат вън. Те до -- ла --
      вят "про-" -- "лет-" -- ни -- я "цве-" -- тен
      а -- ро -- мат, __ "спу-" -- щат се
      към "цъф-" -- "на-" -- ли -- я цвят.
      "С~ра-" -- дост те "пра-" -- шец съ --
      би -- рат и "по-" -- "на-" -- сят го към
      "цъф-" -- на -- ли -- я цвят. Ра --
      дост бли -- ка "в~ко-" -- ше -- ра
      ни: бън, всич -- ки бър -- зат да
      из -- ля -- зат вън. Бън -- зън,
      бън -- зън, "сла-" -- дък мед за ва --
      зи ни -- е "гот-" -- вим, "въз-" -- "лю-" --
      "бе-" -- те "бла-" -- "ги-" -- я "Тво-" -- рец.
      "Въз-" -- "лю-" -- "бе-" -- те "бла-" -- "ги-" -- я
      Тво -- рец. Да "въз-" -- "лю-" -- бим "на-"
      -- ши -- я ве -- лик и благ "Тво-" --
      рец. Бън! Зън! Бън! Зън!
    }

    \header {
      title = \titleFunc "Слънчева песен – пчелна мушичка" "Slănčeva pesen – pčelna mušička"
    }

    \midi{}

  } % score

} % bookpart
