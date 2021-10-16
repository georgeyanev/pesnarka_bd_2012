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
      %  ragged-last = ##t % do not spread last line to fill the whole space
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
      \key d \minor
      \time 3/4
      %\tempo "Moderato" 8 = 160
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 58)" }
        }
      }
      \autoBeamOff

      \partial 4
      d'4 | f'2 g'4 | a'2 a'4 | d''2 c''4 | bes'2 a'8. g'16 \break |

      a'2 g'8. a'16 | bes'2 a'8. e'16 | f'2 e'8. f'16 | g'4 ( a' ) e'8. f'16 |  d'2 f'8. e'16 \break |

      \repeat volta 2 { d'2 e'8. f'16 | g'2 ~ g'8 e' | g'4. f'8 e' [( f' )] |} \alternative { { d'2 f'8. e'16  | } { d'2. \break |} }
    }

    \addlyrics {
      Ве -- нир Бе
      -- нир, Би -- хар Бе -- нум Ил -- би -- ют, Ил
      бе -- зут Ом би -- ют. Ил бе -- зут Ом би --
      ют. Зун ме -- зун, зун ме -- зун, Би -- ном ту
      ме -- то. Зун ме -- то.
    }

    \addlyrics {
      Ve -- nir Be --
      nir, Bi -- har Be -- num Il bi -- yut, Il be -- zut. Om bi --
      yut. Il be -- zut Om bi -- yut. Zun me -- zun, zun me --
      zun, Bi -- nom tu me -- to. Zun me -- to.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Венир бенир }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Venir benir }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

        \markup \halign #-6.1 \raise #2.8 \override #'(baseline-skip . 2) {
        \column  {
          \line  \halign #-3.8 {
            \bold  { "D. C. al Fine" }
          }
          \line  {
            \bold { con ripetizione }
          }
        }
      }


    % include foreign translation(s) of the song
    %\include "lyrics_de/lyrics_de_file_name.ly"

  } % bookpart
