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
      \key bes \major
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
      bes2 ^\pp c'4 | % 2
      a2. | % 3
      c'2. | % 4
      bes2 a4 | % 5
      g2. | % 6
      d'2. ^\p ^\< \break | % 7
      cis'2 d'4 | % 8
      es'2. _\! | % 9
      d'2 ( c'4 ) ^\> |
      bes2. | % 11
      a2. | % 12
      r4 ^\! d'2 ^\p \break | % 13
      es'2. ^\< | % 14
      g'2. | % 15
      a'2. ^\! ^\mf | % 16
      bes'2. ^\p ^\< | % 17
      g'8 ( [ ^\markup{ \italic {sosten.} } a'8 ) ]
      bes'4 c''4 | % 18
      es''2 ^\fermata d''4 \break | % 19
      d''2. ^\! ^\> |
      d'2 ^\! ^\p ^\markup{ \bold {a tempo} } g'4 | % 21
      bes'2. | % 22
      a'4 ^\< bes'4 c''4 | % 23
      g'2. ^\! ^\> | % 24
      g'2. \bar "||"
      \break | % 25
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 84)" }
        }
      } | % 25
      d'2 ^\! d'4 | % 26
      f'2 c'4 ^\fermata | % 27
      c'4 ^\< c'4 c'4 | % 28
      b2 ^\! c'4 | % 29
      es'2. ^\> \break |
      d'2 d'4 _\! ^\p ^\< | % 31
      es'2. | % 32
      c'2 ^\! ^\> d'4 ^\! ^\mf ^\< | % 33
      g'2 ^\> d'4 ^\! | % 34
      \numericTimeSignature\time 4/4  | % 34
      a'4 ( ^\! ^\< es''4 d''4 ) ^\! ^\f
      c''4 ^\> \break | % 35
      \time 3/4  | % 35
      bes'2 a'4 _\! ^\< | % 36
      c''2 bes'4 | % 37
      f''2 ( ^\! ^\mf es''4 ) | % 38
      c''2 ^\> bes'4 ^\! \break | % 39
      a'2 ^\> bes'4 |
      g'2 g'4 | % 41
      g'2. | % 42
      d'2 ^\! ^\p d'4 | % 43
      d'2. \break | % 44
      cis'2 d'4 | % 45
      es'2. ^\markup{ \bold {poco a poco rall.} } | % 46
      d'2. | % 47
      a2 bes4 ^\> | % 48
      c'2. | % 49
      d'2. ^\fermata ^\ppp \bar "|."
    }

    \addlyrics {
      Стран -- ник съм във то -- зи
      свят. Ни -- ко -- го не по --
      зна -- вам, ос -- вен Те -- бе. Ти,
      Гос -- по -- ди, Бо -- же мой,
      си съз -- дал всич -- ко за ме --
      не. Аз от -- пра -- вям сво -- я --
      та бла -- го -- дар -- ност към Те
      -- бе, на Те -- бе, Гос  --  по
      -- ди, въз -- ло -- жих сво -- е --
      то у -- по -- ва -- ни -- е. Да въз
      -- ле -- зе мол -- ба -- та ми към
      Те -- бе.}
      \addlyrics {
        Stran -- nik sam vav to -- zi
        svyat. Ni -- ko -- go ne po --
        zna -- vam, os -- ven Te -- be. Ti,
        Gos -- po -- di, Bo -- zhe moy,
        si saz -- dal vsich -- ko za me --
        ne. Az ot -- pra -- vyam svo -- ya --
        ta bla -- go -- dar -- nost kam Te
        -- be, na Te -- be, Gos  --  po
        -- di, vaz -- lo -- zhih svo -- e --
        to u -- po -- va -- ni -- e. Da vaz
        -- le -- ze mol -- ba -- ta mi kam
        Te -- be.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line {   Странник съм във този свят. }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Strannik sam vav tozi
        svyat. }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score


      % include foreign translation(s) of the song
      \include "lyrics_de/217_strannik_sam_lyrics_de.ly"

    } % bookpart
