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
      \key f \major
      % \tempo "Andante" 4 = 56 - 58
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante " \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 56 / 58 )" }
        }
      }
      \autoBeamOff

      \time 8/4 c'4 f'8. g'16 a'4 d'' c'' a' c''2 | \bar "!" c''4 c'' c'' c''4. d''8 c''2 r4 | \bar "!" \break
      g'4 g'8. g'16 g'4 a' bes'2 bes' | \bar "!" bes'4 d'' d'' d'' c''4. bes'8 a'2 | \bar "!" \break
      g'4 g' g' g' g'4. a'8 bes'2 | \bar "!" a'4 a' a' a' a'4. bes'8 c''2 | \bar "!" \break
      d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 | \bar "!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 | \bar "|."
    }

    \addlyrics {
      Бла -- го --
      сло -- вен Гос -- под Бог наш на всич -- ки ве
      -- ко -- ве; бла -- го -- сло -- вен Ба -- ща наш
      на Свет -- ли -- те ду -- хо -- ве, на Свет --
      ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
      -- хо -- ве, на Свет -- ли -- те ду -- хо -- ве,
      на Свет -- ли -- те ду -- хо -- ве.}
      \addlyrics {
        Bla -- go --
        slo -- ven Gos -- pod Bog nash na vsich -- ki ve
        -- ko -- ve; bla -- go -- slo -- ven Ba -- shta nash
        na Svet -- li -- te du -- ho -- ve, na Svet --
        li -- te du -- ho -- ve, na Svet -- li -- te du
        -- ho -- ve, na Svet -- li -- te du -- ho -- ve,
        na Svet -- li -- te du -- ho -- ve.
      }

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Благословен Господ}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Blagosloven Gospod }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \markup \halign #-38 \raise #2.8 {
      \column  {
        \line  \halign #-3.8 {
          \bold  { "D. C." }
        }
      }
    }

    \markup \null
    \markup \null

    % include foreign translation(s) of the song
    \include "lyrics_de/040_blagosloven_Gospod_lyrics_de.ly"

  } % bookpart
