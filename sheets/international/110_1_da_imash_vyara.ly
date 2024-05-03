\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref110_1
  \tocItem \markup "Да имаш вяра – Da imaš vjara"
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
      \addlyrics {
        Da i -- maš
        vja -- ra, __ vja -- ra, __ da i -- maš vja -- ra, __ vja --
        ra, __ da i -- maš vja -- ra, __ vja -- ra, __ da i --
        maš vja -- ra, __ vja -- ra, __ vja -- ra. __}

        \header {
          title = \titleFunc "Да имаш вяра" "Da imaš vjara"
        }

        \midi{}

      } % score

      \markup \empty-one
      \markup \dc-one "D.C. con ripetizione"


      % include foreign translation(s) of the song

      \markup \vspace #3
      \include "../../lyrics/de/110_da_imash_vyara_lyrics_de.ly"

    } % bookpart
