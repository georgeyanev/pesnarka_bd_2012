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

    \new Voice \absolute  {
      \clef treble
      \key g\minor
      \time 3/4
      %\tempo "Moderato" 8 = 160
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Adagio " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 54)" }
        }
      }
      \partial 4
      \autoBeamOff

      d'8. d'16 | g'2 a'8. bes'16 |  g'4 d'2 | \time 4/4  a'8. bes'16 c''4 bes'2 | \break

      a'8. bes'16 g'4 g'2 | \time 3/4  d''8. d''16 d''2 | \time 4/4  es''8. d''16 d''4 c''2 \break

      \time 3/4  c''8. c''16 c''2 | \time 4/4  d''8. c''16 bes'4 bes'2 | \time 3/4  a'8. a'16 a'2 \break |

      \time 4/4  bes'8. a'16 g'4 g'2^\markup \bold "        Fine"  
        | \bar ":|.|:" d'4 g'4 bes'4 a'4 |  \time 3/4  g'4 fis'8. fis'16 g'4 \break |

        es'8. es'16 d'2 | \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 \break |

        a'4 \fermata g'2 | \bar ":|.|:" \time 5/4  
          d''4 cis''4 es''4 d''2 | d''4 cis''4 es''4 d''2 \break |

          \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 |  a'4 \fermata g'2
        | \bar ":|."
    }

    \addlyrics {
      Фир -- фюр --
      фен Тао Би Ау -- мен, Тао Би Ау -- мен, Тао Би
      Ау -- мен. Фир -- фюр -- "-фен" Тао Би Ау -- мен.
      Фир -- фюр -- "-фен" Тао Би Ау -- мен, Фир -- фюр --
      "-фен" Тао Би Ау -- мен. Бла -- го -- сла -- вяй,
      ду -- ше мо -- я, Гос -- по -- да; бла -- го --
      сла -- вяй и не за -- бра -- вяй. Бла -- го --
      сла -- вяй, бла -- го -- сла -- вяй, бла -- го --
      сла -- вяй и не за -- бра -- вяй.}
      \addlyrics {
        Fir -- fyur --
        fen Tao Bi Au -- men, Tao Bi Au -- men, Tao Bi
        Au -- men. Fir -- fyur -- fen Tao Bi Au -- men.
        Fir -- fyur -- fen Tao Bi Au -- men, Fir -- fyur --
        fen Tao Bi Au -- men. Bla -- go -- sla -- vyay,
        du -- she mo -- ya, Gos -- po -- da; bla -- go --
        sla -- vyay i ne za -- bra -- vyay. Bla -- go --
        sla -- vyay, bla -- go -- sla -- vyay, bla -- go --
        sla -- vyay i ne za -- bra -- vyay.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Фир фюр фен \line { " " }  Благославай }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Fir fyer fen \line { " " } Blagoslavyay}
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

  \markup \halign #-11.1 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line  { 
        \bold \right-align { "D. C. al Fine" }
      }
      \line  { 
        \bold \right-align { "senza ripetizione" }
      }
    }
  } 


  \pageBreak
  % include foreign translation(s) of the song
  \include "lyrics_de/070_fir_fyur_fen_lyrics_de.ly"

} % bookpart
