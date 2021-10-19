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

    \new Voice \relative c' {
      \clef treble
      \key c \minor
      \time 3/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      \partial 4
      \times 2/3 { es8 ( [  f8 ) ] g8 } | % 2
      bes4c2 | % 3
      bes4  g4
      \times 2/3  {
        es8 ( [  f8 ) ] g8
      }
      | % 4
      g2
      \times 2/3  {
        g8 ( [  bes8 ) ] c8
      }
      | % 5
      d2
      \times 2/3  {
        g,8   bes8  c8
      }
      \break
      | % 6
      d2
      \times 2/3  {
        g,8 bes8 d8
      }
      | % 7
      \time 4/4
      es2 d8 c8 bes8
      g8 | % 8
      \time 3/4  | % 8
      es2
      \times 2/3  {
        es8 ( [  f8 ) ] g8
      }
      | % 9

      \break
      c4  as4  g8.  g16 |

      \time 2/4  |
      f4  g8. ( [  f16 ) ] | % 11
      es2 | % 12
      bes'4 es4  | % 13
      d4 d4 | % 14
      c4 bes8  g8 \break  | % 15
      \time 3/4  | % 15
      es2
      \times 2/3  {
        c8 ( [  d8 ) ] es8
      }
      | % 16
      \time 2/4  | % 16
      g4  f8.  f16 | % 17
      bes2 ^\fermata | % 18
      bes4 (es4 ) | % 19
      d4 d4 |
      c4  bes8 ( [  g8 ) ] \break | % 21
      \time 3/4  | % 21
      es2
      \times 2/3  {
        c8 ( [  d8  es8 ) ]
      }
      | % 22
      \time 2/4  | % 22
      g4 (  f8. [  es16 ) ] | % 23
      es2 \bar "||"
      \time 3/4  | % 24
      \tempo "Più mosso" 4=84 | % 24
      es'8 d8 c2 | % 25
      c8 bes8  as2 \break | % 26
      as8  g8  f8  g8  as8
      c8| % 27
      bes2
      \times 2/3  {
        es,8   f8  g8
      }
      | % 28
      c2
      \times 2/3  {
        c,8 ( [  d8  es8 ) ]
      }
      | % 29
      \time 2/4 bes'4 (  as4 ) | \break
      \time 3/4
      d8c8
      bes8  as8  f8  c8  bes16 (
      [  d16  f16  as16 ) ]  % 31
      g4.  f8  f4  % 32
      es2  | % 33
      g'8 ( [f8 ) ] es2 | \break % 34
      es8 ( [d8 ) ]c2 | % 35
      d16 c16 b16 c16
      as'2 ^\fermata | % 36
      \times 2/3  {
        f8 ( [d8 ) ] bes8
      }
      \times 2/3  {
        as8 ( [  f8  d8 ) ]
      }
      bes4 ^\fermata  | % 37
      d8 f8 as2 \break | % 38
      f8 as8  d2 | % 39
      as8  d8  f2 |
      bes,8 a8  bes8  c8
      d8  es8 | % 41
      f2. | % 42
      es2. \bar "|."

    }

    \addlyrics {
      Ми  -- ли Бо -- же, чуй ни пе
      -- сен -- та– пе -- ем ний
      за Слън -- це -- то, за про -- лет
      -- та. Чуй ни пе -- сен -- та: Про
      -- лет и -- де, нов жи -- вот но
      -- си. Пър -- во цве -- те на
      про -- лет -- та– бу  -- дя всич
      -- ки от сън, мен  пър -- во
      Слън -- це -- то ме   виж
      --  да. Слън -- чи -- це, Бо --
      жи дар, ти си из -- вор на Жи --
      вот, ти ни из -- пра -- щаш
      лъч,  що раз -- тва -- ря све --
      жи, неж --   ни лис -- тен
      -- ца. Про -- лет, про -- лет,
      пъл -- на със Жи -- вот, веч  --
      на про --  лет, ти си рай.
      Бо -- жи дар, Бо -- жи дар, сал
      за те -- бе аз жи -- ве -- я.}
      \addlyrics { Mi  -- li Bo -- zhe, chuy ni pe
      -- sen -- ta– pe -- em niy
      za Slan -- tse -- to, za pro -- let
      -- ta. Chuy ni pe -- sen -- ta: Pro
      -- let i -- de, nov zhi -- vot no
      -- si. Par -- vo tsve -- te na
      pro -- let -- ta– bu  -- dya vsich
      -- ki ot san, men  par -- vo
      Slan -- tse -- to me   vizh
      --  da. Slan -- chi -- tse, Bo --
      zhi dar, ti si iz -- vor na Zhi --
      vot, ti ni iz -- pra -- shtash
      lach,  shto raz -- tva -- rya sve --
      zhi, nezh --   ni lis -- ten
      -- tsa. Pro -- let, pro -- let,
      pal -- na sas Zhi -- vot, vech  --
      na pro --  let, ti si ray.
      Bo -- zhi dar, Bo -- zhi dar, sal
      za te -- be az zhi -- ve -- ya.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Пролетна песен }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Proletna pesen }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score



    % include foreign translation(s) of the song
    \include "lyrics_de/124_proletna_pesen.ly"

  } % bookpart
