\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \paper {
  first-page-number = #1
  print-page-number = ##t
  print-first-page-number = ##t
}
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

    \header {
      title = \titleFunc #'ref "Заглавие" "Zaglavie"
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

  } % markup

  % include foreign translation(s) of the song
  

} % bookpart

% Più mosso
%
