\version "2.24.1"

\include "include/globals.ily"

\bookpart {
  \label #'ref126
  \tocItem \markup "Студът всичко дава – Studat vsichko dava"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Andante" 4 "63"
      \autoBeamOff
      \partial 4
      a'4 | % 2
      d''2  cis''8.  b'16 | % 3
      b'4  a'4.  a'8 | % 4
      d''8  e''8  fis''4.  e''8
      \break | % 5
      d''8  cis''8  cis''8  b'8
      b'8  cis''8 | % 6
      a'2  cis''4 | % 7
      e''8.  e''16  e''4.  e''8
      \break | % 8
      fis''8  d''8  cis''8  d''8
      b'8  cis''8 | % 9
      d''2  a'4 |
      \time 2/4  |
      a'4  d'4 | % 11
      e'4.  g'8 \break | % 12
      \time 3/4  | % 12
      b'8  a'8  g'8  e'8  fis'8
      g'8 | % 13
      a'2. | % 14
      d''2 \grace {
        cis''16 ( [  d''16
        e''16 ]
      }
      d''8. )  cis''16 | % 15
      \time 2/4  | % 15
      d''4.  b'8 \break | % 16
      a'4.  a'8 | % 17
      a'8  g'8  fis'8  e'8 | % 18
      d'4. \tempoFunc "Più mosso" 4 "84" d'8 | % 19
      d'8.  d'16  d'8.  fis'16 \break |
      \time 3/4  |
      a'8.  a'16  a'4.  g'8 | % 21
      fis'8  e'8  d'8.  cis'16  e'8.
      d'16 | % 22
      \time 2/4  | % 22
      d'4.  d'8 \break | % 23
      \key d \minor d'8.  d'16  d'8.  f'16 | % 24
      \time 3/4  | % 24
      a'8.  a'16  a'4.  g'8 | % 25
      f'8  e'8  d'8.  cis'16  e'8.
      d'16  % 26
      \break | % 27
      \time 2/4  | % 26
      d'2 \bar "||"
       | % 27
      \tempo "Tempo I" a4  d'8 ( [  e'8 ) ] | % 28
      f'4  d'4 | % 29
      cis'8 ( [  d'8 ]  e'4 ) |
      a2 | % 31
      \tempo "accel." e'8 ( [ f'8 ) ]
      g'8  a'8 \break | % 32
      bes'8 ( [  a'8 ) ]  g'8  f'8 | % 33
      e'4  g'8 ^\markup{ \bold {rit.} }  f'8 | % 34
      e'8  d'8  cis'8  e'8 | % 35
      d'2 | % 36
      d'2 \break | % 37
      f'8.  f'16  f'16 ( [  e'16  f'16
      g'16 ) ] | % 38
      e'4.  e'8 | % 39
      \time 3/4  | % 39
      g'4.  f'8  e'8 ( [  f'8 ) ] |
      d'2  a8.  a16 \break | % 41
      d'4.  e'8  f'8 ( [  d'8 ) ] | % 42
      a2  a'8  a'8 | % 43
      bes'4  a'8  gis'8  a'8 ( [
      bes'8 ) ] | % 44
      a'2  a4 | % 45
      d'8.  d'16  d'4.  e'8 | % 46
      \time 2/4  | % 46
      f'4  d'4 | % 47
      cis'8  d'8  e'8  f'8 | % 48
      d'4. (  a'8 ) | % 49
      g'4  bes'8.  bes'16 \break |
      a'2 | % 51
      g'4. (  a'8 ) | % 52
      f'2 | % 53
      \time 3/4  | % 53
      e'8 ( [  f'8 ) ]  g'8  a'8
      bes'8 -- ^\markup{ \bold {(rit.)} }  d''8 -- | % 54
      cis''2 ^\fermata  a4 \time 3/4 \break | % 55
      
      \tempoFunc "Largamente" 4 "54"
      \times 2/3  {
        d'8[ \=1( \grace { cis'16 \=2([ d'16 ]}  cis'8 \=1)\=2)] bes8
      }
      a2 | % 56
      \time 2/4  | % 56
      e'8 ( [  f'8 ) ]  g'8  a'8  | % 57
      e'8  g'8  f'8  e'8 | % 58
      d'2 \break | % 59
      \tempoFunc "Tempo I" 4 "63"
      a'8 ( [  bes'32  a'32  gis'32
      a'32 ) ]  bes'4 |
      a'2 | % 61
      g'4  a'8.  e'16 | % 62
      f'4.  f'8 | % 63
      e'8  f'8  g'8  a'8 \break | % 64
      bes'8 ( [  d''8 ) ]  c''8.
      bes'16 | % 65
      \time 3/4  | % 65
      bes'4  a'2 | % 66
      f'8.  f'16  f'16 ( [  e'16 ) ]
      d'16  cis'16  d'8 ( [  bes8 ) ] | % 67
      a2  a4 \break | % 68
      \pageBreak
      \times 2/3  {
        d'8 ( [ ^\markup{ \bold {Largamente} }  cis'8\prall ) ]
        bes8
      }
      a4. a'8
      | % 69
      \time 2/4  | % 69
      g'8 ^\markup{ \bold {a tempo} }  f'8  e'8 ( [
      f'8 ) ] |
      g'4  e'8.  f'16 | % 71
      d'2 \bar "||"
      \break | % 72
    
      d''4 ( ^\markup{ \bold {Più mosso} }  bes'4 ) | % 73
      a'8. \tempoFunc "" 4 "84"  gis'16  a'8  bes'8
      | % 74
      a'4.  g'8 | % 75
      f'8.  e'16  f'8.  e'16 | % 76
      f'4.  e'8 \break | % 77
      d'8. ^\markup{ \bold {rit.} }  cis'16  d'8.
      e'16 | % 78
      \time 3/4  | % 78
      \tempoFunc "Andante" 4 "66" d'2
      \times 2/3  {
        d'8 ( [  e'8  f'8 ) ]
      }
      | % 79
      \time 2/4  | % 79
      d'8 ( [  f'8 ]  d'8 [  f'8 ) ] \break |
      \time 3/4  |
      f'4.  e'8  d'8 ( [  bes8 ) ] | % 81
      \time 4/4  | % 81
      a4  bes8.  a16  a2 | % 82
      \time 3/4  | % 82
      \times 2/3  {
        gis16 ( [ ^\markup{ \bold {Largamente} }  a16
        bes16 )]
      }
      gis8  a2 ^\fermata \bar "||"
      \break | % 83
      \time 2/4  | % 83
      \tempoFunc "Più mosso" 4 "80" fis'8.  g'16  a'8 ( [
      fis'8 ) ] | % 84
      g'2 | % 85
      bes'8.  bes'16  a'4 | % 86
      g'8.  g'16  f'4 | % 87
      e'8.
      e'16
      d'4
      
      \stemNeutral
      \break | % 88
      \tempoFunc "Andante" 4 "66" a4  a8.  a16 | % 89
      a2 |
      f'4  f'8  e'8 | % 91
      f'8  g'8  e'8.  e'16 | % 92
      d'2 \bar "||"
      \break | % 93

      \key d \major | % 93
      \tempoFunc "Moderato" 4 "88" a'4  a'4 | % 94
      \time 3/4  | % 94
      a'16 ( [  gis'16  a'16  b'16 ) ]
      a'2 | % 95
      \time 2/4  | % 95
      e''8.  d''16  cis''8  b'8 | % 96
      \time 3/4  | % 96
      b'8 ( [  cis''8 ) ]  a'4  a'8.
      g'16 \break | % 97
      fis'4  fis'4  e'8  fis'8 | % 98
      \time 3/4 g'4  e'2 | % 99
      e'4  e'8  fis'8  g'8  b'8
      |
      a'4  fis'4.  a'8  \break | % 101
      \pageBreak
      b'8  b'8  d''4  cis''4 | % 102
      b'8 ( [  cis''8 ) ]  a'4  g'8
      ^\markup{ \bold {rit.} }  fis'8 | % 103
      | % 103
      e'4 ^\fermata  d'2 \bar "||" |
      \break % 104
     
      \time 2/4
        % 104
      \tempoFunc "Andante" 4 "66"
      \times 2/3  {
        d'8 ( [  e'8  fis'8 ]
      }
      
      %\once \override TextScript.extra-offset = #'(-1 . 1)
      d'8
      
      [  fis'8 ) ] | % 105
      fis'2 | % 106
      \key d \minor
      \time 3/4  | % 106

      \times 2/3  {
        d'8 ( [  e'8  f'8 ]
      }
      d'8 [  f'8 ) ]  d'8 ( [  f'8 ) ] | % 107
      \time 2/4  | % 107
      f'2 \break | % 108

      \tempo "Meno mosso" a'16 ( [  gis'16  a'16  bes'16 ) ]
      a'4 | % 109
      d''16 ( [  cis''16  bes'16  a'16
      ) ]  a'4 |
      bes'16 ( [  a'16  f'16 )]  d'16
      bes'8.  a'16 \break | % 111
      \time 3/4  | % 111
      a'4 g'2 | % 112
      \time 2/4  | % 112
      f'16 ( [  e'16  f'16  g'16 ) ]

      \times 2/3  {
        e'8 ( [  f'8  g'8 ) ]
      }
      | % 113
      \time 3/4  | % 113
      f'4  e'4.  g'8 \break | % 114
      bes'8.  bes'16  a'4  g'4 | % 115
      \time 4/4  | % 115
      f'4  f'8  e'8  f'4  e'8.
      a16 | % 116
      \time 3/4  | % 116
      d'4  d'2 \bar "|."
      
      %ima greshki

    }

    \addlyrics {
      Сту -- дът всич -- ко да -- ва. Сту
      -- ден си ти, но ни пред -- паз --
      ваш от сту -- да; сту -- ден си
      ти, но ни из -- ба -- вяш от мра
      -- за; сту -- ден си ти, но ни из
      -- ба -- вяш от мра -- за; сту -- ден
      си ти, но ни пред --
      паз -- ваш от мра -- за. Сту -- ден
      си ти, сту -- ден си ти, но ни
      до -- на -- сяш чис -- то -- та. Сту
      -- ден си ти, сту -- ден си ти,
      но ни до -- на -- сяш чис -- то --
      та. Сту -- дът  всич -- ко да
      --  ва, той  е до -- бри
      -- ят слу -- га, що Лю -- бов го
      вдъх -- но -- вя -- ва. За мно -- зи
      --   на то -- ва е чуд
      -- но, но то -- ва го зна --
      ят и дъж -- дов -- ни -- те кап
      -- ки. Сту -- ден е той, но ни
      пред -- паз -- ва от сту -- да
      и вся -- ко -- га слу -- ша гла
      -- са на О -- бич -- та. Сту --
      ден  --   си ти, но  ни
      из -- ба -- вяш от мра -- за и
          но -- сиш са -- мо
      то -- ва, ко -- е -- то "Свет-" -- ли --
      на -- та ти да -- ва. Твой -- та
      дре  -- ха е бя -- ла. Сту --
      ден  си ти, но ни из -- ба
      -- вяш от мра -- за. От  ве --
      ка са би -- ли за -- тво -- ре --
      ни за теб чо -- веш -- ки -- те
      сър -- ца, за --  що --
      то съ -- бли -- чаш ста --
      ро -- то, ста --  ро -- то и
      за -- ви -- ваш мла -- "до-" -- то,
      мла -- до -- то, мла -- до -- то. Сту -- 
      ден си ти, но ни спа -- ся -- ваш
      от сту -- да. И ко -- га --
      то про -- "лет-" -- та на -- ста
      -- ва и Жи -- во -- тът се я --
      вя -- ва, ти пак ги "при-" -- дру --
      жа -- ваш и свой -- та свет -- ла
      дре -- ха им на -- дя -- ваш.
      Мал --  ко го --
      во -- риш, мно --
      го мис --   лиш;
      мал -- ко о -- бе -- ща -- ваш,
      мно --   го   да --
      ваш и все -- ки свой дар със
      чис -- то -- та при -- дру -- жа --
      ваш.}
      \addlyrics {
        Stu -- dat vsich -- ko da -- va. Stu
        -- den si ti, no ni pred -- paz --
        vash ot stu -- da; stu -- den si
        ti, no ni iz -- ba -- vyash ot mra
        -- za; stu -- den si ti, no ni iz
        -- ba -- vyash ot mra -- za; stu -- den
        si ti, no ni pred --
        paz -- vash ot mra -- za. Stu -- den
        si ti, stu -- den si ti, no ni
        do -- na -- syash chis -- to -- ta. Stu
        -- den si ti, stu -- den si ti,
        no ni do -- na -- syash chis -- to --
        ta. Stu -- dat  vsich -- ko da
        --  va, toy  e do -- bri
        -- yat slu -- ga, shto Lyu -- bov go
        vdah -- no -- vya -- va. Za mno -- zi
        --   na to -- va e chud
        -- no, no to -- va go zna --
        yat i dazh -- dov -- ni -- te kap
        -- ki. Stu -- den e toy, no ni
        pred -- paz -- va ot stu -- da
        i vsya -- ko -- ga slu -- sha gla
        -- sa na O -- bich -- ta. Stu --
        den  -- si ti, no  ni
        iz -- "ba-" -- vyash ot mra -- za i
        no -- sish sa -- mo
        to -- va, ko -- e -- to Svet -- li --
        na -- ta ti da -- va. Tvoy -- ta
        dre  -- ha e bya -- la. Stu --
        den  si ti, no ni iz -- ba
        -- vyash ot mra -- za. Ot  ve --
        ka sa bi -- li za -- tvo -- re --
        ni za teb cho -- vesh -- ki -- te
        sar -- tsa, za --  shto --
        to sa -- bli -- chash sta --
        ro -- to, sta --  ro -- to i
        za -- vi -- vash mla -- do -- to,
        mla -- do -- to,  mla -- do -- to. Stu --
        den si ti, no ni spa -- "sya-" -- vash
        ot stu -- da. I ko -- ga --
        to pro -- let -- ta na -- sta
        -- va i Zhi -- vo -- tat se ya --
        vya -- va, ti pak gi pri -- dru --
        zha -- vash i svoy -- ta svet -- la
        dre -- ha im na -- dya -- vash.
        Mal --  ko go --
        vo -- rish, mno --
        go mis --   lish;
        mal -- ko o -- be -- shta -- vash,
        mno --   go   da --
        vash i vse -- ki svoy dar sas
        chis -- to -- ta pri -- dru -- zha --
        vash.}

        \header {
          title = \titleFunc "Студът всичко дава" "Studat vsichko dava"
        }

        \midi{}

      } % score




      % include foreign translation(s) of the song
      \include "lyrics_de/126_studat_vsichko_dava_lyrics_de.ly"

    } % bookpart
