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
      \key des \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 66)" }
        }
      }
      \autoBeamOff
      \partial 4
      f'8.  f'16 | % 2
      f'2 | % 3
      bes'4  as'4 | % 4
      ges'2 | % 5
      f'2 | % 6
      f'2 \break | % 7
      c''8  bes'8  as'8  ges'8 | % 8
      \time 3/4  | % 8
      f'4  es'2 | % 9
      \time 2/4  | % 9

      \slurDashed  des'16 ( [ \slurSolid ^\markup{
        \italic
        {sostenuto}
      }
      c'16 ) ]  des'16  es'16
      f'8  as'8 |
      f'4 ^\markup{ \bold {a tempo} }  es'4 \break | % 11
      \time 3/4  | % 11
      \times 2/3  {
        f'8 ^\markup{ \italic {sostenuto} }  ges'8
        as'8
      }
      bes'4  as'4 | % 12
      f'4  ges'8 ( [  f'8 ) ]  f'4 | % 13
      \times 2/3  {
        f'8 ^\markup{ \italic {sostenuto} }  ges'8
        as'8
      }
      bes'8.  as'16  ges'8  f'8 \break | % 14
      \slurDashed  f'8 ( [ \slurSolid  es'8 ) ]  es'2
      | % 15

      \times 2/3  {
        c'8  des'8  es'8
      }
      f'4.  es'8 | % 16
      \time 2/4  | % 16
      \slurDashed  des'8 (  \slurSolid  c'8 )
      des'8  c'8 \break | % 17
      es'4  des'4 | % 18
      \slurDashed  c'4. ( \slurSolid  a8 ) | % 19
      es'2 |
      des'2 | % 21
      c'2 | % 22
      bes2 ^\fermata \bar "|."
    }

    \addlyrics {
      Гос -- по -- ди, Ти си всич -- ко
      за ме -- не на Зе -- мя -- та. Тук
      до -- лу– тол -- коз скър --
      би, тъй всич -- ко пус -- то е
      без  Теб и са -- мо Ти му да
      -- ваш сми -- съл. Ед -- ни -- чък
      Ти ме лю -- биш, зна -- я, са -- мо
      Ти. И аз Теб лю -- бя.}
      \addlyrics {
        Gos -- po -- di, Ti si vsich -- ko
        za me -- ne na Ze -- mya -- ta. Tuk
        do -- lu– tol -- koz skar --
        bi, tay vsich -- ko pus -- to e
        bez  Teb i sa -- mo Ti mu da
        -- vash smi -- sal. Ed -- ni -- chak
        Ti me lyu -- bish, zna -- ya, sa -- mo
        Ti. I az Teb lyu -- bya.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Молитва}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Molitva }
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

          \line {   2. Господи, научи ме}
          \line {   "   " да любя всичко живо,}
          \line {   "   " туй, което Ти създал}
          \line {   "   " си, и да разнасям аз на}
          \line {   "   "  вред Твоята нежност,}
          \line {   "   " Радост и Любов. Да се науча}
          \line {   "   "  Теб  аз да служа,}
          \line {   "   " да  благодаря.}

        }

        \hspace #5
        \override #'(baseline-skip . 2.4)
        \column {


          \line {   2. Gospodi, nauchi me}
          \line {   "   "da lyubya vsichko zhivo,}
          \line {   "   "tuy, koeto Ti sazdal}
          \line {   "   "si, i da raznasyam az na}
          \line {   "   " vred Tvoyata nezhnost,}
          \line {   "   "Radost i Lyubov. Da se naucha}
          \line {   "   " Teb  az da sluzha,}
          \line {   "   "da  blagodarya.}

        } %column
      } % markup

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/179_molitva_lyrics_de.ly"

    } % bookpart
