\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref055_2
  \tocItem \markup "Ти си проявената Любов – Ti si projavenata Ljubov"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key e \minor
      \time 4/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff
      b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 \break |
       fis'2 fis'4 | a'4 g' fis' | e'2 c''4 |  \break 
       
      \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | 
       \time 3/4  fis'8. a'16 g'4 fis' \break |  e'2 c''4   |
       
        \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \break  \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
    }

    \addlyrics {
      Ти си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по --
      ди. Ду -- ша -- та ми коп -- ней за Твой -- та чис -- то --
      та. Ду -- ша -- та ми коп -- ней за Твой -- та свет -- ли -- на.
    }

   \addlyrics {
      Ti si pro -- ja -- ve -- na -- ta Lju -- bov kăm men, Gos -- po --
      di. Du -- ša -- ta mi kop -- nej za Tvoj -- ta čis -- to --
      ta. Du -- ša -- ta mi kop -- nej za Tvoj -- ta svet -- li -- na.
    }

    \header {
      title = \titleFunc " Ти си проявената Любов" "Ti si projavenata Ljubov"
    }

    \midi{}

  } % score
  \markup \dc-one "D.C."



  % include foreign translation(s) of the song
  \include "lyrics_de/055_2_ti_si_proyavenata_lyubov_lyrics_de.ly"

} % bookpart
