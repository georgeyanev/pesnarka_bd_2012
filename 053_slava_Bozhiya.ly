\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 4/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff

      d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \tupletUp \tuplet 3/2 {  d''8 cis'' b'8 } ais'2 | \break
      \times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 [( d'' e'' d'' cis'' b' )] ais'4 | b'8 [( cis'' )] b'2. \bar "|."
    }

    \addlyrics {
      Не на ме -- не, не на ме -- не, но на И -- ме -- то Си
      дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!
    }

    \addlyrics {
      Ne na me -- ne, ne na me -- ne, no na I -- me -- to Si
      day, Bo -- zhe, sla -- va, sla -- va, sla -- va!
    }
    \header {
      title = \titleFunc "Слава Божия" "Slava Bozhia"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \include "lyrics_de/053_slava_Bozhiya_lyrics_de.ly"

} % bookpart
