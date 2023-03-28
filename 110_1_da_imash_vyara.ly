\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref110_1
  \tocItem \markup "Да имаш вяра – Da imash vyara"
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
      \repeat volta 2 {
        c,8. d8 es8. | % 14
        es8. d8 ~ d8. | % 15
        es8. c8 ~ c8. | % 16
        f8. ( ~ f8 es8. ) | % 17
        d8. ~ d8 ~ d8.
      }

    }

    \addlyrics {
      Да и -- маш
      вя -- ра, вя -- ра, да и -- маш вя -- ра, вя --
      ра, да и -- маш вя -- ра, вя -- ра, да и --
      маш вя -- ра, вя -- ра, вя -- ра.}
      \addlyrics {
        Da i -- mash vya
        -- ra, vya -- ra, da i -- mash vya -- ra, vya -- ra, da i --
        mash vya -- ra, vya -- ra, da i -- mash vya -- ra, vya --
        ra, vya -- ra.}

        \header {
          title = \titleFunc "Да имаш вяра" "Da imash vyara"
        }

        \midi{}

      } % score

      \markup \dc-one "D.C."
      

      % include foreign translation(s) of the song

      %\pageBreak
      \include "lyrics_de/110_da_imash_vyara_lyrics_de.ly"

    } % bookpart
