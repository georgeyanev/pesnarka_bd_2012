\version "2.20.0"

\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \time 3/8
      \tempoFunc "Moderato" "8" "88"
      \autoBeamOff
      \partial 4.
      a4. | % 2
      d4  e8 | % 3
      f16  f16  e8  d8 | % 4
      e4. | % 5
      e4. | % 6
      e8 ( [  f8 ) ]  g8 \break | % 7
      a4  e8 | % 8
      f8 ( [  e8 ) ]  d8 | % 9
      e4. |
      e4. | % 11
      e8  f8  g8 | % 12
      a8  e8  g8 \break | % 13
      f8  e8  d8 | % 14
      d4. | % 15
      d4. | % 16
      a'8 ( [  bes8 ) ]  a8 | % 17
      a8 ( [  d8 ) ]  c8 | % 18
      bes8 ( [  a8 ) ]  g8 \break | % 19
      g4.^\markup{ 
        "ossia"
        \fontsize #-6 \general-align #Y #DOWN \note "4" #0.8
        "            "
        \fontsize #-6 \general-align #Y #DOWN \note "8" #0.8
      }  |
      e4. | % 21
      e8 ( [  f8 ) ]  g8 | % 22
      a8 ( [  e8 ) ]  g8 | % 23
      f8  e8  d8 | % 24
      d4. \break | % 25
      d4. | % 26
      a'4. | % 27
      d4  e8 | % 28
      f4 ^\fermata  e8 | % 29
      d4  a8 |
      c8 ( [  bes8 ) ]  a8 \break | % 31
      e8 ( [  f8 ) ]  g8 | % 32
      a4. | % 33
      a4. | % 34
      \tempo "Più vivo" c4 bes8 | % 35
      bes4  a8 | % 36
      a4  gis8 \break | % 37
      a4. | % 38
      bes4  c8 | % 39
      bes4  a8 |
      a4 (  gis8 ) | % 41
      a4. | % 42
      d4. \break | % 43
      e,4  f8 | % 44
      g8 ( [  f8 ) ]  e8 | % 45
      f8 ( [  e8 ) ]  d8 | % 46
      cis4  e8 | % 47
      d4. | % 48
      d4. \break | % 49
      \tempo "Meno mosso" a4. |
      bes4  bes8 | % 51
      a4. | % 52
      a8  gis8  a8 | % 53
      bes4. | % 54
      a4. ^\fermata | % 55
      a'4. | % 56
      bes4  bes8 \break | % 57
      a4. | % 58
      \tempo "(poco a poco rall.)" e8 f8
      g8 | % 59
      f4  e8 |
      d4  cis8 | % 61
      cis8  d8  e8 | % 62
      d4. ^\fermata \bar "|."
    }

    \addlyrics {
      Дни на стра -- да -- ни -- я и
      скър -- би през  ду -- ша -- та
      ми  ми -- на -- ха, въл -- ни и
      бу -- ри ду -- ша ми за -- ля -- ха.
      Но  Ду -- хът  ми на  Жи
      -- во -- та с‿мощ  и си -- ла
      над тях из -- пла -- ва. За О --
      бе -- то -- ва -- на зе -- мя  аз
      тръг -- нах път -- ник, где из
      -- ви -- рат из -- во -- ри, где те --
      кат ре -- ки -- те, где зре --
      ят пло -- до -- ве,  где пти
      -- ци пе -- ят. Где хо -- ра -- та
      жи -- ве -- ят брат -- ски, где хо
      -- ра -- та жи -- ве -- ят брат --
      ски, там де Лю -- бов ца -- ри.}
      \addlyrics {   Dni na stra -- da -- ni -- ya i
      skar -- bi prez  du -- sha -- ta
      mi  mi -- na -- ha, val -- ni i
      bu -- ri du -- sha mi za -- lya -- ha.
      No  Du -- hat  mi na  Zhi
      -- vo -- ta s‿mosht  i si -- la
      nad tyah iz -- pla -- va. Za O --
      be -- to -- va -- na ze -- mya  az
      trag -- nah pat -- nik, gde iz
      -- vi -- rat iz -- vo -- ri, gde te --
      kat re -- ki -- te, gde zre --
      yat plo -- do -- ve,  gde pti
      -- tsi pe -- yat. Gde ho -- ra -- ta
      zhi -- ve -- yat brat -- ski, gde ho
      -- ra -- ta zhi -- ve -- yat brat --
      ski, tam de Lyu -- bov tsa -- ri.}

      \header {
        title = \titleFunc "Обетована земя" "Obetovena zemya"
      }

      \midi{}

    } % score

    \markup \empty-two
    % include foreign translation(s) of the song
    \include "lyrics_de/134_obetovana_zemya_lyrics_de.ly"

  } % bookpart