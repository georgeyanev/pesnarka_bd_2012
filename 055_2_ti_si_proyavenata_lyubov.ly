\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \major
      \time 4/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff
      b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |fis'2 fis'4 | a'4 g' fis' | \break
      e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | \break
      e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
    }

    \addlyrics {
      Ти си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по --
      ди. Ду -- ша -- та ми коп -- ней за Твой -- та чис -- то --
      та. Ду -- ша -- та ми коп -- ней за Твой -- та свет -- ли -- на.
    }

    \addlyrics {
      Ti si pro -- ya -- ve -- na -- ta Lyu -- bov kam men, Gos -- po --
      di. Du -- sha -- ta mi kop -- ney za Tvoy -- ta chis -- to --
      ta. Du -- sha -- ta mi kop -- ney za Tvoy -- ta svet -- li -- na.
    }

    \header {
      title = \titleFunc " Ти си проявената Любов" "Ti si proyavenata Lyubov"
    }

    \midi{}

  } % score
  \markup \dc-one "D.C."
  


  % include foreign translation(s) of the song
  \include "lyrics_de/055_2_ti_si_proyavenata_lyubov_lyrics_de.ly"

} % bookpart
