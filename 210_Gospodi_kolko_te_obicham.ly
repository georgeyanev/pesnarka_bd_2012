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
      \key g \major
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 80)" }
        }
      }
      \autoBeamOff
      \partial 4
      ^\p ^\<  d'4 ( | % 2
      e'2. ) | % 3
      d'2. ^\! ^\> | % 4
      d'2. | % 5
      d'4 ^\! g'4.. a'16 | % 6
      b'2 a'4 | % 7
      g'4 ( fis'4 ) g'4 | % 8
      r2 d'4 ( ^\mf \break | % 9
      \time 6/4  | % 9
      d''2 ) ^\<  c''4  d''4 ^\!  b'2
      ^\> |
      \time 4/4  |
      a'4.. ( ^\!  bes'16 ) g'4 f'4 | % 11
      es'4.. ( f'16 ) d'2 | % 12
      \time 3/4  | % 12
      r2 b4 ^\p | % 13
      d'2 ^\< c'4 ^\! \break | % 14
      b2 r4 | % 15
      a2 ^\> b4 | % 16
      g2 ^\! r4 \bar "||"
      \time 3/8  | % 17
      r8 r8 a16 ( [ ^\mp d'16 ) ] | % 18
      g'4 ^\< fis'16 ( [ g'16 ) ] | % 19
      b'4 a'16 ( [ ^\! g'16 ) ] |
      fis'4 ^\> e'8 \break | % 21
      e'4 ( fis'8 ) | % 22
      d'4. ~ | % 23
      d'8 ^\! r8 g'16 ( [ a'16 ) ] | % 24
      b'4 \once \omit TupletBracket
      \times 2/3  {
        a'16 ( [ b'16 a'16 ) ]
      }
      | % 25
      d''4 \once \omit TupletBracket
      \times 2/3  {
        c''16 ( [  d''16  c''16 ) ]
      }
      | % 26
      b'4 \once \omit TupletBracket
      \times 2/3  {
        a'16 ( [ g'16 fis'16 ) ]
      }
      \break | % 27
      g'8 ( ~ [ g'16 a'16 b'16 c''16
      ) ] | % 28
      d''16 -. [  e''16 -.  fis''16 -.
      g''16 -.  d''8 ~ ] | % 29
      d''4  b'16 ( [  c''16 ) ] |
      b'4 a'8 | % 31
      g'8.  fis'16 ( a'32 [ g'32
      fis'32 e'32 ) ] | % 32
      d'4 c'8 \break | % 33
      c'4 ( d'8 ) | % 34
      b4. \bar "||"
      \time 3/4  | % 35
      % 35
      b4 d'4 ^\mf g'4 | % 36
      b'2 (  c''16 [  b'16  a'16
      b'16 ] | % 37
      d''4 )  c''4 a'4 | % 38
      a'2  b'4 \break | % 39

      g'2 r4 |
      f'2. ^\mp | % 41
      es'2. | % 42
      es'2 f'4 | % 43
      d'2. | % 44
      d'4 ^\p c'4 b4 \break | % 45
      c'4 ( e'4 ) e'4 | % 46
      d'2 d'4 ^\p ^\< | % 47
      e'2 fis'4 ^\! | % 48
      g'2 ^\> d'4 ^\! ^\mp | % 49
      b'2 ^\< a'4 ^\! ^\> \break |
      g'2 d'4 ^\! ^\pp | % 51
      fis'2 ^\< e'4 ^\! ^\> | % 52
      d'2 r4 ^\! | % 53
      d'4 ( e'4 ) ^\fermata d'4
      ^\markup{
        \italic
        {rall.}
      }
      ^\ppp | % 54
      d'2. ~^\> | % 55
      d'2. \bar "|."
    }

    \addlyrics {
      Гос -- по --
      ди, кол -- ко Те лю -- бя! Бо -- же, Гос -- по
      -- ди мой, кол -- ко Те лю -- бя! О -- би -- чам
      Те, Гос -- по -- ди! О -- би -- чам Тво -- и --
      те дръв -- че -- та, о -- би -- чам Тво -- и --
      те цве -- тен --  ца, о -- би
      -- чам Тво -- и -- те ре -- кич -- ки, о -- би --
      чам Тво -- и -- те  пла -- ни -- ни всич -- ко,
      Гос -- по -- ди, ко -- е -- то Си съз -- дал. О
      -- би -- чам Те, о -- би -- чам Те, о -- би --
      чам Те, Гос -- по -- ди!}
      \addlyrics {     Gos -- po --
      di, kol -- ko Te lyu -- bya! Bo -- zhe, Gos -- po
      -- di moy, kol -- ko Te lyu -- bya! O -- bi -- cham
      Te, Gos -- po -- di! O -- bi -- cham Tvo -- i --
      te drav -- che -- ta, o -- bi -- cham Tvo -- i --
      te tsve -- ten --  tsa, o -- bi
      -- cham Tvo -- i -- te re -- kich -- ki, o -- bi --
      cham Tvo -- i -- te  pla -- ni -- ni vsich -- ko,
      Gos -- po -- di, ko -- e -- to Si saz -- dal. O
      -- bi -- cham Te, o -- bi -- cham Te, o -- bi --
      cham Te, Gos -- po -- di!}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Господи, колко те любя.}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Gospodi, kolko te lyubja }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score


    % include foreign translation(s) of the song
   \include "lyrics_de/210_Gospodi_kolko_te_obicham_lyrics_de.ly"

  } % bookpart
