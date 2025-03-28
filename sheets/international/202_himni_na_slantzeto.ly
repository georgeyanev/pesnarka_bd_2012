\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref202
  \tocItem \markup "Химн на Слънцето – Himn na Slănceto "
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
      \time 2/4 c4  b8  a8 | % 35
      \time 3/4 e'2  d8 ( [  c8 ) ] | % 36
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
      a2 ^\markup \italic \huge "decresc."  a4  g4  f4 | % 54
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
      \tempo"Più mosso" a,4 d4  e4
      f2. \break | % 77
      e4  d4 ^\markup{ \italic \huge {poco accel.} }
      fis4 ^\markup \italic \huge "cresc."  a2. | % 78
      \time 7/4 a2  a4 r4 a4 ^\mf  a4  a4 | % 79
      \time 6/4 d2. ~ ^\ff  d2 r4 \bar "|."
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
      мо -- я дух. Да бъ -- де Во -- ля --
      та Бо -- жи -- я. Бу -- дим.
      Из -- гря -- ва Слън -- це --
      то на __ на -- ши -- те ан -- ге
      -- ли. Да се __ въд -- во --
      ри Цар -- ство -- то на От --
      ца на -- ше -- го на __  свет --
      ли -- ни -- те. Бу -- ди -- те. __
      Из -- гря -- ва Слън -- це -- то __
      на Ве -- ли -- ки -- я Гос --
      под на ми -- ра във на -- ши -- те
      ду -- ши. Да об -- но -- ви __  на --
      ша -- та ду -- ша със Сво -- я --
      та Си -- ла. Бу -- дят. Из --
      гря -- ва Слън -- це -- то __ на
      всич -- ки Слън -- ца __ на на --
      ши -- те ду -- хо -- ве. Да ни
      да -- де Гос -- под жи -- вот, здра
      -- вe и сво -- бо -- да! __
    }

    \addlyrics {
      Bu -- dja. Iz -- grja -- va mo -- e --
      to Slăn -- ce văv mo -- ja -- ta du
      -- ša. Da se sla  -- vi I -- me --
      to Bo -- ži -- e. Bu -- diš. Iz --
      grja -- va Bo -- ži -- e -- to Slăn
      -- ce v~men, văv săr -- ce --
      to. Da doj -- de Car -- stvo -- to
      Bo -- ži -- e. Bu -- di. Iz -- grja
      -- va Slăn -- ce -- to __  na
      mo -- ja duh. Da bă -- de Vo -- lja --
      ta Bo -- ži -- ja. Bu -- dim.
      Iz -- grja -- va Slăn -- ce --
      to na __ na -- ši -- te an -- ge
      -- li. Da se __ văd -- vo --
      ri Car -- stvo -- to na Ot --
      ca na -- še -- go na __  svet --
      li -- ni -- te. Bu -- di -- te. __
      Iz -- grja -- va Slăn -- ce -- to __
      na Ve -- li -- ki -- ja Gos --
      pod na mi -- ra văv na -- ši -- te
      du -- ši. Da ob -- no -- vi __  na --
      ša -- ta du -- ša săs Svo -- ja --
      ta Si -- la. Bu -- djat. Iz --
      grja -- va Slăn -- ce -- to __ na
      vsič -- ki Slăn -- ca __ na na --
      ši -- te du -- ho -- ve. Da ni
      da -- de Gos -- pod ži -- vot, zdra
      -- ve i svo -- bo -- da! __
    }


    \header {
      title = \titleFunc "Химн на Слънцето" "Himn na Slănceto"
    }

    \midi{}

  } % score

  \markup \raise #2.8 \override #'(baseline-skip . 2) {
    \column {
      \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
    }
  }

  \markup \vspace #3

  % include foreign translation(s) of the song
  \include "../../lyrics/de/202_himni_na_slantseto_lyrics_de.ly"

} % bookpart

% Più mosso
%
