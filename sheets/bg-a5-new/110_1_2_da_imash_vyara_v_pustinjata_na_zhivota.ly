\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref110_1
  \tocItem \markup "Да имаш вяра"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key g \minor
      \time 8/16
      \tempoFunc "Moderato" 8 "126"
      \autoBeamOff

      d'8. d8 d8. | % 2
      d8. c8 ~ c8. | % 3
      d8. bes8 ~ bes8. | % 4
      c8. c8 c8. \break | % 5
      c8. bes8 ~ bes8. | % 6
      a8. ( g8 ~ g8. | % 7
      bes8. ~ bes8 ~ bes8. | % 8
      a8. ) g8 ~ g8. \break | % 9
      a8. c8 c8. |
      bes8. a8 ( a8. ) | % 11
      bes8. ( a8 g8. ) | % 12
      d'8. ~ d8 ~ d8. \break | % 13
      \bar ".|:-|"
      c,8. d8 es8. | % 14
      es8. d8 ~ d8. | % 15
      es8. c8 ~ c8. | % 16
      f8. ( ~ f8 es8. ) | % 17
      d8. ~ d8 ~ d8.
      \bar ":|."

    }

    \addlyrics {
      Да и -- маш
      вя -- ра, __ вя -- ра, __ да и -- маш вя -- ра, __ вя --
      ра, __ да и -- маш вя -- ра, __ вя -- ра, __ да и --
      маш вя -- ра, __ вя -- ра, __ вя -- ра. __}

      \header {
        title = \titleFunc #'ref_desc_8 "Да имаш вяра" "Da imaš vjara"
      }

      \midi{}

    } % score

    \markup \dcr-one "D.C. con ripetizione" #2.1

    \markup \vspace #3

    \label #'ref110_2
    \tocItem \markup "В пустинята на живота"
    \include "include/bookpart-paper.ily"
    \score {
      
 \include "include/score-layout.ily"

      \new Voice \relative c' {

        \clef treble
        \key c \minor
        \time 4/4
        \tempoFunc "Andante" 4 "60"
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
        g4.  g8  es'4.  d8 |
        c4  b4  c4 ^\fermata  es,8
        f8 \break | % 11
        g4.  g8  c4  d4 | % 12
        es2  d2 | % 13
        \time 2/4  | % 13
        a4  b4 | % 14
        c2 ~ | % 15
        c4 \bar "|."
      }

      \addlyrics {
        Във пу -- сти -- ня -- та на
        жи -- во -- та, где на -- си -- ли --
        е -- то се ши -- ри, там стра --
        да -- ни -- е и __ мъ -- ка "ца-" --
        ри. Вся -- кой, с~кой -- то -- те
        дру -- жат, мъ -- че -- ник, ге --
        рой, све -- ти -- я го зо -- ват. __}

        \header {
          title = \titleFunc #'ref_desc_6 "В пустинята на живота" "V pustinjata na života"
        }

        \midi{}

      } % score




    } % bookpart
