\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 4/4
      \tempoFunc "Moderato" 4 "69"
      \autoBeamOff
      c % notes here
    }

    \addlyrics {}
    \addlyrics {}

    \header {
      title = \titleFunc "Заглавие" "Zaglavie"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Текст на кирилица }
      \line {   "   " Текст на кирилица }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Tekst na latinica }
      \line {   "   " Tekst na latinica }
    } %column
  } % markup

  % include foreign translation(s) of the song
  \include "../../lyrics/de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
