\version "2.24.4"

\include "include/globals.ily"

startParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
                                            (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
                                              (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
                                            (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
                                              (list point-stencil (cadr par-list))))
}

\bookpart {
  \label #'ref122
  \tocItem \markup "Радост и скръб"
\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t


  % put page numbers on the top and change the font style.
  oddHeaderMarkup = \markup
  \fill-line {
    ""
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
  }
  %% evenHeaderMarkup would inherit the value of
  %% oddHeaderMarkup if it were not defined here
  evenHeaderMarkup = \markup
  \fill-line {
    \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    ""
  }

  oddFooterMarkup = \markup ""

  evenFooterMarkup = ""
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
  top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

  % change distance between staves
  system-system-spacing =
  #'((basic-distance . 14)
     (minimum-distance . 6)
     (padding . 2)
     (stretchability . 12))
}
  \score {
    \include "include/score-layout.ily"


    \new Staff \relative c' {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      a8.  b16  c4  d4 | % 2
      e8.  e16  e2 | % 3
      a8  g8  f8  d8  e8
      f8 |  % 4
      e2  a8.  a16  | \break % 5
      a8  a8  c4  b8  a8 | % 6
      \time 2/4  | % 6
      g4  f8 [(  d8 )] | % 7
      e2 | % 8
      \time 5/4  | % 8
      d4  d8  e8  f4  a2 | \break % 9
      \time 2/4  | % 9
      g8  f8  e8  d8   | \time 4/4 f4
      e4.  a,8  b8  c8 | % 11
      \time 3/4 c4  b2  | \break % 12
      g'8  f8  e8  d8
      \tuplet 3/2 { c8 ( [  b8 )]  a8  }
      |  % 13
      a4.  a8  b8  c8 | % 14
      c4  b2  \break | % 15
      g'8  f8  e8  d8
      \tuplet 3/2 { c8 ( [  b8] ) a8 }
      | % 16
      a2 r4 \bar "||" % 17
      \tempo"Più mosso" a2 e'4 | % 18
      a2  g4 | % 19
      f2. |
      d2  e8 ( [  f8 ) ] | \break % 21
      g2  f4 |  % 22
      e2 (  d4 ) | % 23
      e2. \bar "||" |
      \tempo"Largamente" e4 f4  c4  | % 25
      e2. \bar "||"
      \tempo "Più mosso" a2 a4 | % 27
      c2  b4  | \break % 28
      b2 ( a8 [  b8 ) ] | % 29
      a2 (  g4 ) |
      f2  e8 ( [  f8 ) ] | % 31
      g2  f4 | % 32
      e2  c8 ( [  d8 ) ] | % 33
      e2. | % 34
      a,2  a8 ( [  b8 ) ] \break | % 35
      c2 (  d4 ) | % 36
      e2 (  f4 ) | % 37
      e2  d4 | % 38
      c2  b4 | % 39
      a2  gis4 |
      b2. | % 41
      a2. \bar "||"
      \break  | % 42
      \tempo"Poco più agitato" a8. b16
      c8  d8  e8.  e16 | % 43
      \time 2/4  | % 43
      e2 | % 44
      \time 4/4  | % 44
      \tuplet 3/2 {f8   e8  d8 }
      \tuplet 3/2 {c8  d8  e8 }
      e2  |
      a4.  g8  a16  g16  f16
      e16  d16  c16  d16  e16 | % 46
      e2  a4  gis8 ( [  a8 ) ] \break | % 47
      b8.  e,16  e4  e'16
      d16  c16  b16  a8.  a16 |  % 48
      \time 2/4  | % 48
      a2 |   % 49
      c8.  c16  c4  \break |
      b16  c16  d16  c16
      b16  a16  gis16  a16 | % 51
      b4  e,8.  e16 | % 52
      e2  | \break % 53
      b'16  c16  d16  e16
      d16  c16  b16  d16 |  % 54
      c16  b16  a16  gis16
      b8.  a16 | % 55
      a2 \break \bar "||" | % 56
      \time 3/4  | % 56
      \tempo "Poco meno mosso" f4 e4
      dis4 | % 57
      e2  e4 | % 58
      a4  gis4
      \tuplet 3/2 { f8 ( [  e8 ] )  dis8  }
      | % 59
      e4.  e8  f8  g8 |
      g4 (  a4 )  f8.  e16  | \break % 61
      g8  f8  e4  d4 | % 62
      d2
      \tuplet 3/2 { b8 ( [  c8 ) ]  d8  }
      | % 63
      \time 4/4 e4.  d8  e16  d16  c16
      b16  a8  gis8 | % 64
      \time 2/4 a2 \bar "||"  \break | % 65
      \tempo"Allegretto" a'8. b16
      c8  a8  | % 66
      b4  e,4  | % 67
      a2  | % 68
      a8.  b16  c8  a8  | % 69
      b4  e,4  |
      a2  \break  | % 71
      c8.  d16  e8  c8  | % 72
      d4  b4  | % 73
      c2  | % 74
      b8.  c16  d8  e8  | % 75
      f4  e8.  dis16  | % 76
      e2  \break  | % 77
      a8. g16 f8 e8  | % 78
      d4 c8 ( [ d8 ) ] | % 79
      e2 |
      a,8 b8 c8 b8  | % 81
      d8 c8 b8  a8  \break | % 82
      a8  gis8  a8 b8 | % 83
      \time 3/4  | % 83
      a2 ^\fermata
      \tuplet 3/2 { \tempo "Andante" b8 ( [ c8 ) ] d8  }
      \time 4/4  | % 84
      e4. \fermata
      d8 e16  d16 c16  b16
      a8 gis8 | \break % 85

      \time 3/4 a2

      \tuplet 3/2 {
        %\once \override TextScript.outside-staff-priority = ##f
        %\once \override TextScript.extra-offset = #'(-1.8 . 3.5)
        \once \override Staff.Parentheses.font-size = #+3
        \once \override Staff.Parentheses.padding = #1
        \startParenthesis
        \parenthesize b,8%-\markup \bold \fontsize #+2 {"("}
        ( [ c8 ) ] d8
      } |
      \time 4/4   % 84
      e4. \fermata
      d8 \tempo "rit." e16  d16 c16  b16
      a8 gis8 |
      \time 2/4
      %\once \override TextScript.outside-staff-priority = ##f
      %\once \override TextScript.extra-offset = #'(3 . 3.0)

      \once \override Staff.Parentheses.font-size = #+3
      \once \override Staff.Parentheses.padding = #1
      \endParenthesis \parenthesize a2%-\markup \bold \fontsize #+2 {")"}

      \bar "|."
    }

    \addlyrics {
      Слу -- шал съм за те -- бе, скръб,
      че жес -- то -- ка си би -- ла, че
      стра -- да -- ни -- я при -- чи -- ня
      -- ваш __  ти. Не зна -- еш ли ти,
      че съм бе -- ден стран -- ник? Ка
      -- жи що ис -- каш ти от ме -- не,
      скръб, ка -- жи! Ка -- жи що
      ис -- каш, не -- ка аз то -- ва __
      да знам! „Мъч -- но мо -- же
      мен ня -- кой __  да о -- би
      -- ча. Там е скръб -- та! Кой --
      то мен о -- би  --  ча __
      и при  -- е -- ма ме до  --
      бре, са -- мо __ той __ мо
      -- же жи -- во -- та да раз -- би
      -- ра. Тру -- ден е и стръ -- мен
      е пъ -- тят, по кой -- то вър --
      вя. Мъч -- но мо -- же да ме след
      -- ва ня -- кой там, а за __
      смърт -- ни -- я не -- въз -- мож --
      но е поч -- ти. Ня -- кой пък да
      о -- би -- ча и до -- бре да мис --
      ли за мен, тряб -- ва той да бъ
      -- де жи -- тел съ -- вър -- ше -- но
      от друг свят.“ Ра -- дост и
      скръб то -- ва са пъ  -- ти --
      ща да се раз -- би -- ра ве --
      ли -- ки -- ят жи -- вот. Лю  --
      бов -- та ед -- нак -- во и две --
      те це -- ни. Скръб и ра -- дост
      все ед -- но, скръб и ра -- дост
      все ед -- но, Лю -- бов -- та щом
      в~тях ца -- ри. Прав -- да -- та
      в~скръб -- та се це -- ни, а доб
      -- ро -- то в~ра -- дост  -- та.
      Тях да въз -- при -- е -- мем, друж
      -- но да вър -- вим нап -- ред. Лю
      -- бов -- та ед -- нак -- во и
      две -- те це -- ни. (Лю
      -- бов -- та ед -- нак -- во и
      две -- те це -- ни.)
    }

    \header {
      title = \titleFunc #'ref_desc_12 "Радост и скръб" "Radost i skrăb"
    }

    \midi{}

  } % score


} % bookpart
