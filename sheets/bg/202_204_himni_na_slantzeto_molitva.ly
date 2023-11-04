\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref202
  \tocItem \markup "Химни на Слънцето"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key a \minor
      \time 6/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff
      a2.^\pp  a2 ^\fermata  a4^\p | % 2
      \time 4/4  | % 2
      g'2^\<  f2 | % 3
      e2 \!  d4  e4^\> | % 4
      \time 6/4  | % 4
      f2  d2 \! r4
      \override Hairpin.to-barline = ##f
      \override Hairpin.after-line-breaking = ##t
      e4^\< \break | % 5

      \time 4/4  | % 5
      g4 \! f4  e4^\>  d4  \! | % 6
      e2. r4 | % 7
      \time 6/4  | % 7
      e2^\<  a4  c4 ( \!  b4 )
      a4 \break | % 8
      gis4^\>  a4  b4  b2  a4
      | % 9
      a2. \! r2. \bar "||"
      c,2.^\p  a2 ^\fermata  e'4 | % 11
      \time 3/4  | % 11
      f2  e4 \break | % 12
      \time 4/4  | % 12
      dis4^\<  e4  f4  f4 \! | % 13
      \time 6/4  | % 13
      f2 (^\>  g4 )  e2 \! r4 | % 14
      e2.^\<  a2  a4 \! \break | % 15
      c2.^\>  b2 \! e,4^\< | % 16
      \time 4/4  | % 16
      f2  a2  \! | % 17
      b2^\>  a4  g4 | % 18
      f2.  g4  \! | % 19
      e2 r2 \bar "||"
      \break |
      \time 6/4  |
      bes2.^\pp  a2 ^\fermata  a4 | % 21
      \time 4/4  | % 21
      a'4 (  g4 )  e2 | % 22
      g2^\<  f8 ( [  g8 ) ]  a4 ~ \! | % 23
      a4  g4^\>  f4.  g8 \break | % 24
      e2.  \! e4 \mf ^\< | % 25
      \time 3/4  | % 25
      a2  b4 \! | % 26
      \time 4/4  | % 26
      c2^\>  e,4  e4 | % 27
      \time 6/4  | % 27
      e2 (  b'2 )  a2 \break | % 28
      a2. \! r2. \bar "||"
      a,2. (^\pp  e'2. ) |
      d2. r2  c8 ( [^\p  d8 ) ] | % 31
      \time 3/4  | % 31
      e2  d4  | % 32
      \break g2  f8 ( [  e8 ) ] | % 33
      e2  a8 ( [  b8 ) ] | % 34
      c2  b8  a8 | % 35
      e'2  d8 ( [  c8 ) ] | % 36
      c2 r4 \break | % 37
      \time 5/4  | % 37
      a4^\<  b8 ( [  c8 ) ] \!  a4
      g8 ( [  e8 ) ]  a4 | % 38
      g4  d8 ( [  e8 ) ]  e4  f4
      ^\<  g4 | % 39
      a2  \! f4  e8 ( [  d8 ) ]
      e4 \break |
      \time 4/4  |
      g4 (  a4 )  b4^\>  c8 ( [
      d8 ) ] | % 41
      d2  c2 \! \bar "||"
      R1 | % 43
      \time 3/4  | % 43
      a,2.^\pp ( | % 44
      d2. ) | % 45
      c2. \break | % 46
      a2. ~ | % 47
      a4 r4  a4^\p \bar "||"
      \key d \minor | % 48
      d2^\<  e4 | % 49
      f2  a,4 |
      d2. ~ | % 51
      d4  f4.  a8 \! \break | % 52
      \time 4/4  | % 52
      d2^\f  c4  bes4 | % 53
      \time 5/4  | % 53
      a2 ^\markup \italic "decresc."  a4  g4  f4 | % 54
      \time 3/4  | % 54
      a2  g4 | % 55
      \time 4/4  | % 55
      f4^\>  e4  d4  cis4 \break | % 56
      d2.  \! r4 | % 57
      r4  d4 ^\mf  d'4 ^\<  d4 | % 58
      es2 (  d2 ) \! | % 59
      c4  ^\>  bes4  a4  g4
      \break |
      a2.  d,4 | % 61
      bes'2  a4  g4 \! | % 62
      bes2 ^\>  a2 ^\! \bar "||"
      R1 \break | % 64
      \time 3/4  | % 64
      f2.^\pp ( | % 65
      d2. ) | % 66
      a2. |
      r2  d4 ^\< | % 68
      e2  f4 | % 69
      a4.  bes8  a4 ~  | \break

      a2  g4 | % 71
      a4  a4  a4 \! | % 72
      d2. ~  | % 73
      d4 r4  f,4 ^\< \break | % 74
      \time 4/4  | % 74
      e2  f4  g4  \! | % 75
      \time 6/4  | % 75
      a4 ( ^\>  bes4 )  bes4  a2  \!
      r4 | % 76
      a,4 ^\markup{ \bold {Più mosso} }  d4  e4
      f2. \break | % 77
      e4  d4 ^\markup{ \italic {poco accel.} }
      fis4 ^\markup \italic "cresc."  a2. | % 78
      a2  a4  a4 ^\mf  a4  a4 | % 79
      d2. ~ ^\ff  d2 r4 \bar "|."
    }

    \addlyrics {
      Бу -- дя. Из -- гря -- ва мо -- е --
      то Слън -- це във мо -- я -- та ду
      -- ша. Да се сла  -- ви И -- ме --
      то Бо -- жи -- е. Бу -- диш. Из --
      гря -- ва Бо -- жи -- е -- то Слън
      -- це в~мен, във сър -- це --
      то. Да дой -- де Цар -- ство -- то
      Бо -- жи -- е. Бу -- ди. Из -- гря
      -- ва Слън -- це -- то __  на
      мо -- я Дух. Да бъ -- де Во -- ля --
      та Бо -- жи -- я. Бу -- дим.
      Из  -- гря -- ва Слън -- це --
      то на __ на -- ши -- те Ан -- ге
      -- ли. Да се __ въд -- во --
      ри Цар -- ство -- то на От --
      ца на -- ше -- го на __  свет --
      ли -- ни -- те. Бу -- ди -- те. __
      Из -- гря -- ва Слън -- це -- то __
      на Ве -- ли -- ки -- я Гос --
      под на Ми -- ра във на -- ши -- те
      ду -- ши. Да об -- но -- ви __  на --
      ша -- та ду -- ша със Сво -- я --
      та Си -- ла. Бу -- дят. Из --
      гря -- ва Слън -- це -- то __ на
      всич -- ки Слън -- ца __ на на --
      ши -- те ду -- хо -- ве. Да ни
      да -- де Гос -- под Жи -- вот, здра
      -- вe и Сво -- бо -- да! __
    }

    \header {
      title = \titleFunc "Химни на Слънцето" "Himni na Slănceto"
    }

    \midi{}

  } % score

  \markup \raise #2.8 \override #'(baseline-skip . 2) {
    \column {
      \fill-line \italic { "" "" \concat {"attaca" "   " }}
    }
  }

  \label #'ref204
  \tocItem \markup "Молитва (Вярвам в теб)"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key d \minor
      \time 5/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \override Hairpin.to-barline = ##f
      \override Hairpin.after-line-breaking = ##t

      d'2  a2^\<
      a4 | % 81
      \time 3/4  | % 81
      d4. (  e8  \! )  d4 ^\> | % 82
      bes4 (  a4 )  g4 | % 83
      a2. \! | \time 5/4 \break % 84

      g8. ( [  ^\<  a16 ) ]  bes4  c4
      bes4  c4 | % 85
      \time 3/4  | % 85
      d2 \!  f,4 | % 86
      \time 4/4 bes4  ^\>  a4  g4. (  a8 ) | % 87
      g2 \! r2 \bar "||" | \break % 88

      \key b \minor | % 88
      r4  b4. ( ^\pp  cis8 ) ^\<  fis,4 | % 89
      b2.  \! a4 |
      g2^\>  a4  fis4  \! | % 91
      e4. ( ^\mf  fis8 )  d4  cis8
      d8 | \break % 92
      e4  d4  cis4 (  d4 ) | % 93
      b2. r4 \bar "||"
      | % 94
      \key b \major | % 94
      b'4. (^\mf ^\<  cis8 )  dis4 \!
      cis8 ( [  b8 ~ ] | % 95
      b8 )  ais4 ^\>  gis4  ais8
      fis4 ~ | \break % 96
      fis2 r2 \! | % 97
      \time 4/4 gis4. (  ais8 )  b4  ais4 | % 98
      gis4  fis4  e4. (  fis8 ) | % 99
      dis2. r4  |
      \time 3/4  |
      cis4 ^\p  b4 ^\markup{ \bold {rall.} } ais4 | \break % 101
      b2 r4 | % 102
      \time 4/4  | % 102
      dis4 ^\markup{ \bold {Largo} } ^\p  e4 \grace {
        dis16 ( [  e16 ]
      }
      fis4 )  dis4
      | % 103
      b'4  ais8 ( [  gis8 ) ]  fis4
      e4 | % 104
      dis4  cis4  dis8 ( [  b'8 )
      ^\fermata ]  ais8  gis8 \break | % 105
      \times 2/3  {
        ais8 ( [  b8 )]  ais8
      }
      gis8  fis8  gis8  ais8
      \times 2/3  {
        ais8 ( [  gis8 )  ] fis8
      }
      | % 106
      ais8  ais8  b4 ^\<  ais4
      b8 ( [  cis8 ) ] \bar "||"
      | % 107
      \key dis \minor | \break % 107
      ais4 (  fis'2. | % 108
      eis4 )  dis4 ^\markup{ \bold {rall.} }
      cisis4  cisis4 ~
      ^\mf | % 109
      cisis2. ^\fermata r8^\markup{\musicglyph "scripts.caesura.straight"} b8^\markup{
        \bold {
          Tempo I
        }
      }
      ^\> | \bar "||"
      \time 6/8  |
      ais4  gis8  fis4  dis8 \break | % 111
      eis4  \! fis8 \!  dis4  dis8 | % 112
      \time 3/4  | % 112
      b'4. (  ais8 )  b8 ( [  cis8
      ) ] | % 113
      \time 5/4  | % 113
      b2  ais2  dis,4 ^\mf | \break % 114
      \time 4/4  | % 114
      dis'4.  cis8  dis8
      cis8   b8 ( [  cis8 ) ] | % 115
      ais2. r4 \break  | % 116
      fis4. ^\p  gis8 ^\<  ais8   b8
      cis8  ais8  | % 117
      gis'2 ^\fermata \! ^\ff  fis4. ^\fermata
      fis,8 ^\pp | \break % 118
      ais4.  gis8  fis8 eis8
      dis8  cisis8  | % 119
      eis2  dis4 r8  ais'8 ^\markup{
        \bold {
          Meno
          mosso
        }
      } ^\pp | \break
      b4  ais8.  ais16  gisis8 ( [
      ais8 ) ]  b8  b8 | % 121
      b4  ais4  ais4  gis?4 \break | % 122
      ais2 r4  gis4 ^\p | % 123
      ais4.  ais8 ^\markup{ \bold {rall.} }  ais8
      ais8  ais8 ( [ ^\>  dis8 ) ] | % 124
      dis2. \! ^\ppp r4 \bar "|."


    }
    \addlyrics {
      Вяр --
      вам във Те -- бе, Гос -- по
      -- ди, Кой -- то си ми го -- во
      -- рил в~ми -- на -- ло -- то. Вяр -- вам в~Те -- бе, Гос -- по
      -- ди, Кой -- то ми го -- во --
      риш се -- га. Вяр -- вам
      в~Те -- бе, Гос -- по -- ди, __
      Кой -- то ще ми -- го -- во
      -- риш в~бъ -- де -- ще -- то. Да
      се  сла -- ви И -- ме --
      то Ти и във Тво -- я -- та
      сла -- ва да жи -- ве -- ем ни
      -- е. Да се въд -- во -- ри __
      Цар -- ство -- то Ти, __
      и ни -- е да у -- част -- ва -- ме
      във Твой -- та __ Ра -- дост.
      Да бъ -- де Во -- ля -- та Ти
      как -- то на Не -- бе -- то го --
      ре, та -- ка и до -- лу на Зе --
      мя -- та. И ни -- е да ра -- бо
      -- тим с~Те -- бе на -- ед -- но. А
      -- мин. Та -- ка да бъ -- де.}

      \header {
        title = \titleFunc "Молитва" "Molitva"
      }

      \midi{}

    } % score


  } % bookpart

  % Più mosso
  %
