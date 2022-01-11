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
    ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context

    \context { % change staff size
      \Staff
      fontSize = #+0 % affects notes size only
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #0.5
      \override BarLine #'hair-thickness = #1
      %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
    }

    \context { % adjust space between staff and lyrics and between the two lyric lines
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
    \key c \minor
    \time 4/4
    \tempo \markup { % make tempo note smaller
      \concat { "Andante" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 60)" }
      }
    }
    \autoBeamOff

    \partial 4

  c8.  c16 | % 2
   es4 (  d4 )  c4 (  b4 ) | % 3
  \time 3/4  | % 3
   c2  c8.  c16 | % 4
   d4  g,2 \break | % 5
  \time 4/4  | % 5
   g'8  f8  es8  d8  c8.
   c16  b8.  b16 | % 6
  \time 3/4  | % 6
   c2  g'8.  g16 | % 7
  \time 4/4  | % 7
   c4.  c8  bes4  c8 ( [
   bes8 ) ] \break | % 8
   as4  g8.  g16  g2 | % 9
   g4.  g8  es4.  d8 |
   c4  b4  c4 ^\fermata  es8
   f8 \break | % 11
   g4.  g8  c4  d4 | % 12
   es2  d2 | % 13
  \time 2/4  | % 13
   a4  b4 | % 14
   c2 ~ | % 15
   c4 \bar "|."
  }

  \addlyrics {  Във пу -- сти -- ня -- та на
  жи -- во -- та, где на -- си -- ли --
  е -- то се ши -- ри, там стра --
  да -- ни -- е и мъ -- ка ца --
  ри. Вся -- кой, с‿кой -- то -- те
  дру -- жат, мъ -- че -- ник, ге --
  рой, све -- ти -- я го зо -- ват.}
  \addlyrics {   Vav pu -- sti -- nya -- ta na
  zhi -- vo -- ta, gde na -- si -- li --
  e -- to se shi -- ri, tam stra --
  da -- ni -- e i ma -- ka tsa --
  ri. Vsya -- koy, s‿koy -- to -- te
  dru -- zhat, ma -- che -- nik, ge --
  roy, sve -- ti -- ya go zo -- vat.}

  \header {
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { В пустинята на живота }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { V pustinyata na zhivota }
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }

  \midi{}

} % score


\markup \halign #-38.5 \raise #3 \override #'(baseline-skip . 2) {
    \column  {
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
      \line { " " }
    }
  }


% include foreign translation(s) of the song
\include "lyrics_de/110_2_v_pustinyata_zhivota_lyrics_de.ly"

} % bookpart
