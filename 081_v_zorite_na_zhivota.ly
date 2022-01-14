\version "2.22.0"

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
      % ragged-last = ##t % do not spread last line to fill the whole space
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
      \time 5/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 63)" }
        }
      }

      \partial 4

      c '4 | c'2 ( b4 c' ) d' |\time 4/4  e'4 c' \times 2/3 { b4 ( c'4 d' ) }

      \time 3/4  c'2 \breathe g'4 |g'2 ( fis'4 ) | \break

      g'4 a' g' | \time 4/4  g'8 ( fis' g' a' ) g'2 \breathe g'4 c''2 b'4 | c''4 a' g'2 | \break

      \time 5/4  f'4. ( g'8 ) e'2 d'4 |\time 4/4  c'4 b c'2 \breathe | \time 5/4  f'2 g'4 a' g' | \break

      g'4 fis' g' a' a' | \time 4/4  g'4 fis' g'2 | \time 5/4  g'4 c''2 d''4 e'' | \break

      d''4 c'' b' c'' a' | \time 4/4  g'4 g' g'8 ( fis' g' a' | \time 3/4  g'2 ) r4 | \time 4/4  e'2 d'4 c' | \break

      d'4 f' e' d' | c'4 ( b ) c'2 \breathe | f'2 g'4 a' | g'4 g' c'' a' | \break

      \time 3/4  a'4 g'2 | g'4 c''2 | b'4 a' g'4 \time 5/4 fis' g' a' g'2 | \time 3/4 \break

      d''2 c''4 | b' a' g'4 | \time 5/4 fis' g' a' g'2 \breathe | \time 6/4 e'2 c'4 ( e' ) d'2 | \break

      g'2 a'4 ( g' ) g'2 | \time 3/4  c''2 b'4 \tempo "rit." | a' g' f'8 ( g' ) | \time 4/4 e'4 d' c'8 ( b c' d' ) | \time 3/4  c'2. \bar "|."
    }

    \addlyrics {
      В~зо -- ри --
      те на Жи -- во -- та, в~зо -- ри -- те на Жи --
      во -- та Слън -- це из -- гря -- ва -- ше, Слън --
      це из -- гря -- ва -- ше, на При -- ро -- да гра
      -- ни -- ци о -- чер -- та -- ва -- ше, на При --
      ро -- да гра -- ни -- ци о -- чер -- та -- ва --
      ше. В~ду -- ша ми мо -- щен Дух про -- бу --
      ди,  в_ду -- ша ми мо -- щен Дух про -- бу --
      ди и в~сър -- це ми Лю -- бов съ -- бу -- ди,
      и в~сър -- це ми Лю -- бов съ -- бу -- ди, съ --
      бу -- ди, съ -- бу -- ди, и в~сър -- це ми Лю --
      бов съ -- бу -- ди.}
      \addlyrics {
       V~zo -- ri --
      te na Zhi -- vo -- ta, v~zo -- ri -- te na Zhi --
      vo -- ta Slan -- tse iz -- grya -- va -- she, Slan --
      tse iz -- grya -- va -- she, na Pri -- ro -- da gra
      -- ni -- tsi o -- cher -- ta -- va -- she, na Pri --
      ro -- da gra -- ni -- tsi o -- cher -- ta -- va --
      she. V~du -- sha mi mo -- shten Duh pro -- bu --
      di,  v_du -- sha mi mo -- shten Duh pro -- bu --
      di i v~sar -- tse mi Lyu -- bov sa -- bu -- di,
      i v~sar -- tse mi Lyu -- bov sa -- bu -- di, sa --
      bu -- di, sa -- bu -- di, i v~sar -- tse mi Lyu --
      bov sa -- bu -- di.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { В зорите на Живота}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { V zorite na Zhivota }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

      \pageBreak



      % include foreign translation(s) of the song
      \include "lyrics_de/081_v_zorite_na_zhivota_lyrics_de.ly"

    } % bookpart
