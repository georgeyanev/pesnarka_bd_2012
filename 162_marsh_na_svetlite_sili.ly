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
      \key c \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }

      c'8 \p e'8 e'8 g8 | % 2
      c'8 e'8 e'8 g8 | % 3
      b8 d'8 d'8 g8 | % 4
      b8 d'8 d'8 g8 \break | % 5
      \acciaccatura { g16 ( a16 b16 } c'8 ) e'8 e'8 g8 | % 6
      c'8 c'8 c'8 g8 | % 7
      b8 b8 b8 g8 | % 8
      b8 ( b8 ) b8 (g8) \break | % 9
      g8. g16 a8. g16 |
      b8 b4 b8 | % 11
      g8. g16 a8. g16 | % 12
      c'8 c'4 c'8 \bar "||"
      \key es \major c'4 g'4 ( \break | % 14
      g'4 ) g'16 ( f'16 es'16 d'16 ) | % 15
      c'8 es'8 c'8 es'8 | % 16
      c'8 es'8 f'16 ( es'16 d'16 c'16 ) | % 17
      bes8 d'8 bes8 d'8 \break | % 18
      bes8 d'8 es'16 ( d'16 c'16 bes16 ) | % 19
      a8 d'8 a8 d'8 |
      a8 d'8 g16 ( a16 bes16 a16 ) | % 21
      g8 g4 g8 \bar "||"
      \break | % 22
      \key bes \major \time 5/4 \repeat volta 2 {
        d'8 d'4 d'4 d'8 bes'8 \acciaccatura { a'16 ( bes'16 } a'8 ) g'8
        es'8 | % 23
        d'8 d'4 d'4 d'8 bes'8 \acciaccatura { a'16 ( bes'16 } a'8 ) g'8
        es'8 \break | % 24
        d'8 d'4 d'4 d'8 c'8 d'8 es'8 g'8 | % 25
        d'8 d'4 d'4 d'8 c'8 d'8 es'8 g'8 \break | % 26
        \time 3/4  d'8 d'4 d'4 d'8 | % 27
        g8 a8 bes8 a8 c'8 bes8 |  % 28
        \acciaccatura { bes16 ( c'16 } bes8 ) a8 a8 g16 a16 bes8 a8
        \break | % 29
        g8 g4 g4 g8
      }
      |
      \acciaccatura { bes16 ( c'16 } bes8 ) a8 g16 a16 bes16 a16 g8 g8 | % 31
      g8 g4 g8 g'4 \bar "|."
    }

    \addlyrics {Ду -- хо -- ве на Свет -- ли -- на -- та, стъп -- ват ле -- ко вти -- ши -- на -- та.

Сли --  зат те в ре -- ди -- ци бе -- ли от ви -- со -- ки -- те пре -- де -- ли.

Ид  -- ват на Зе -- мя -- та, на хо -- ра -- та сър -- ца -- та.

И ето - раж -- дат се и -- де -- и, свет --  ли, но -- ви,

как да смък -- нем теж -- ки -- те о -- ко -- ви на

враж -- ди без -- смис -- ле -- ни, ве -- ков -- ни - в мир да за -- жи -- ве -- ем.



И все -- ки да ра -- бо -- ти с ра -- дост на Бо -- жест -- ве -- на -- та ни -- ва.

Ще ца -- ру -- ва вечна мла -- до -- ст, ня -- ма ни -- кой да у -- ми -- ра.

В мир, в Лю -- бов ще за -- жи -- ве -- ем

всич -- ки друж -- но и ще про -- сла -- вим Бо -- га с пе -- сен.



Но -- ви пе -- сни ще за -- пе -- ем - за хар -- мо -- ния все -- мир -- на.

Нов жи -- вот ще за -- жи -- ве -- ем... Тя -- ло -- то ни ще про -- свет -- не

и на -- края ще по -- лит -- нем във е -- фи -- ра кат' ду -- хо -- ве на Свет -- ли -- на -- та.
}
    \addlyrics { Du -- ho -- ve na Svet -- li -- na -- ta, stap -- vat le -- ko vti -- shi -- na -- ta.

      Sli --  zat te v re -- di -- tsi be -- li ot vi -- so -- ki -- te pre -- de -- li.

      Id  -- vat na Ze -- mya -- ta, na ho -- ra -- ta sar -- tsa -- ta.

      I eto - razh -- dat se i -- de -- i, svet --  li, no -- vi,

      kak da smak -- nem tezh -- ki -- te o -- ko -- vi na

      vrazh -- di bez -- smis -- le -- ni, ve -- kov -- ni - v mir da za -- zhi -- ve -- em.



      I vse -- ki da ra -- bo -- ti s ra -- dost na Bo -- zhest -- ve -- na -- ta ni -- va.

      Shte tsa -- ru -- va vechna mla -- do -- st, nya -- ma ni -- koy da u -- mi -- ra.

      V mir, v Lyu -- bov shte za -- zhi -- ve -- em

      vsich -- ki druzh -- no i shte pro -- sla -- vim Bo -- ga s pe -- sen.



      No -- vi pe -- sni shte za -- pe -- em - za har -- mo -- nia vse -- mir -- na.

      Nov zhi -- vot shte za -- zhi -- ve -- em... Tya -- lo -- to ni shte pro -- svet -- ne

      i na -- kraya shte po -- lit -- nem vav e -- fi -- ra kat' du -- ho -- ve na Svet -- li -- na -- ta.}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Марш на светлите сили}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Marsch na svetlite sili }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score



  % include foreign translation(s) of the song
  \include "lyrics_de/162_marsch_na_svetlite_sili_lyrics_de.ly"

} % bookpart
