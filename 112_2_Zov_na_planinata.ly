\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {

      \clef treble
      \key c \minor
      \time 7/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 4
      bes4 | % 1
      es4.  g,8  bes2.  bes4  es4 | % 2
      g4  f4 ~  f2  f4  g4
      as4 \break | % 3
      \time 5/4  | % 3
      bes2.  bes4  bes4 | % 4
      \time 3/4  | % 4
      c4  bes2 | % 5
      \time 5/4  | % 5
      as4  g2  f4  bes,4 | % 6
      f'2  es2. \bar "|."
    }

    \addlyrics {
      И ска -- чам аз ка -- то пти -- чка от клон на клон, да се чу -- ди вся -- кой, кат ме ви -- ди.
    }
    \addlyrics { I -- ska -- cham az ka -- to pti -- chka ot klon na klon, da se chu -- di vsya -- koy, kat me vi -- di.
    }

    \header {
      title = \titleFunc "Зов на планината" "Zov na planinata"
    }

    \midi{}

  } % score
   %\markup \dc-two "D.C.""con repitione"

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
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

    \hspace #5
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
  \include "lyrics_de/112_2_zov_na_planinata_lyrics_de.ly"

} % bookpart
