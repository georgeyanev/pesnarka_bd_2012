\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref212
  \tocItem \markup "Моето слънце днес ще изгрее – Moeto slănce dnes šte izgree "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 9/16
      \tempoFunc "Maestoso" 8 "132"
      \autoBeamOff

      d'8 ^\p  d'8 ^\<  f'8  a'8. | % 2
      d''8 ~   d''8  d''8 ~  d''8.
      | % 3
      \time 8/16  | % 3
      f''8. -- ^\!  e''8  d''8. | % 4
      e''8. ^\>  d''8 ~  d''8. \break | % 5
      cis''8.  bes'8  g'8. | % 6
      bes'8. ^\!  a'8 ~   a'8. | % 7
      a'8.  a'8  a'8. | % 8
      f''8. ~   f''8  a''8. \break | % 9
      g''8. (   f''8 ) e''8. |
      d''8. (   e''8 )   fis''16 ( [
      e''16  d''16 ) ] | % 11
      cis''8. \=1( ~   cis''8  b''8. ~  | % 12
      b''8.  a''16 [  g''16 ]  fis''16
      [  e''16  d''16 ] \break | % 13
      cis''8. (   d''8 ) \=1)   e''8. | % 14
      d''8. ~   d''8 ~  d''8. \bar "||"
      \time 9/16  | % 15
      d'8 ^\p ^\<  d'8  f'?8  a'8. | % 16
      d''8 ~   d''8  d''8 ~  d''8.
      \break | % 17
      \time 8/16  | % 17
      f''8. ^\! \acciaccatura {  g''16 [  f''16 ] }
      e''8 d''8. ^\> | % 18
      e''8.  d''8 ~   d''8.  | % 19
      cis''8.  bes'8  g'8. |
      bes'8.  a'8 ~  ^\!  a'8.  \break | % 21
      \time 9/16  | % 21
      a'8  a'8  a'8   f''8. ~  | % 22
      \time 8/16  | % 22
      f''8. ~   f''8   a''8. | % 23
      g''8. ( [  f''8 ) ]  e''8. | % 24
      d''8. (   e''8   fis''16 [
      e''16  d''16 ] \break | % 25
      cis''8. ~   cis''8  b''8. ~  | % 26
      b''8.  a''16   [g''16 ] fis''16 )
      e''16  d''16 | % 27
      cis''8. (   d''8 )  e''8.  | % 28
      d''8. ~   d''8 ~  d''8.  \bar "||"
      \break | % 29
      \tempo "Moderato" g'8.^\<  a'8
      bes'8. |
      cis''8.  d''8 ~   d''8.  | % 31
      e''8 (  ^\!  f''16 )   g''16 (
      [f''16] )  e''8 ( ^\>  d''16 )  | % 32
      cis''8.   bes'8 ( ~   bes'8 [  a'16
      ) ] ^\! \break | % 33
      bes'8 (    [a'16]   g'8 ~  g'8. )  | % 34
      g'8. ^\<  a'8  bes'8. | % 35
      cis''8. \acciaccatura {  e''8 ( }  d''8 )
      ~  d''8. | % 36
      g''8 ( ^\fermata  _\!  f''16 )   e''8
      d''8.  | % 37
      cis''8. (   bes'8 ~  bes'8. )  | % 38
      a'16 ( [  bes'16  cis''16 ) ]
      d''16 ( [  cis''16 ) ]  bes'16 ( [ ^\>  a'16
      g'16 ) ] | % 39
      a'8.  bes'8 ( ~  bes'8 [  g'16 ) ] |

      a'8. ~   a'8 ~  a'8.  ^\! \bar "||"
      \break | % 41
       
      \tempo "Allegro" a'8. ^\p  e''8
      d''8. | % 42
      cis''8.  d''8 ~   d''8.  | % 43
      cis''8.  bes'8  a'8. | % 44
      bes'8 ( [  a'16 )  ] g'8 ~  g'8.  \break
      | % 45
      g'8 ( [  a'16 )  ] bes'8 ~  bes'8.  | % 46
      d''8 ( [  cis''16 ) ]  bes'16 ( [
      a'16 ] g'8. )  | % 47
      a'8.  d''8 ~   d''8. 
       | % 48
      g''8. ( ^\fermata  a''16 [  g''16 )
      ] f''8. ~ \break | % 49
      f''8. ~   f''8 ~  f''8.  |
      e''8 (   d''16 )  d''8 ~  d''8.
      | % 51
      g''8 (  f''16 )  e''8 (  d''8.
      )  | % 52
      cis''8.   cis''8 (  bes'8. )  \break | % 53
      a'8.  g'8 ~ [  g'8. ] | % 54
      a'8. ~   a'8 ~  a'8.  | % 55
      R2 \bar "||"
      \time 9/16  | % 56
      \tempo "(Tempo I)"
      d'8 ^\<  d'8  f'8  a'8. \break | % 57
      d''8 ~ d''8  ^\!  d''8 ~ (  \once \override PhrasingSlur.direction = #down \afterGrace d''8. \fermata   \( { e''32  [d'' cis'' d''\))]}
      | % 58
      \time 8/16  | % 58
      g''8.  g''16 ( [  a''16 ) ]
      bes''32 ( ^\fermata [  a''32  g''32  f''32
      e''32  d''32 ) ] | % 59
      e''8. \acciaccatura {  f''16 [  e''16 ] }
      d''8 ~  d''8. \break |
      cis''8.  bes'8 ( ~   bes'8.  ^\> | % 61
      a'16 [  bes'16  cis''16 ]  d''16
      [  cis''16 ]  bes'16 [  a'16 )  ] g'16
      | % 62
      bes'8.  a'8 ~   a'8. \break | % 63
      a'8. ^\!  a'8  f''8. ~ | % 64
      f''8. ~   f''8  a''8. ^\fermata  | % 65
      g''8. (   f''8 )   e''8. | % 66
      d''8. (   e''8   f''16 [  e''16
      d''16 ) ] \break | % 67
      cis''8. ~   cis''8  r8. | % 68
      cis''8. (   d''8 )   e''8. | % 69
      a''8. ~  a''8 ~  a''8. |

      d''8. ~  d''8 ~  d''8.  \bar "|."
    }

    \addlyrics {
      Ми -- ла мо -- я ма -- мо, __
      мо -- е -- то Слън -- це __ днес
      ще из -- гре -- е. __  То Свет --
      ли -- на __  и Ра -- дост ще __
      ми __ до  -- не -- се. __
      Ми -- ла мо -- я ма -- мо, __
      мо --  е -- то Слън -- це __
      днес ще из -- гре -- е  __ и
      Ра -- дост свет --  ла то __
      в~Жи -- во  --
      та ми ще
      вне -- се. __   То -- га -- ва, ма
      -- мо, __ аз  ще  __ се __  про
      -- я --  вя,  __  го --
      тов ще бъ -- да __ да  про
      -- я -- вя  __ До --  бро
      -- то  __  във све --
      та. __ Ще мис -- ля до --
      бре, __  ще "чув-" -- ствам до --
      бре, __  ще  по -- стъп --
      вам __   до -- бре, __  ма --
      мо.  __   Ти __  ще __
      и -- маш, __  ма -- мо, __  до --
      бър __  син. __   Ми -- ла мо --
      я ма  --  мо, __ мо -- е -- то __
      Слън --  це __
      днес __ ще  __
      из -- гре -- е __  и Жи
      -- во --  та ми __  то с~Ра
      --    дост __  ще __  из
      -- пъл --  ни. __
    }
    \addlyrics {
      Mi -- la mo -- ja ma -- mo, __
      mo -- e -- to Slăn -- ce __ dnes
      šte iz -- gre -- e. __ To Svet --
      li -- na __ i Ra -- dost šte __
      mi __  do  -- ne -- se. __
      Mi -- la mo -- ja ma -- mo, __
      mo --  e -- to Slăn -- ce __
      dnes šte iz -- gre -- e __ i
      Ra -- dost svet --  la to __
      v~Ži -- vo  --
      ta mi šte
      vne -- se. __   To -- ga -- va, ma
      -- mo,  __ az  šte __ se __ pro
      -- ja --  vja,  __  go --
      tov šte bă -- da __ da  pro
      -- ja -- vja __ Do --  bro
      -- to __ văv sve --
      ta. __ Šte mis -- lja do --
      bre, __ šte čuv -- stvam do --
      bre, __  šte  po -- stăp --
      vam __  do -- bre, __  ma --
      mo.  __   Ti __  šte __
      i -- maš, __  ma -- mo, __  do --
      băr __  sin. __   Mi -- la mo --
      ja ma  --  mo, __ mo -- e -- to __
      Slăn --  ce __
      dnes __ šte __
      iz -- gre -- e __ i Ži
      -- vo --  ta mi __  to s~Ra
      --    dost __  šte __  iz
      -- păl --  ni. __
    }

    \header {
      title = \titleFunc "Моето слънце днес ще изгрее" "Moeto slănce dnes šte izgree"
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "../../lyrics/de/212_moeto_slunce_dnes_ste_izgree_lyrics_de.ly"

} % bookpart

% Più mosso
%
