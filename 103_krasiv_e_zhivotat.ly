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

    \new Voice \absolute{

      \clef treble
      \key a \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      }

      \autoBeamOff

      \partial 8

      \repeat volta 2 {
        e'8 | a'4 a'8. b'16 | cis''4 a'8. a'16 | cis''8. cis''16 d''8. cis''16 | b'2 | e''4 e''8. ( [ d''16 ] ) \break |

        cis''4 a' | b'8 b' cis''8. b'16 | a'2 | e''4 e''8. ( [ d''16 ] ) | cis''4 a' |  b'8 b' \tempo "rit." cis''8. b'16 | \break
      }
      \alternative {
        {  a'4. e'8 | }
        {  a'4\fermata b4 \tempo \markup {
          % make tempo note smaller
          \concat {
            "Andante sustenuto" \normal-text { " (" }
            \teeny \general-align #Y #DOWN \note #"4" #0.8
            \normal-text { " = 63)" }
          }
        } | }
      }

      \key c \major \time 4/4 \repeat volta 2 {
        c'2 b4 a |  \tuplet 3/2 { gis8 [ ( a b ) ] } a2 e'4 | \break

        \time 3/4 f'4 e' \tuplet 3/2 { dis'8 [ ( e' )  ] f' } | e'2 e'8 e'8 | \time 2/4 a'4 b'4 | \time 4/4 c''4 b' a' \tuplet 3/2 { gis'8 [ ( a' b' ) ] } | \break
        \time 3/4
      }


      \alternative {
        {  a'2 a4 | }
        {
          a'2 r8  \tempo \markup {
            % make tempo note smaller
            \concat {
              "Tempo I "

            }
          }  e'8 |
        }
      }

      \time 2/4 \key a \major a'4 a'8. b'16 | cis''4 a'8. a'16 | \break

      cis''8. cis''16 d''8. cis''16 | b'2 |e''4  e''8. [ ( d''16 ) ] | cis''4 a'4 | b'8 b' cis''8. b'16 | \break

      a'2 | e''4 e''8. [ ( d''16 ) ]  | cis''4 a' | b'8 b' cis''8. b'16 | a'4. \bar "|."

    }

    \addlyrics {
        Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша,

        що из -- пъл -- ня ця -- ла -- та Зе -- мя,

        що из -- пъл -- ня ця -- ла -- та Зе -- мя. Кра -- мя.

        Кра -- сив е Жи -- во -- тът на на -- ша -- та ду -- ша,

        що из -- пъл -- ня ця -- ла -- та Зе -- мя. Кра -- мя.

        Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша,

        що из -- пъл -- ня ця -- ла -- та Зе -- мя

        що из -- пъл -- ня ця -- ла -- та Зе -- мя.
      }
      \addlyrics {
             Kra -- siv e zhi -- vo -- tat na na -- sha -- ta du -- sha,

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya. Kra -- mya.

      Kra -- siv e zhi -- vo -- tat na na -- sha -- ta du -- sha,

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya. Kra -- mya.

      Kra -- siv e zhi -- vo -- tat na na -- sha -- ta du -- sha,

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya.
      }

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line { Красив е Животът }
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Krasiv e Zhivotat }
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \pageBreak



    % include foreign translation(s) of the song
    \include "lyrics_de/103_krasiv_e_zhivota_lyrics_de.ly"

  } % bookpart
