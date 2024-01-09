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
      \time 6/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 2.
      bes4 
      es4.  g,8 | 
      bes2.  bes4  es4 g4 | 
      f2.  f4  g4 as4 \break |
      bes2.  bes4  bes4 c4 | bes2.
      as4  g2 | f4  bes,4 f'1 | es2. \bar "|."
    }

    \addlyrics {
      И ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.
    }
   
    \addlyrics {
      I ska -- čam az ka -- to pti -- čka ot klon na klon, da se ču -- di vsja -- koj, kat me vi -- di.
    }

    \header {
      title = \titleFunc "Зов на планината" "Zov na planinata"
    }

    \midi{}

  } % score
   %\markup \dc-two "D.C.""con repitione"

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {  2. Запявам аз  песен чудна}
      \line {   "   "  за Слънцето,}
      \line {   "   "  бистри изворчета зашумяват.}
      \line {   "   " }
      \line {3. И виждам аз връх изправен}
      \line {   "   " пред мен стои.}
      \line {   "   " Той зове ме кротко там нагоре.}
    }

    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {  2. Zapyavam az  pesen chudna}
      \line {   "   "  za Slantseto,}
      \line {   "   "  bistri izvorcheta zashumyavat.}
      \line {   "   " }
      \line {3. I vizhdam az vrah izpraven}
      \line {   "   " pred men stoi.}
      \line {   "   " Toy zove me krotko tam nagore.}
    } %column
  } % markup

 
  

  % include foreign translation(s) of the song

  \markup \empty-two
  \include "../../lyrics/de/112_2_zov_na_planinata_lyrics_de.ly"

} % bookpart
