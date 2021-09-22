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
      \key g \minor
      \time 3/4  \tempo \markup {
        % make tempo note smaller
        \concat {
          "Adantino  " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 72)" }
        }
      }
      \autoBeamOff
      \partial 4
      d'4 | g'2 d'4 | bes'2 a'4 | g'4 fis' g' |  a'4 d' es'  \break
      d'2 d'4 |  d''2 g'4 | es''2 d''4 | c''4 bes' a' \break |
      bes'4 c'' d'' | a'2 a'4 | f''2 d''4 |  g''2 \fermata f''4 \break |
      es''4 d'' c'' | bes'4 c'' d'' ( | d''4 ) r a' | c''2 a'4 \break |
      d''2 a'4 | c''4 bes' a' | g'4 fis' a' | g'2 r4 | \time 2/4 \break |
      \repeat volta 2 {
        \bar ".|:-||" d''8 d'' es'' es'' | d''8 c'' d''4 | c''8 c'' d'' c'' \break |
        c''8 a' bes'4 | bes'8 c'' d'' es'' | es''8 es'' d''4 \break |
        a'8 c'' bes' a' | fis'8 a' g'4   \break
      }
    }

    \addlyrics {
      Ста -- ни, ста -- ни и Гос -- под ще те о -- жи -- ви;
      ста -- ни, ста -- ни и Гос -- под ще те въз --
      кре -- си; ста -- ни, ста -- ни и с~Лю -- бов --
      та за -- поч -- ни; ста -- ни, ста -- ни и в~Ис
      -- ти -- на се об -- ле -- чи. В~Ис -- ти -- на
      се об -- ле -- чи и със не -- я все гра -- ди:
      тя ще те и об -- но -- ви, и с~Дух ще те о
      -- за -- ри.}
      \addlyrics {
        Sta -- ni, sta -- ni i Gos -- pod shte te o -- zhi -- vi;
        sta -- ni, sta -- ni i Gos -- pod shte te vaz --
        kre -- si; sta -- ni, sta -- ni i s~Lyu -- bov --
        ta za -- poch -- ni; sta -- ni, sta -- ni i v~Is
        -- ti -- na se ob -- le -- chi. V~Is -- ti -- na
        se ob -- le -- chi i sas ne -- ya vse gra -- di:
        tya shte te i ob -- no -- vi, i s~Duh shte te o
        -- za -- ri.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line {    Стани, стани }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 {  Stani, Stani }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

      \markup \halign #-12.1 \raise #2.8 \override #'(baseline-skip . 2) {
        \column  {
          \line  \halign #-3.8 {
            \bold  { "D. C." }
          }
          \line  {
            \bold { con ripetizione }
          }
        }
      }

      \pageBreak

      \markup \fontsize #+2.5 {
        \hspace #1
        \override #'(baseline-skip . 2.4) % affects space between column lines
        \column {
          \line {  }
          \line {   }
        }

        \hspace #5
        \override #'(baseline-skip . 2.4)
        \column {
          \line {  }
          \line {  }
        } %column
      } % markup



      % include foreign translation(s) of the song
      \include "lyrics_de/028_stani_stani_lyrics_de.ly"

    } % bookpart
