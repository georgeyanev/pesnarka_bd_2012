\version "2.24.1"

\include "include/globals.ily"

\bookpart {
  \label #'ref125
  \tocItem \markup "Слънчева песен – пчелна – Slancheva pesen – pchelna"
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
      r8 ^\fermata  \break | % 57
      es4 bes4 |  g'4 d4 |% 58
      % 59
      c'16  bes16 as16 g16
      f16 es16 f16 g16 \break |
      f4 ( bes,4 )  | % 61
      bes'16  c16  d16  es16
      d16  c16  bes16 as16 | % 62
      g8 r8 r4 \break  | % 63
      bes8.  bes16  c16  bes16
      as16 g16  | % 64
      f4 f4 | \break % 65
      as8. g16  bes16 as16 g16
      f16 | % 66
      es16 d16 es16 f16 es4
      ^\fermata | \break % 67
   
      es'4  bes4 | % 68
      c4 f,4 | % 69
      g16 as16  bes16  c16
      bes8 r8 \mark \markup \fontsize #-3 { \musicglyph "scripts.caesura.straight" }|
      c4 as4 |   % 71
      g4 f4 |  \break % 72
      bes16 as16 g16 f16 es8
      r8 \mark \markup \fontsize #-3 { \musicglyph "scripts.caesura.straight" } |  % 73
      es4 bes4 |  % 74
      g'4 d4 | % 75
      c'16  bes16 as16 g16
      f16 es16 f16 g16 |  \break % 76
      f4 bes,4  | % 77
      bes'16  c16  d16  es16
      d16  c16  bes16 as16 |  % 78
      g8 r8 r4 \break | 
      as16 -- ^\markup{ \bold {rubato} }  bes16
      c16  d16  es16  f16
      g16  f16 |
      es2 \break | % 81
      \tempoFunc "Meno mosso" 4 "80"
      es16  d16  c16  bes16
      as16 g16 f16 es16 |  % 82
      es16 f16 g16 ^\fermata f16
      es4 ^\fermata \break | % 83
      bes'2 -. ^\pp | % 84
      es,2 -. | % 85
      bes'2 -. | % 86
      es2 -. \bar "|."
    }

    \addlyrics {
      Про --
      лет е веч, "свет-" -- ло и "топ-" -- ло
      е на -- вред -- Слън -- це гре --
      е, да, "про-" -- лет е дош -- ла. Ра
      -- дост бли -- ка "в~ко-" -- ше -- ра
      ни: бън, всич -- ки бър -- зат да
      из -- ля -- зат вън. Те до -- ла --
      вят "про-" -- лет -- ни -- я цве -- тен
      а -- ро -- мат, "спу-" -- щат се
      към цъф -- на -- ли -- я цвят.
      С~ра -- дост те пра -- шец съ --
      би -- рат и по -- на -- сят го към
      цъф -- на -- ли -- я цвят. Ра --
      дост бли -- ка "в~ко-" -- ше -- ра
      ни: бън, всич -- ки бър -- зат да
      из -- ля -- зат вън. Бън -- зън,
      бън -- зън, "сла-" -- дък мед за ва --
      зи ни -- е гот -- вим, въз -- лю --
      бе -- те бла -- ги -- я Тво -- рец.
      Въз -- лю -- бе -- те бла -- ги -- я
      Тво -- рец. Да въз -- лю -- бим на
      -- ши -- я ве -- лик и благ Тво --
      рец. Бън! Зън! Бън! Зън!
    }
    \addlyrics {Pro --
      let e vech, svet -- lo i top -- lo
      e na -- vred -- Slan -- tse gre --
      e, da, pro -- let e dosh -- la. Ra
      -- dost bli -- ka "v~ko-" -- she -- ra
      ni: ban, vsich -- ki bar -- zat da
      iz -- lya -- zat van. Te do -- la --
      vyat pro -- let -- ni -- ya tsve -- ten
      a -- ro -- mat, "spu-" -- shtat se
      kam tsaf -- na -- li -- ya tsvyat.
      S~ra -- dost te pra -- shets sa --
      bi -- rat i po -- na -- syat go kam
      tsaf -- na -- li -- ya tsvyat. Ra --
      dost bli -- ka "v~ko-" -- she -- ra
      ni: ban, vsich -- ki bar -- zat da
      iz -- lya -- zat van. Ban -- zan,
      ban -- zan, sla -- dak med za va --
      zi ni -- e got -- vim, vaz -- lyu --
      be -- te bla -- gi -- ya Tvo -- rets.
      Vaz -- lyu -- be -- te bla -- gi -- ya
      Tvo -- rets. Da vaz -- lyu -- bim na
      -- shi -- ya ve -- lik i blag Tvo --
      rets. Ban! Zan! Ban! Zan!}

    \header {
      title = \titleFunc "Слънчева песен – пчелна мушичка" "Slancheva pesen – pchelna mushichka"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/125_slancheva_pesen_lyrics_de.ly"

} % bookpart
