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
      \key d \minor
      \time 3/8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      }
      \autoBeamOff
      \partial 4.
      a4. | % 2
      d4  e8 | % 3
      f16  f16  e8  d8 | % 4
      e4. | % 5
      e4. | % 6
      e8 ( [  f8 ) ]  g8 \break | % 7
      a4  e8 | % 8
      f8 ( [  e8 ) ]  d8 | % 9
      e4. |
      e4. | % 11
      e8  f8  g8 | % 12
      a8  e8  g8 \break | % 13
      f8  e8  d8 | % 14
      d4. | % 15
      d4. | % 16
      a'8 ( [  bes8 ) ]  a8 | % 17
      a8 ( [  d8 ) ]  c8 | % 18
      bes8 ( [  a8 ) ]  g8 \break | % 19
      g4.^\markup{ ossia }  |
      e4. | % 21
      e8 ( [  f8 ) ]  g8 | % 22
      a8 ( [  e8 ) ]  g8 | % 23
      f8  e8  d8 | % 24
      d4. \break | % 25
      d4. | % 26
      a'4. | % 27
      d4  e8 | % 28
      f4 ^\fermata  e8 | % 29
      d4  a8 |
      c8 ( [  bes8 ) ]  a8 \break | % 31
      e8 ( [  f8 ) ]  g8 | % 32
      a4. | % 33
      a4. | % 34
      c4^\markup{ \bold {Piu vivo} }   bes8 | % 35
      bes4  a8 | % 36
      a4  gis8 \break | % 37
      a4. | % 38
      bes4  c8 | % 39
      bes4  a8 |
      a4 (  gis8 ) | % 41
      a4. | % 42
      d4. \break | % 43
      e,4  f8 | % 44
      g8 ( [  f8 ) ]  e8 | % 45
      f8 ( [  e8 ) ]  d8 | % 46
      cis4  e8 | % 47
      d4. | % 48
      d4. \break | % 49
      a4.^\markup{ \bold {Meno mosso} }   |
      bes4  bes8 | % 51
      a4. | % 52
      a8  gis8  a8 | % 53
      bes4. | % 54
      a4. ^\fermata | % 55
      a'4. | % 56
      bes4  bes8 \break | % 57
      a4. | % 58
      e8 ^\markup{ \bold {(poco a poco rall.)} }  f8
      g8 | % 59
      f4  e8 |
      d4  cis8 | % 61
      cis8  d8  e8 | % 62
      d4. ^\fermata \bar "|."
    }

    \addlyrics {
      Дни на стра -- да -- ни -- я и
      скър -- би през  ду -- ша -- та
      ми  ми -- на -- ха, въл -- ни и
      бу -- ри ду -- ша ми за -- ля -- ха.
      Но  Ду -- хът  ми на  Жи
      -- во -- та с‿мощ  и си -- ла
      над тях из -- пла -- ва. За О --
      бе -- то -- ва -- на зе -- мя  аз
      тръг -- нах път -- ник, где из
      -- ви -- рат из -- во -- ри, где те --
      кат ре -- ки -- те, где зре --
      ят пло -- до -- ве,  где пти
      -- ци пе -- ят. Где хо -- ра -- та
      жи -- ве -- ят брат -- ски, где хо
      -- ра -- та жи -- ве -- ят брат --
      ски, там де Лю -- бов ца -- ри.}
      \addlyrics {   Dni na stra -- da -- ni -- ya i
      skar -- bi prez  du -- sha -- ta
      mi  mi -- na -- ha, val -- ni i
      bu -- ri du -- sha mi za -- lya -- ha.
      No  Du -- hat  mi na  Zhi
      -- vo -- ta s‿mosht  i si -- la
      nad tyah iz -- pla -- va. Za O --
      be -- to -- va -- na ze -- mya  az
      trag -- nah pat -- nik, gde iz
      -- vi -- rat iz -- vo -- ri, gde te --
      kat re -- ki -- te, gde zre --
      yat plo -- do -- ve,  gde pti
      -- tsi pe -- yat. Gde ho -- ra -- ta
      zhi -- ve -- yat brat -- ski, gde ho
      -- ra -- ta zhi -- ve -- yat brat --
      ski, tam de Lyu -- bov tsa -- ri.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Обетована земя}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Obetovena zemya}
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score



    % include foreign translation(s) of the song
    \include "lyrics_de/134_obetovana_zemya_lyrics_de.ly"

  } % bookpart
