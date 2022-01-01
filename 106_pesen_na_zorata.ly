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
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
          (basic-distance . 4.5)
          (padding . 0.5)
        )
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \relative c' {
      \clef treble
      \key d \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Andante maestoso" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
        }
      }
      \autoBeamOff
      d'4 a8 b8 | a8 fis8 d e | fis4 ( e4 ) | a2 | g4 b8 b| \break

      a8 g fis d | e [ ( fis ] e4 )  | d2 \bar "||" \time 4/4 \tuplet 3/2 { { g8 [ (   a8 ) ] b8 } } a4 a2 \break

      \tuplet 3/2 {    { d,8 [( e8 )] } fis8 } e4 d2 |  \key g \major \time 2/4 \tempo \markup {
          % make tempo note smaller
          \concat {
            "Più mosso " \normal-text { "(" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 184)" }
          }
        } g4. ( fis8 | e4 ) d4 | c4. e8 |  d4 c | \break

      b4 c | d (e) \bar "||" \time 3/4 d2 d4 | b'4. a8 g8. fis16 | e4 d c8. c16  | \break

      e4. d8 c8. c16 | b2 r4 \repeat volta 2 {b'4 c4. b8 | a8 g fis [(g)] a4  \break

      g4 fis e | \time 2/4 d8 c b8 [(c8) ] | d2 | } g4. fis8 | \break

      e8 [( d ] e [d ]) | d2 | a'4. g8  |  e8 [( d8  ] e8 [d8 ]) | d2 \bar "||" \break

      \time 3/4 d8 g a a a a | d, fis a \tempo "rit." a a a \bar "||" \key d \major \time 2/4 \tempo "Tempo I" d4 a8 b | \break

      a8 fis d e | fis fis e4| a2 | g4 b8 b | a g fis d | \break

      e8 fis e4 | d2 | \time 4/4 \tuplet 3/2 { g8 [(a8)] b } a4 a2 | \tuplet 3/2 {d,8 [(e8)] fis8  }e4 d2 \bar "|."


    }

    \addlyrics {
      Зо -- ра се свет -- ла за -- зо -- ря -- ва,
      зо -- ра се свет -- ла за -- зо -- ря -- ва,
      за -- зо -- ря -- ва, за -- зо -- ря -- ва,

      Пъл -- на 	Pа -- дост тя в~Жи -- во -- та вна -- ся.

      На мла -- ди но -- си здра -- ве,

      на ра -- бот -- "ни-" дар Жи -- вот.

      Мъ -- дри -- те да до -- бру -- ват,

      до -- бри -- те да бла -- гу -- ват,


      да до -- бру -- ват, да бла -- гу -- ват;

      мъд -- ри да до -- бру -- ват,

      до -- бри да бла -- гу -- ват.

      Зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      за -- зо -- ря -- ва, за -- зо -- ря -- ва.
      }
      
      \addlyrics {
       Zo -- ra se svet -- la za -- zo -- rya -- va,
      zo -- ra se svet -- la za -- zo -- rya -- va,
      za -- zo -- rya -- va, za -- zo -- rya -- va,

      Pal -- na 	Pa -- dost tya v~Zhi -- vo -- ta vna -- sya.

      Na mla -- di no -- si zdra -- ve,

      na ra -- bot -- "ni-" dar Zhi -- vot.

      Ma -- dri -- te da do -- bru -- vat,

      do -- bri -- te da bla -- gu -- vat,


      da do -- bru -- vat, da bla -- gu -- vat;

      mad -- ri da do -- bru -- vat,

      do -- bri da bla -- gu -- vat.

      Zo -- ra za tyah se svet -- la za -- zo -- rya -- va,

      zo -- ra za tyah se svet -- la za -- zo -- rya -- va,

      za -- zo -- rya -- va, za -- zo -- rya -- va.
        }

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Песен на зората}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Pesen na zorata}
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

  \markup \halign #-16 \raise #3 \override #'(baseline-skip . 2) {
    \column  {
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
    }
  }




      % include foreign translation(s) of the song
      \include "lyrics_de/106_pesen_na_zorata_lyrics_de.ly"

    } % bookpart
