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
      \key ges \major
      \time 4/4
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
      bes'4 | % 1
      es''8.  es''16  es''2  bes'4 | % 2
      ges'8.  es'16  es'4. ^\fermata  bes'8 \breathe
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Più mosso " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      bes'8
      a'8 \break | % 3
      \time 3/4  | % 3
      bes'4.  as'8  ges'8  f'8 | % 4
      \time 2/4  | % 4
      ges'2 | % 5
      \time 3/4  | % 5
      f'8  es'8  d'8  es'8  f'8.
      bes16 \break | % 6
      bes4.  f'8  ges'8  as'8 | % 7
      \time 3/8  | % 7
      bes'4  as'8 | % 8
      ges'4  f'8 | % 9
      es'4  d'8 \break |
      es'4. ~  | % 11
      es'4.  | % 12
      \time 4/4  | % 12
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 100)" }
        }
      } | % 12
      bes'4  bes'4  bes'4  bes'4 | % 13
      \time 6/4  | % 13
      ces''8  bes'8  a'8  bes'8
      ces''2  bes'2 \break | % 14
      es''2  d''4  ces''8.  bes'16
      bes'2 | % 15
      as'4  ges'4  f'4  es'8  f'8
      ges'2 \break | % 16
      \time 4/4  | % 16
      f'8  es'8  d'8  es'8  f'4.
      f'8 | % 17
      f'8 (  bes8 )  bes4.  f'8  ges'8
      as'8 \break | % 18
      ges'4.  f'8  ges'2 | % 19
      f'8  es'8  d'8  es'8  f'4. (
      es'8 ) |
      es'2. r4 \break | % 21
      bes'4  bes'4  bes'4  bes'4 | % 22
      \time 6/4  | % 22
      ces''8  bes'8  a'8  bes'8
      ces''2  bes'2 | % 23
      es''2  d''4  ces''8. (  bes'16
      )  bes'2 \break | % 24
      as'4  ges'4  f'4  es'8  f'8
      ges'2 | % 25
      \time 4/4  | % 25
      f'8  es'8  d'8  es'8  f'4.
      bes8 \break | % 26
      bes2 r8  f'8  ges'8  as'8 | % 27
      ges'4.  f'8  ges'2 | % 28
      f'8  es'8  d'8  es'8  f'4. (
      es'8 ) | % 29
      es'2. r4 \bar "|."
    }

    \addlyrics {
      Кра -- сив жи -- вот в~без -- кра --
      ен път! При -- пом -- ням си по --
      ня -- ко -- га, ня -- къ -- де да --
      леч бе то. Там Слън -- це нив --
      га не за -- ляз -- ва -- ше  и
      не -- бе -- то – ви -- на -- ги ла --
      зур но, Мир и свет -- ли -- на.
      Хим -- ни на Лю -- бов -- та ан --
      ге -- ли без -- спир -- но пе --
      ят, треп -- тят, зву -- чат в‿а --
      корд звезд -- ни -- те все -- ле
      -- ни. И въз -- зе -- ма се
      в~ду -- ша -- та мор -- на ве --
      чен коп -- неж. В~скър -- би,
      ра -- дост, съл -- зи, пъ -- тят ми
      из -- веж -- да, знам.  хът мо --
      гъщ ле -- ти в~слън -- че -- ва ро
      -- ди  -- на.}
      \addlyrics {
        Kra -- siv zhi -- vot v~bez -- kra --
        en pat! Pri -- pom -- nyam si po --
        nya -- ko -- ga, nya -- ka -- de da --
        lech be to. Tam Slan -- tse niv --
        ga ne za -- lyaz -- va -- she  i
        ne -- be -- to – vi -- na -- gi la --
        zur no, Mir i svet -- li -- na.
        Him -- ni na Lyu -- bov -- ta an --
        ge -- li bez -- spir -- no pe --
        yat, trep -- tyat, zvu -- chat v‿a --
        kord zvezd -- ni -- te vse -- le
        -- ni. I vaz -- ze -- ma se
        v~du -- sha -- ta mor -- na ve --
        chen kop -- nezh. V~skar -- bi,
        ra -- dost, sal -- zi, pa -- tyat mi
        iz -- vezh -- da, znam.  hat mo --
        gasht le -- ti v~slan -- che -- va ro
        -- di  -- na.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Мелодия I - Красив Живот }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Melodiya I - Krasiv Zhivot }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/185_melodiya_i_krasiv_zhivot_lyrics_de.ly"

    } % bookpart
