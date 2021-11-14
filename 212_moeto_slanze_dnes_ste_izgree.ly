\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
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
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      %ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 9/16
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Maestoso" \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 132)" }
        }
      }
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
      cis''8. ( ~   cis''8  b''8. ~  | % 12
      b''8.  a''16 [  g''16 ]  fis''16
      [  e''16  d''16 ) ] \break | % 13
      cis''8. (   d''8 )   e''8. | % 14
      d''8. ~   d''8 ~  d''8. \bar "||"
      \time 9/16  | % 15
      d'8 ^\p ^\<  d'8  f'8  a'8. | % 16
      d''8 ~   d''8  d''8 ~  d''8.
      \break | % 17
      \time 8/16  | % 17
      f''8. ^\! \grace {  g''16 ( [  f''16 ] }
      e''8 )  d''8. ^\> | % 18
      e''8.  d''8 ~   d''8.  | % 19
      cis''8.  bes'8  g'8. |
      bes'8.  a'8 ~  ^\!  a'8.  \break | % 21
      \time 9/16  | % 21
      a'8  a'8  a'8   f''8. ~  | % 22
      \time 8/16  | % 22
      f''8. ~   f''8   a''8. | % 23
      g''8. ( [  f''8 ) ]  e''8. | % 24
      d''8. (   e''8   fis''16 [
      e''16  d''16 ) ] \break | % 25
      cis''8. ~   cis''8  b''8. ~  | % 26
      b''8.  a''16   [g''16 ] fis''16
      e''16  d''16 | % 27
      cis''8. (   d''8 )  e''8.  | % 28
      d''8. ~   d''8 ~  d''8.  \bar "||"
      \break | % 29
      g'8. ^\markup{ \bold {Moderato} } ^\<  a'8
      bes'8. |
      cis''8.  d''8 ~   d''8.  | % 31
      e''8 (  ^\!  f''16 )   g''16 (
      [f''16] )  e''8 ( ^\>  d''16 )  | % 32
      cis''8.   bes'8 ( ~   bes'8 [  a'16
      ) ] ^\! \break | % 33
      bes'8 (    a'16   g'8 ~  g'8. )  | % 34
      g'8. ^\<  a'8  bes'8. | % 35
      cis''8. \acciaccatura {  e''8 ( }  d''8 )
      ~  d''8. | % 36
      g''8 ( ^\fermata  _\!  f''16 )   e''8
      d''8.  | % 37
      cis''8. ( [  bes'8 ~  bes'8. ) ] | % 38
      a'16 ( [  bes'16  cis''16 ) ]
      d''16 ( [  cis''16 ) ]  bes'16 ( [ ^\>  a'16
      g'16 ) ] | % 39
      a'8.  bes'8 ( ~  bes'8 [  g'16 ) ] |

      a'8. ~ [  a'8 ~  a'8. ] ^\! \bar "||"
      \break | % 41
      \key bes \major | % 41
      a'8. ^\p ^\markup{ \bold {Allegro} }  es''8
      d''8. | % 42
      cis''8.  d''8 ~ [  d''8. ] | % 43
      cis''8.  bes'8  a'8. | % 44
      bes'8 ( [  a'16 )  g'8 ~  g'8. ] \break
      | % 45
      g'8 ( [  a'16 )  bes'8 ~  bes'8. ] | % 46
      d''8 ( [  cis''16 ) ]  bes'16 ( [
      a'16  g'8. ) ] | % 47
      a'8.  d''8 ~ [  d''8. ] \bar "||"
      \key f \major | % 48
      g''8. ( ^\fermata  a''16 [  g''16 )
      f''8. ~ ] \break | % 49
      f''8. ~ [  f''8 ~  f''8. ] |
      e''8 ( [  d''16 )  d''8 ~  d''8.
      ] | % 51
      g''8 ( [  f''16 )  e''8 (  d''8.
      ) ] | % 52
      cis''8. [  cis''8 (  bes'8. ) ] \break | % 53
      a'8.  g'8 ~ [  g'8. ] | % 54
      a'8. ~ [  a'8 ~  a'8. ] | % 55
      R2 \bar "||"
      \time 9/16  | % 56
      d'8 _\<  d'8  f'8  a'8. \break | % 57
      d''8 ~ [ _\!  d''8  d''8 ~  d''8.
      ] | % 58
      \time 8/16  | % 58
      g''8.  g''16 ( [  a''16 ) ]
      bes''32 ( ^\fermata [  a''32  g''32  f''32
      e''32  d''32 ) ] | % 59
      e''8. \grace {  f''16 ( [  e''16 ] }
      d''8 ) ~  d''8. \break |
      cis''8.  bes'8 ( ~ [  bes'8. ] _\> | % 61
      a'16 [  bes'16  cis''16 ]  d''16
      [  cis''16 ]  bes'16 [  a'16 )  g'16 ]
      | % 62
      bes'8.  a'8 ~ [  a'8. ] \break | % 63
      a'8. _\!  a'8  f''8. ~ | % 64
      f''8. ~ [  f''8  a''8. ^\fermata ] | % 65
      g''8. ( [  f''8 ) ]  e''8. | % 66
      d''8. ( [  e''8 ]  f''16 [  e''16
      d''16 ) ] \break | % 67
      cis''8. ~ [  cis''8 ] r8. | % 68
      cis''8. ( [  d''8 ) ]  e''8. | % 69
      a''8. ~ [  a''8 ~  a''8. ] |

      d''8. ~ [  d''8 ~  d''8. ] \bar "|."
    }

    \addlyrics {
      Ми -- ла мо -- я ма -- мо,
      мо -- е -- то Слън -- це  днес
      ще из -- гре -- е.  То Свет --
      ли -- на  и Ра -- дост ще
      ми   до  -- \skip1 не -- се.
      Ми -- ла мо -- я ма -- мо,
      мо --  е -- то Слън -- це
      днес ще из -- гре -- е  и
      Ра -- дост свет --  ла то
      в~Жи -- во  --
      \skip1 \skip1 \skip1 \skip1 та ми ще
      вне -- се.   То -- га -- ва, ма
      -- мо,  аз  ще  се  про
      -- я --  вя,  __   го --
      тов ще бъ --   да  про
      -- я -- вя  __  До --  бро
      -- то   във све --
      та.  __  Ще мис -- ля до --
      бре,  ще чув -- ствам до --
      бре,  ще  по -- стъп --
      вам   до -- бре,  ма --
      мо.  __   Ти  ще
      и -- маш,  ма -- мо,  до --
      бър  син.   Ми -- ла мо --
      я ма  -- мо,  мо -- е -- то
      Слън --  це
      днес ще  --
      из -- гре -- е  и Жи
      -- во --  та ми  то с~Ра
      --    дост  ще  из
      -- пъл --  ни.
    }
    \addlyrics {
      Mi -- la mo -- ya ma -- mo,
      mo -- e -- to Slan -- tse  dnes
      shte iz -- gre -- e.  To Svet --
      li -- na  i Ra -- dost shte
      mi   do  --
      \skip1 ne -- se.
      Mi -- la mo -- ya ma -- mo,
      mo --  e -- to Slan -- tse
      dnes shte iz -- gre -- e  i
      Ra -- dost svet --  la to
      v~Zhi -- vo  --
      \skip1 \skip1 \skip1 \skip1 ta mi shte
      vne -- se.   To -- ga -- va, ma
      -- mo,  az  shte  se  pro
      -- ya --  vya,  __   go --
      tov shte ba --   da  pro
      -- ya -- vya  __  Do --  bro
      -- to   vav sve --
      ta.  __  Shte mis -- lya do --
      bre,  shte chuv -- stvam do --
      bre,  shte  po -- stap --
      vam   do -- bre,  ma --
      mo.  __   Ti  shte
      i -- mash,  ma -- mo,  do --
      bar  sin.   Mi -- la mo --
      ya ma  -- mo,  mo -- e -- to
      Slan --  tse
      dnes shte  --
      iz -- gre -- e  i Zhi
      -- vo --  ta mi  to s~Ra
      --    dost  shte  iz
      -- pal --  ni.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Заглавие }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Zaglavie }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/212_moeto_slunce_dnes_ste_izgree_lyrics_de.ly"

} % bookpart
