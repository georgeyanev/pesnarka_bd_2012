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
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      \autoBeamOff
      bes4 (  d'4 )  f'2 | % 2
      g'8 ( [  a'8  bes'8  g'8 ) ]  f'2
      | % 3
      g'4. (  a'8 )  bes'2 | % 4
      d''8 ( [  c''8  bes'8  c''8 ) ]
      c''2 \break | % 5
      es''2  d''4  c''4 | % 6
      \time 6/4  | % 6
      bes'4  d''4  c''16 ( [  d''16 ]
      c''4. )  bes'2 | % 7
      \time 4/4  | % 7
      g'4.  a'8  bes'4  c''8.
      bes'16 \break | % 8
      \time 3/4  | % 8
      a'8 ( [  bes'8 ) ]  g'2 | % 9
      \time 4/4  | % 9
      bes'4  a'4  g'4  f'4 |
      \barNumberCheck #10
      c''4 (  bes'8 [  a'8 ) ]  bes'2 | % 11
      \time 3/4  | % 11
      bes'8 ( [  c''8 ) ]  d''4  es''4
      \break | % 12
      \times 2/3  {
        d''8 ( [  es''8  d''8 ) ]
      }
      c''4.  g'8 | % 13
      \time 4/4  | % 13
      c''4.  bes'8  a'4  g'4 | % 14
      f'4 (  d''2 )  c''4 | % 15
      bes'2. r4 \break
      \repeat volta 2 {
        | % 16
           \tempo \markup {
        % make tempo note smaller
        \concat {
          "Poco piu mosso" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 92)" }
        }
      } | % 16
        f''4.  d''8  es''4  c''4 | % 17
        d''4.  bes'8  c''4  a'4 \break | % 18
        bes'8  bes'8  c''8  c''8
        d''2 | % 19
        f''4.  es''8  d''2 |
        c''2  bes'2
      }
    }

    \addlyrics {
      Вя -- ра свет --   ла,
      вя -- ра сил --   на!
      Тя во -- ди нас към Бо --
      га, бла -- го -- то на Жи -- во
      -- та, Лю -- бов -- та на Бо --
      га, где  Мир вла -- де --
      е и Ис -- ти -- на -- та веч
      -- но грей. Вя -- ра свет -- ла,
      вя -- ра сил -- на! Тя кре -- пи
      Ду -- ха, що Жи -- вот но -- си.}
      \addlyrics {
        Vya -- ra svet --   la,
        vya -- ra sil --   na!
        Tya vo -- di nas kam Bo --
        ga, bla -- go -- to na Zhi -- vo
        -- ta, Lyu -- bov -- ta na Bo --
        ga, gde  Mir vla -- de --
        e i Is -- ti -- na -- ta vech
        -- no grey. Vya -- ra svet -- la,
        vya -- ra sil -- na! Tya kre -- pi
        Du -- ha, shto Zhi -- vot no -- si.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Вяра светла II }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Vyara svetla II }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/170_2_vyra_svetla_II_lyrics_de.ly"

    } % bookpart
