\version "2.24.4"

\include "include/globals.ily"

\bookpart {
  \label #'ref134
  \tocItem \markup "Обетована земя – Obetovana zemja"
   \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \time 3/8
      \tempoFunc "Moderato" 8 "88"
      \autoBeamOff
      a4. | % 2
      d4  e8 | % 3
      f16  f16  e8  d8 | % 4
      e4. | % 5
      e4. | % 6
      e8 ( [  f8 ) ]  g8 | % 7
      a4  e8 | \break  % 8
      f8 ( [  e8 ) ]  d8 | % 9
      e4. |
      e4. | % 11
      e8  f8  g8 | % 12
      a8  e8  g8  | % 13
      f8  e8  d8 | \break % 14
      d4. | % 15
      d4. | % 16
      a'8 ( [  bes8 ) ]  a8 | % 17
      a8 ( [  d8 ) ]  c8 | % 18
      bes8 ( [  a8 ) ]  g8  | % 19
      g4. |
      e4. |  % 21
      e8 ( [  f8 ) ]  g8 | \break % 22
      a8 ( [  e8 ) ]  g8 | % 23
      f8  e8  d8 | % 24
      d4.  | % 25
      d4.  | % 26
      a'4. |  % 27
      d4  e8 | % 28
      f4 ^\fermata  e8 |  % 29
      d4  a8 | \break
      c8 ( [  bes8 ) ]  a8 | % 31
      e8 ( [  f8 ) ]  g8  | % 32
      a4. | % 33
      a4. |   % 34
      \tempo "Più vivo" c4 bes8 |  % 35
      bes4  a8 |  % 36
      a4  gis8  |  % 37
      a4. | \break  % 38
      bes4  c8 | % 39
      bes4  a8 |
      a4 (  gis8 ) | % 41
      a4. | % 42
      d,4.  | % 43
      e4  f8 | % 44
      g8 ( [  f8 ) ]  e8 | % 45
      f8 ( [  e8 ) ]  d8 | \break % 46
      cis4  e8 | % 47
      d4. | % 48
      d4.  | \bar "||" % 49
      \tempo "Meno mosso" a4. |
      bes4  bes8 | % 51
      a4. | % 52
      a8  gis8  a8 |  % 53
      bes4. |  % 54
      a4. ^\fermata | \break  % 55
      a'4. | % 56
      bes4  bes8  | % 57
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
      скър -- би през __  ду -- ша -- та
      ми __  ми -- на -- ха, въл -- ни и
      бу -- ри ду -- ша ми за -- ля -- ха.
      Но __   ду -- хът __  ми на __ жи
      -- во -- та с~мощ  и си -- ла
      над тях из -- пла -- ва. За о --
      бе -- то -- ва -- на зе -- мя __  аз
      тръг -- нах път -- ник, где из
      -- ви -- рат из -- во -- ри, где те --
      кат ре -- ки -- те, где зре --
      ят пло -- до -- ве, __ где пти
      -- ци пе -- ят. Где хо -- ра -- та
      жи -- ве -- ят брат -- ски, где хо
      -- ра -- та жи -- ве -- ят брат --
      ски, там, де Лю -- бов ца -- ри.}


      \addlyrics {
        Dni na stra -- da -- ni -- ja i
        skăr -- bi prez __  du -- ša -- ta
        mi __  mi -- na -- ha, văl -- ni i
        bu -- ri du -- ša mi za -- lja -- ha.
        No __   du -- hăt __  mi na __ ži
        -- vo -- ta s~mošt  i si -- la
        nad tjah iz -- pla -- va. Za o --
        be -- to -- va -- na ze -- mja __  az
        trăg -- nah păt -- nik, gde iz
        -- vi -- rat iz -- vo -- ri, gde te --
        kat re -- ki -- te, gde zre --
        jat plo -- do -- ve, __ gde pti
        -- ci pe -- jat. Gde ho -- ra -- ta
        ži -- ve -- jat brat -- ski, gde ho
        -- ra -- ta ži -- ve -- jat brat --
        ski, tam, de Lju -- bov ca -- ri.}

        \header {
          title = \titleFunc "Обетована земя" "Obetovana zemja"
        }

        \midi{}

      } % score


      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/134_obetovana_zemya_lyrics_de.ly"

    } % bookpart
