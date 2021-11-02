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
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 63)" }
        }
      }
      \autoBeamOff
      c'4 ( \once \omit TupletBracket
      \times 4/5  {
        c'16 ) ( [  d'16  e'16  f'16
        g'16 ]
      }
      a'8 )    a'8  | % 2
      \time 2/4  | % 2
      a'8. ( ^\fermata [  g'16 ]  a'16 [  g'16
      ) ]  f'16 ( [ ^\markup{ \bold {Sostenuto} }  e'16 ) ]
      | % 3
      \time 3/4  | % 3
      f'16 ( [  e'16 ) ]  d'16 ( [  c'16 ) ]
      d'2 \break | % 4
      \time 4/4  | % 4
      e'4. ^\markup{ \bold {a tempo} }  f'8  g'8 ( [
      a'8 ) ]  f'8 ^\markup{ \bold {Sostenuto} }  g'16
      g'16 | % 5
      \time 3/4  | % 5
      e'8 ( [ ^\markup{ \bold {a tempo} }  f'8 ) ]
      e'2 | % 6
      g'4.  e'8  f'8  e'8 | % 7
      d'8 ( [  c'8 ) ]  d'2 \break | % 8
      a'4.  g'8  c''8 ( [  bes'8 ) ] | % 9
      a'8  g'8  g'4 (  a'16 [  g'16
      f'16  e'16 ) ] |
      f'8 ( [  g'8 ) ]  e'2 | % 11
      g'8  g'4  f'8  e'8  f'8 \break  | % 12
      e'8  c'8  d'2 | % 13
      \time 5/4  | % 13
      c'4 ( ^\markup{ \bold {Largamente} }  f'4 )
      e'4  e'2 | % 14
      c'4 (  f'4 )  e'4  e'2 | % 15
      \time 2/4  | % 15
      g'4.  f'16 ( [  e'16 ) ] \break | % 16
      f'8 ( [  e'8 ) ]  f'8 ( [  e'8 ) ] | % 17
      d'2 ^\fermata \bar "||"
      \key bes \major | % 18
      g'8  a'4  g'8 | % 19
      fis'4  es'8 ( [  d'8 ) ] |
      es'8  fis'4  es'16 (   d'16 )  \break | % 21
      es'8 ( [  d'8 ) ]  c'4   | % 22
      c'4.  d'16  es'16 | % 23
      \time 4/4  | % 23
      fis'4  g'2  fis'4 | % 24
      \time 3/4  | % 24
      es'8 ( [  d'8 ) ]  c'2 | % 25
      \time 2/4  | % 25
      a'8 ( [  bes'16  a'16 ) ]  g'8
      fis'8 \break  | % 26
      g'4  c''4 ^\fermata  | % 27
      bes'8 (
      \times 2/3  {
        a'16 [  bes'16  a'16 ) ]
      }
      g'8 ( [  fis'8 ) ] | % 28
      g'2  | % 29
      \time 4/4  | % 29
      bes'4  d''2  bes'4 |
      \time 3/4  |
      a'8 ( [  g'8 ) ]  a'2 \break | % 31
      cis''4. (  d''16 [  cis''16 ]
      bes'8 [  a'8 ) ] | % 32
      g'8 ( [  a'8 ) ]  a'2 | % 33
      \time 2/4  | % 33
      bes'8  bes'8  cis''4 | % 34
      bes'4 \prall  a'4 \break | % 35
      \time 4/4  | % 35

      \times 2/3  {
        bes'8  a'8  g'8
      }
      g'2  d'8  d'8 | % 36
      \time 3/4  | % 36
      g'4 (  a'2 ) \break  | % 37
      \time 2/4  | % 37
      c''8  bes'8  a'8 ( [  g'8 ) ]  | % 38
      \time 3/4  | % 38
      a'4  a'2  | % 39
      \time 2/4  | % 39
      g'8  g'8  fis'4 |
      es'2 \break | % 41
      fis'8  es'8  d'4 | % 42
      d'2 | % 43
      c'4.  d'16 ( [  es'16 ) ] | % 44
      fis'2 | % 45
      g'8  es'8  d'4 \break | % 46
      \time 3/4  | % 46
      \once \omit TupletBracket
      \times 2/3  {
        es'8 ( [  d'8  c'8 ) ]
      }
      d'2 | % 47
      \time 2/4  | % 47
      c'8 ( [  d'8 ) ]  es'8  c'8  | % 48
      \time 3/4  | % 48
      d'4  d'2 | % 49
      \time 2/4  | % 49
      g'8  fis'4  g'8 |
      \time 3/4  |
      a'4  g'2 \break | % 51
      es'8  fis'8  es'4.  c'8 | % 52
      d'4  es'8 ( [  fis'8 ) ]
      \times 2/3  {
        g'8 ( [  es'8  fis'8 ) ]
      }
      | % 53
      \time 2/4  | % 53
      d'2 \bar "||"
      \key g \major \time 4/4 | % 54
        \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      }
      d'4 (  g'4 )  d'4  b8. c'16
      | % 55
      \time 3/4  | % 55
      d'4  d'2 | % 56
      e'4 (  a'4. )  g'8 | % 57
      \time 4/4  | % 57
      fis'2  g'2 \bar "||"
      \time 2/4  | % 58
      d'8 ^\markup{ \bold {Vivo} }  b'4  d''8 \break  | % 59
      \times 2/3  {
        c''8   c''8  b'8
      }
      c''8 ( [  d''8 ) ] |
      b'2 | % 61
      b'8  a'4  g'8 | % 62
      g'8  fis'8  fis'8  e'8 | % 63
      e'2 | % 64
      c''8  e'4  e'8 | % 65
      e'8  d'8  d'8  c''8 | % 66
      b'2 | % 67
      b'8  a'4  g'8 \break | % 68
      fis'8  g'8  a'8  b'8 | % 69
      g'2 |
      c''8  e'4  e'8 | % 71
      e'8  d'8  d'8  c''8 | % 72
      b'2  | % 73
      e'8  e'4.\break | % 74
      e'8  fis'8  g'8  g'8 | % 75
      g'2  | % 76
      e''8  a'4  b'8 | % 77
      c''8 ( [  b'8 ) ]  c''8  d''8 | % 78
      b'8  b'4. \break | % 79
      b'8  a'4  g'8 |
      fis'8  g'8  a'8  b'8 | % 81
      g'8  g'4. | % 82
      fis'8  e'4  d'8 \break |
      d'4  d'8  d'8 | % 84
      d'8 ( [  g'8 ) ]  g'4 | % 85
      \time 3/4  | % 85
      c''4  e'4.  e'8 | % 86
      e'8 ( [  d'8 ) ]  d'2 | % 87
      c''8 ( [  b'8 ) ]  a'8  g'8
      a'8.  b'16  \break | % 88
      a'8 ( [  g'8 ) ]  g'2 | % 89
      \time 4/4  | % 89
      b'4 ^\markup{ \bold {Maestoso} }  g'4  e'4
      d'4 |
      e'8.  fis'16  g'2  b'4 | % 91
      d''4  b'4  e''4.  d''8 \break | % 92
      c''8 ( [  b'8 ) ]  c''8 ( [
      d''8 ) ]  b'2 | % 93
      b4.  c'8  d'2 | % 94
      a4. ^\markup{ \bold {rit.} }  b8  c'4
      e'4 | % 95
      d'4  c'4  b2 \bar "|."
    }

    \addlyrics {
      Стра --  шен
      бе --   ше  вя -- тъ
      -- рът, що раз -- друс -- ва --
      ше го -- ра -- та. Стра -- шен
      бе и си -- лен. Всич -- ки -- те
      лис -- та шу --
      мя -- ха, шу -- мя -- ха и се
      мо -- ле -- ха: „Спри,  вет --
      ре, спри,  вет -- ре, во -- лен
      раз -- ви -- гор! Не ни
      ли жа -- лиш?  По -- спри, не
      ду -- хай! Е -- два през та
      -- зи го -- ди -- на ту --
      ка дой -- дох -- ме на  __
      гос -- ти. Не ду -- хай, ве --
      тре, ще      пад --
      нем, ще ни се стро -- шат ре --
      бър -- ца -- та.“– „Ой ви вас,
      мал -- ки лис -- тен -- ца,
      за вас аз чух от -- да -- ле -- ко
      и дой -- дох да ви на -- ви
      --  дя, да  по -- и -- гра --
      я и ви по -- ду -- хам, да -- ре --
      не да ви до -- не --  са.
      Слу -- шай -- те то -- га -- ва
      мой -- та пе -- сен: След ме --
      не е -- то прис -- ти -- га дру
      -- гар ми ве -- рен, дре -- бен
      дъжд. Той ще по -- ле -- е по --
      ле -- то, ще го при -- гот -- ви
      за и -- гри. Прах да се, лис --
      ти, не вди -- га при тез и -- гри
      ве -- се -- ли. От -- го -- ре Слън
      -- це ще пек -- не, да ни о --
      гре -- е и за -- топ -- ли; да си
      по -- троп -- нем то -- га  -- ва,
      да си по -- хап  -- нем, чис
      -- та во -- да да пи  -- ем,
      сра -- дост да се раз -- де --
      лим. На -- но -- во да се срещ
      -- нем  пак и до -- бре с‿о
      -- бич да се раз -- бе -- рем.“}
      \addlyrics { Stra --      shen
      be --   she  vya -- ta
      -- rat, shto raz -- drus -- va --
      she go -- ra -- ta. Stra -- shen
      be i si -- len. Vsich -- ki -- te
      lis -- ta shu --
      mya -- ha, shu -- mya -- ha i se
      mo -- le -- ha: „Spri,  vet --
      re, spri,  vet -- re, vo -- len
      raz -- vi -- gor! Ne ni
      li zha -- lish?  Po -- spri, ne
      du -- hay! E -- dva prez ta
      -- zi go -- di -- na tu --
      ka doy -- doh -- me na  __
      gos -- ti. Ne du -- hay, ve --
      tre, shte      pad --
      nem, shte ni se stro -- shat re --
      bar -- tsa -- ta.“– „Oy vi vas,
      mal -- ki lis -- ten -- tsa,
      za vas az chuh ot -- da -- le -- ko
      i doy -- doh da vi na -- vi
      --  dya, da  po -- i -- gra --
      ya i vi po -- du -- ham, da -- re --
      ne da vi do -- ne --  sa.
      Slu -- shay -- te to -- ga -- va
      moy -- ta pe -- sen: Sled me --
      ne e -- to pris -- ti -- ga dru
      -- gar mi ve -- ren, dre -- ben
      dazhd. Toy shte po -- le -- e po --
      le -- to, shte go pri -- got -- vi
      za i -- gri. Prah da se, lis --
      ti, ne vdi -- ga pri tez i -- gri
      ve -- se -- li. Ot -- go -- re Slan
      -- tse shte pek -- ne, da ni o --
      gre -- e i za -- top -- li; da si
      po -- trop -- nem to -- ga  -- va,
      da si po -- hap  -- nem, chis
      -- ta vo -- da da pi  -- em,
      s‿ra -- dost da se raz -- de --
      lim. Na -- no -- vo da se sresht
      -- nem  pak i do -- bre s‿o
      -- bich da se raz -- be -- rem.“}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Езикът на живата природа }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 {Ezikat na zhivata priroda }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \pageBreak


    % include foreign translation(s) of the song
    \include "lyrics_de/130_ezikat_na_zhivata_priroda_lyrics_de.ly"

  } % bookpart
