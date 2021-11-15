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
      \key g \major
      \time 7/16
      %\tempo "Moderato" 8 = 160
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegretto" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"8" #0.8
          \normal-text { " = 176)" }
        }
      }
      \autoBeamOff


      g8 ( b ) d'8. | d'8 ( g' ) d'8. | g8 ( b ) d'8. | d'8 ( g' ) d'8. | d'8 g' d'8. \break | % 6

      d'8 g' d'8. | d'8 c'' b'8. | a'8 b' g'8. | d'8 c'' b'8. | a'8 b' g'8. \break |

      \repeat volta 2 { g'8 b' b'8. | b'8 d'' d''8. | c''8 d''8 b'8. | a'8 b' g'8. } \break

      \key g \minor \repeat volta 2 { d'8 d'' d''8. | d'8 c'' c''8. | d'8 bes' bes'8. | a'8 g' g' g'16 | g'4 ~ g'8. } \break |

      \repeat volta 2 { a'8 a' a' c''16 | bes'4 ~ bes'8. | a'8 g' g' g'16 |} 
      \alternative { {  g'4 ( ~ g'8 f'16 )  | } { g'4~\tempo "   Fine" g'8. | \bar "|."} }


    }

    \addlyrics {
      Си -- ла жи
      -- ва, Си -- ла жи -- ва, ка -- жи ми, ка -- жи
      ми де во -- да из -- ви -- ра, де во -- да из
      -- ви -- ра. Из -- ви -- ра, из -- ви -- ра, де
      во -- да из -- ви -- ра. Ка -- жи ми, ка -- жи
      ми, ка -- жи ми слад -- ки ду -- ми две. Твой --
      те ду -- ми две, слад -- ки ду -- ми две.
      две.}

      \addlyrics {
        Si -- la zhi --
        va, Si -- la zhi -- va, ka -- zhi mi, ka -- zhi mi de vo -- da
        iz -- vi -- ra, de vo -- da iz -- vi -- ra. Iz -- vi -- ra, iz
        -- vi -- ra, de vo -- da iz -- vi -- ra. Ka -- zhi mi, ka --
        zhi mi, ka -- zhi mi slad -- ki du -- mi dve. Tvoy -- te du --
        mi dve, slad -- ki du -- mi dve. dve.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Сила жива }
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Sila zhiva }
            \vspace #-0.8
            \center-align
            \line \fontsize #-3 { " " }
          }
        }

        \midi{}

      } % score

\markup \halign #-3.21 \raise #2.8 \override #'(baseline-skip . 2) { 
    \column  { 
      \line  { 
        \italic \right-align { "attacca „Скръбта си ти кажи/Skrabta si ti kazhi“" }
      }
      \line  {" "}
      \line  {" "}
      \line  {" "}
      \line  {" "}
    }
} 


% include foreign translation(s) of the song
\include "lyrics_de/076_2_sila_zhiva_lyrics_de.ly"

} % bookpart
