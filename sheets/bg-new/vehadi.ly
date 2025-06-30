\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref083_1
  \tocItem \markup "Вехади"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Adagio, ad libitum" 4 "56"
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines

      \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral  a' d''4^\mp   e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2   \break

      \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2 \break

      a4^\pp  bes2 a2. a4  bes2 a2. a4  bes2 a2. \bar ":|." \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
    \header {
      title = \titleFunc #'ref_desc_7 "Вехади" "Vehadi"
    }

    \midi{}

  } % score
  %



} % bookpart
