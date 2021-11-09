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
      \key g \minor
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

      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8 (  [g'8] ) a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      es'4 (

      fis'4 ) | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "|."
    }

    \addlyrics {
      Без теб е мрак, без теб е
      скръб. Бо -- же -- ствен лъч, о --
      грей ме ти. В~сър -- це -- то ми
      ти  вне -- си, в~сър -- це -- то
      ми вне -- си Ра -- дост, Мир.}
      \addlyrics {
        Bez teb e mrak, bez teb e
        skrab. Bo -- zhe -- stven lach, o --
        grey me ti. V~sar -- tse -- to mi
        ti  vne -- si, v~sar -- tse -- to
        mi vne -- si Ra -- dost, Mir.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Ме-хейн }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Ме-хейн}
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

          \line {       2. Пробуждам се от сън дълбок }
          \line {   "   " и те зова като дете. }
          \line {   "   "  Аз винаги вярвам, че ти }
          \line {   "   "  над мене с Любов бдиш майчина. }
        }

        \hspace #5
        \override #'(baseline-skip . 2.4)
        \column {
          \line {        2. Probuzhdam se ot san dalbok }
          \line {   "   " i te zova kato dete. }
          \line {   "   "  Az vinagi vyarvam, che ti }
          \line {   "   "  nad mene s Lyubov bdish maychina. }
        } %column
      } % markup

      

      % include foreign translation(s) of the song
      \include "lyrics_de/175_mehein_lyrics_de.ly"

    } % bookpart
