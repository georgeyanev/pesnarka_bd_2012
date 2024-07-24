\version "2.24.4"

\include "include/globals.ily"

\bookpart {
  \label #'ref125
  \tocItem \markup "Слънчева песен – пчелна – Slănčeva pesen – pčelna mušička"
  \include "include/bookpart-paper.ily"
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
      r8 ^\fermata   | \break % 57
      es4 bes4 |  g'4 d4 |  % 58
      % 59
      c'16  bes16 as16 g16
      f16 es16 f16 g16 |
      f4 ( bes,4 )  |  \break % 61
      bes'16  c16  d16  es16
      d16  c16  bes16 as16 | % 62
      g8 r8 r4  | % 63
      bes8.  bes16  c16  bes16
      as16 g16  | \break  % 64
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
      g8 r8 r4 | \break
      \tempo"rubato" as16 -- bes16
      c16  d16  es16  f16
      g16  f16 |
      es2 | % 81
      \tempoFunc "Meno mosso" 4 "80"
      es16  d16  c16  bes16
      as16 g16 f16 es16 |  \break % 82
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
      из -- ля -- зат вън. Те до -- ла --
      вят "про-" -- "лет-" -- ни -- я "цве-" -- тен
      а -- ро -- мат, __ "спу-" -- щат се
      към "цъф-" -- на -- ли -- я цвят.
      С~ра -- дост те "пра-" -- шец съ --
      би -- рат и по -- на -- сят го към
      цъф -- на -- ли -- я цвят. Ра --
      дост бли -- ка "в~ко-" -- ше -- ра
      ни: бън, всич -- ки бър -- зат да
      из -- ля -- зат вън. Бън -- зън,
      бън -- зън, "сла-" -- дък мед за ва --
      зи ни -- е "гот-" -- вим, "въз-" -- лю --
      бе -- те бла -- ги -- я "Тво-" -- рец.
      "Въз-" -- лю -- бе -- те "бла-" -- ги -- я
      Тво -- рец. Да "въз-" -- "лю-" -- бим на
      -- ши -- я ве -- лик и благ "Тво-" --
      рец. Бън! Зън! Бън! Зън!
    }
    \addlyrics {
      Pro --
      let e več, svet -- lo i top -- lo
      e nav -- red: Slăn -- ce gre --
      e, da, pro -- let e doš -- la. Ra
      -- dost bli -- ka v~ko -- še -- ra
      ni: băn, vsič -- ki băr -- zat da
      iz -- lja -- zat văn. Te do -- la --
      vjat pro -- let -- ni -- ja cve -- ten
      a -- ro -- mat, __ spu -- štat se
      kăm căf -- na -- li -- ja cvjat.
      S~ra -- dost te pra -- šec să --
      bi -- rat i po -- na -- sjat go kăm
      căf -- na -- li -- ja cvjat. Ra --
      dost bli -- ka v~ko -- še -- ra
      ni: băn, vsič -- ki băr -- zat da
      iz -- lja -- zat văn. Băn -- zăn,
      băn -- zăn, sla -- dăk med za va --
      zi ni -- e "got-" -- vim, văz -- lju --
      be -- te bla -- gi -- ja Tvo -- rec.
      Văz -- lju -- be -- te bla -- gi -- ja
      Tvo -- rec. Da văz -- lju -- bim na
      -- ši -- ja ve -- lik i blag Tvo --
      rec. Băn! Zăn! Băn! Zăn!
    }

    \header {
      title = \titleFunc "Слънчева песен – пчелна мушичка" "Slănčeva pesen – pčelna mušička"
    }

    \midi{}

  } % score

  \markup \vspace #3

  % include foreign translation(s) of the song
  \include "../../lyrics/de/125_slancheva_pesen_lyrics_de.ly"

} % bookpart
