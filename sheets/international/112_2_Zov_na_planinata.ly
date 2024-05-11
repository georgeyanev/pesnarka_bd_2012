\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref112_2
  \tocItem \markup "Зов на планината – Zov na planinata"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {

      \clef treble
      \key es \major
      \time 3/8
      \tempoFunc "Moderato" 8 "88"
      \autoBeamOff
      bes8
      es8.  g,16 |
      bes4. |  bes8  es8. g16 |
      f4.|  f8  g8 as8 \break |
      bes4. | bes8  bes8 c8 | bes4
      as8 |  g4. | f8 bes,8 f'8 | es4. \bar "|."
    }

    \addlyrics {
      "1. И" ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.
    }
    \addlyrics {
      "1. I" ska -- čam az ka -- to pti -- čka ot klon na klon, da se ču -- di vsja -- koj, kat me vi -- di.
    }

    \header {
      title = \titleFunc "Зов на планината" "Zov na planinata"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C.""con repitione"

  \markup \vspace #2

  \markup \abs-fontsize #10 {
    \hspace #8
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line {  2. Запявам аз  песен чудна}
      \line {   "   "  за Слънцето,}
      \line {   "   "  бистри изворчета зашумяват.}
      \vspace #0.5
      \line {3. И виждам аз връх изправен}
      \line {   "   " пред мен стои.}
      \line {   "   " Той зове ме кротко там нагоре.}
    }

    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {  2. Zapjavam az  pesen čudna}
      \line {   "   "  za Slănceto,}
      \line {   "   "  bistri izvorčeta zašumjavat.}
      \vspace #0.5
      \line {3. I viždam az vrăh izpraven}
      \line {   "   " pred men stoi.}
      \line {   "   " Toj zove me krotko tam nagore.}

    } %column
  } % markup




  % include foreign translation(s) of the song

  \markup \vspace #3
  \include "../../lyrics/de/112_2_zov_na_planinata_lyrics_de.ly"

} % bookpart
