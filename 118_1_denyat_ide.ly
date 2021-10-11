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
      \key c \minor
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
        }
      }

      c'4 es'4 | es'8  c'8   \tuplet 3/2 { b8 ( c'8  d'8  ) } | g2 | c'4 es'4 | g'4 as'8. as'16 | g'2 | \break

      \repeat volta 2 {   c''4 bes' | as'8 g'8 f' (g') | es'2 | g'4 f' | es'4 d'8. es'16| c'2} \break


    }

    \addlyrics {
      Мо -- га аз да ка -- жа, че де -- нят и -- де веч.

      Слън -- це ще из -- гре -- е, да по -- стъп -- им добре.
    }


    \addlyrics {}

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Денят иде}
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Denjat ide }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score


  \markup \fontsize #+2.5 {
    \hspace #11
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

      \line {   "   " Мога аз да кажа, че ме обича Бог,}

      \line {   "   " слънчевите лъчи кротко шепнат това. (2)}
      \line { " "}

      \line {   "   " Диша свежест зората, пробужда се денят,}

      \line {   "   " Радост и надежда пълнят сърцата ни. (2) }
      \line {   "   "}

      \line {   "   " Moga az da kazha, che me obicha Bog,}

      \line {   "   " slanchevite lachi krotko shepnat tova. (2)}

      \line { " "}
      \line {   "   " Disha svezhest zorata, probuzhda se denyat,}

      \line {   "   " Radost i nadezhda palnyat sartsata ni. (2) }

    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {


    } %column
  } % markup

  %\pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/118_denyat_ide_dnes_lyrics_de.ly"

} % bookpart

