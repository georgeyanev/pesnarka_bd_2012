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
      \key des \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Largetto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 56)" }
        }
      }
      \autoBeamOff

      bes'4.  des8 | % 2
      c8  bes8  a8  c8 | % 3
      bes4.  f8 | % 4
      bes2 \break | % 5
      \time 3/4  | % 5
      as8.  as16  as2 | % 6
      as16  bes16  as16  ges16
      f8.  es16  des8  es8 | % 7
      \time 2/4  | % 7
      f2 \break | % 8
      es4.  f8 | % 9
      ges8  ges8  as8  bes8 |
      \barNumberCheck #10
      f2 | % 11
      \time 3/4  | % 11
      des'8.  des16  des2 \break | % 12
      c16  des16  es16  des16
      c16  bes16  a16  ges16
      f16  es16  des16  c16 | % 13
      bes8  a8  ges'4.  f8 \break | % 14
      f2 ^\fermata
      \tuplet 3/2 {   a,8 ( [  bes8 ) ]  c8 }
      | % 15
      des4 ^\fermata  c4. ^\fermata  f8 | % 16
      \time 4/4  | % 16
      bes4.  as8  bes8  as8
      ges8  f8 \break | % 17
      es4.  f8  ges4  as8  bes8
      | % 18
      \time 2/4  | % 18
      f2 | % 19
      \time 3/4  | % 19
      f4.  es8  f8  es8 |
      \time 2/4  |
      des4  c4  | % 21
      ges'2 \break | % 22
      f4  des4 | % 23
      \tempo "rall." c16  des16  es16
      des16  c8.  des16 | % 24
      \time 3/4 bes2  % 25
      bes'8.  bes16 |
      \tempo "a tempo" bes2 % 26
      c16  des16  c16  bes16 \break |
      \time 2/4
      \tuplet 3/2 {a8  bes8  c8 }
      bes8 ( [  ges8 ) ] | % 27
      \time 3/4 f2  as8.  as16 | % 28
      as2  as16  bes16  as16
      ges16 \break | % 29
      \time 2/4  | % 29
      f8.  es16  des8  es8 |
      \time 3/4  | f2
      \tuplet 3/2 {a,8 ( [  bes8 ) ]  c8 }
      | % 31
      des4 ^\fermata  c2 | % 32
      f4.  es8  f8  es8 \break | % 33
      \time 2/4  | % 33
      des4  c4 | % 34
      ges'2 | % 35
      \time 3/4  | % 35
      \tuplet 3/2 { f8 es des } des4 \fermata  c8. bes16 | \time 2/4 bes2 \bar "|." \break
    }

    \addlyrics {
      Ра -- нен час е, всич -- ко пей,
      треп -- ти. Слън -- це грей, рад --
      ва се ду -- ша -- та на све -- та
      за ве -- ли -- ка -- та Лю -- бов.
      Пей, сър -- це, за -- бра -- ви
      скръб -- та и бу -- ри -- те чо --
      веш -- ки в~то -- я ди -- вен час.
      Чуй  гла -- са ми! Ве -- ли --
      ки -- ят Жи -- вот се раж -- да
      в~теж -- ка -- та скръб. Ти -- ха
      Ра -- дост, нов Жи -- вот но -- си
      та -- зи бу -- ря на све -- та.
      Нов жи -- вот на Лю -- бов ду --
      ша ми да стоп -- ли. Сво -- бо
      -- да, си -- лен Дух и Мир ще и --
      маш ти. Чуй  гла -- са ми!
      Ти -- хи зву -- ци теб зо -- ват,
      веч -- на Лю -- бов там ца -- ри!}
      \addlyrics {
        Ra -- nen chas e, vsich -- ko pey,
        trep -- ti. Slan -- tse grey, rad --
        va se du -- sha -- ta na sve -- ta
        za ve -- li -- ka -- ta Lyu -- bov.
        Pey, sar -- tse, za -- bra -- vi
        skrab -- ta i bu -- ri -- te cho --
        vesh -- ki v~to -- ya di -- ven chas.
        Chuy  gla -- sa mi! Ve -- li --
        ki -- yat Zhi -- vot se razh -- da
        v~tezh -- ka -- ta skrab. Ti -- ha
        Ra -- dost, nov Zhi -- vot no -- si
        ta -- zi bu -- rya na sve -- ta.
        Nov zhi -- vot na Lyu -- bov du --
        sha mi da stop -- li. Svo -- bo
        -- da, si -- len Duh i Mir shte i --
        mash ti. Chuy  gla -- sa mi!
        Ti -- hi zvu -- tsi teb zo -- vat,
        vech -- na Lyu -- bov tam tsa -- ri!}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Ранен час }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Ranen chas }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/121_ranen_chas_lyrics_de.ly"

    } % bookpart
