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
      \time 3/2
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Lento cantabile"
        }
      }
      \autoBeamOff
      r2 r4  e'4  fis'4
   e'4 | % 2
  \time 4/4  | % 2
  e'1 | % 3
   e'4  e'4  e'4  e'4 | % 4
  e''2. d''4 \break  | % 5
  \time 3/2   | % 5
  c''2 c''2 b'4  a'4 | % 6
  c''2 b'2 r2 | % 7
  r2  e'4  e'4  e'4  d'4 \break | % 8
  e'1 r2 \bar "||"
  \key c \major | % 9
   e'2 ^\markup{ \bold {Più mosso} }  f'4  a'2
   gis'4 | \barNumberCheck #10
  b'4 ( d''4 ) c''4 b'2. \break | % 11
  b'4 c''4  a'2 b'4 b'4
  | % 12
  c''2 b'4 (  a'4 ) b'2 -- | % 13
  \time 4/4  | % 13
  b'4 b'4 e''4 e''4 | % 14
  d''4 ( c''4 ) b'4 (  a'4 )
  \break | % 15
  b'2 r4 b'4 | % 16
  d''2 c''4  a'4 | % 17
  b'1 | % 18
  r2.  e'4 ^\markup{ \bold {Tempo I} } | % 19
   e'2  d'2 | \barNumberCheck #20
  e'1 \breathe  \break | % 21
  \time 3/4  | % 21
   e'2  f'4  | % 22
   a'2  gis'4 | % 23
  b'4 d''4 c''4 | % 24
  b'2 r4 | % 25
  c''2 c''8 --  ^\markup{ \bold {sostenuto} }
  c''8 -- \break | % 26
  \time 5/4  | % 26
  fis''2 fis''4 e''4 dis''4 | % 27
  \time 3/4  | % 27
  fis''2 e''4 ~ | % 28
  \time 4/4  | % 28
  e''4 r4  e'4 ^\markup{ \bold {a tempo} }
  b'4 | % 29
  \time 6/4  | % 29
   a'2.  a'4  a'4  a'4 \break |
   \time 5/4  |
  e''2 d''4 c''4  a'4  | % 31
  b'2 b'2 r4 | % 32
  \time 3/4  | % 32
   gis'2  gis'4 | % 33
  b'2 (  gis'4 ) | % 34
   gis'2. ~ \break | % 35
   gis'4 b'4 ( cis''4 ) | % 36
  \time 4/4  | % 36
  dis''2 e''2  | % 37
  fis''2. ^\fermata e''4 -- | % 38
  e''1 | % 39
  \time 2/4  | % 39
  r4  f'4 |
  \time 3/4  |
   f'2  e'4 \break | % 41
  b'2  a'4 | % 42
  \time 4/4  | % 42
  r4  e'4  e'4  e'4 | % 43
  \time 3/4  | % 43
  b'2  a'4 | % 44
  \time 6/4  | % 44
   e'4 ^\markup{ \bold {rall.} }  e'4 e'1
  \bar "|."
    }

    \addlyrics {И
  ре -- че Бог: „Да се съ -- бе --
  ре во -- да -- та под не -- бе --
  то.“ И ста -- на та -- ка. И я --
  ви се су -- ша -- та. И на --
  ре -- че я Бог зе -- мя. И съ
  -- бра -- на -- та  во -- да на
  -- ре -- че мо -- ре. И ре -- че
  Бог, и из -- рас -- на све -- жа
  тре -- ва със се -- ме -- на спо --
  ред ви -- да си  и дър -- во
  със пло -- до -- ве спо -- ред ви --
  да си. И ви -- дя  Бог,  че
   всич -- ко бе до -- бро. И ста
  -- на ве -- чер, и ста -- на ут --
  ро, тре -- ти ден.}
    \addlyrics { I
  re -- che Bog: „Da se sa -- be --
  re vo -- da -- ta pod ne -- be --
  to.“ I sta -- na ta -- ka. I ya --
  vi se su -- sha -- ta. I na --
  re -- che ya Bog ze -- mya. I sa
  -- bra -- na -- ta  vo -- da na
  -- re -- che mo -- re. I re -- che
  Bog, i iz -- ras -- na sve -- zha
  tre -- va sas se -- me -- na spo --
  red vi -- da si  i dar -- vo
  sas plo -- do -- ve spo -- red vi --
  da si. I vi -- dya  Bog,  che
   vsich -- ko be do -- bro. I sta
  -- na ve -- cher, i sta -- na ut --
  ro, tre -- ti den.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Трети Божествен ден }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 {Трети Божествен ден}
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

    \markup \halign #-27.9 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line  { 
        \italic \right-align { "attacca" }
      }
    }
  } 


  % include foreign translation(s) of the song
 \include "lyrics_de/193_nb_treti_bozhestven_den_lyrics_de.ly"

} % bookpart
