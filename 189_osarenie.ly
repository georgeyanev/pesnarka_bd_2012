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
      \time 3/8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 120)" }
        }
      }
      \autoBeamOff
      d''4 bes'8 | % 2
      d''4 bes'8 | % 3
      d''4. | % 4
      g''8 ( [ f''8 ) ] es''8 | % 5
      es''4 c''8 | % 6
      es''4 c''8 | % 7
      es''4. | % 8
      c''8 ( [ d''8 ) ] es''8 \break | % 9
      f''4 es''8 |
      es''4 d''8 | % 11
      d''4 c''8 | % 12
      d''4. | % 13
      g'8 ( [  a'8 ) ] bes'8 | % 14
      bes'4  a'8 \break | % 15
      a'4  g'8 | % 16
      g'4  d'8 | % 17
      g'4. | % 18
      g'8 ( [  a'8 ) ] bes'8 | % 19
      bes'4  a'8 |
      a'4  g'8 | % 21
      g'4  d'8 | % 22
      g'4.
    }

    \addlyrics {
      Без -- гра -- нич -- на шир, див
      -- на кра -- со -- та и мир,
      слън -- це за чо -- веш -- ки --
      те ду -- ши но -- си свя -- та
      Лю -- бов -- та без -- спир, но --
      си свя -- та Лю -- бов -- та без --
      спир.}
      \addlyrics {
        Bez -- gra -- nich -- na shir, div
        -- na kra -- so -- ta i mir,
        slan -- tse za cho -- vesh -- ki --
        te du -- shi no -- si svya -- ta
        Lyu -- bov -- ta bez -- spir, no --
        si svya -- ta Lyu -- bov -- ta bez --
        spir.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Мелодия 4 - Озарение }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Melodiya 4 - Osarenie }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      \markup \fontsize #+2.5 {
        \hspace #1
        \override #'(baseline-skip . 2.4) % affects space between column lines
        \column {

          \line {   2.  Благ живот струи }
          \line {   "   " в топли слънчеви лъчи }
          \line {   "   " и душите славят в Светлина }
          \line {   "   " благия Отец на Любовта. (2) }
          \line {   "   " }
          \line {   3. Всичко е Любов, }
          \line {   "   " радост, сила и живот. }
          \line {   "   " Свята Божия виделина }
          \line {   "   " озарява тази красота. (2)}
        }

        \hspace #5
        \override #'(baseline-skip . 2.4)
        \column {
          \line {   "   " Blag zhivot strui }
          \line {   "   " v topli slanchevi lachi }
          \line {   "   " i dushite slavyat v Svetlina }
          \line {   "   " blagia Otets na Lyubovta. (2) }
          \line {   "   " }
          \line {   "   " Vsichko e Lyubov, }
          \line {   "   " radost, sila i zhivot. }
          \line {   "   " Svyata Bozhia videlina }
          \line {   "   " ozaryava tazi krasota. (2)}
        } %column
      } % markup

      

      % include foreign translation(s) of the song
      \include "lyrics_de/189_osarenie_lyrics_de.ly"

    } % bookpart
