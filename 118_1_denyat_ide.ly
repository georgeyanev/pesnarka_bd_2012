\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref118_1
  \tocItem \markup "Денят иде – Denyat ide "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      c'4 es'4 | d'8  c'8  \tuplet 3/2 { b8\=1([ \slurDashed c'8\=2(d'8\=2)\=1)] } \slurSolid | g2 | c'4 es'4 | g'4 as'8. as'16 | g'2 | \break

      \repeat volta 2 {   c''4 bes' | as'8 g'8 f' [(g') ] | es'2 | g'4 f' | es'4 d'8. es'16| c'2} \break
    }

    \addlyrics {
      Мо -- га аз да ка -- жа, че де -- нят и -- де веч.

      Слън -- це ще из -- гре -- е, да по -- стъ -- пим до -- бре.
    }

    \addlyrics {
      Mo -- ga az da ka -- zha, che de -- nyat i -- de vech.

      Slan -- tse shte iz -- gre -- e, da po -- sta -- pim do -- bre.
    }

    \header {
      title = \titleFunc "Денят иде" " Denyat ide"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #11
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {  2. Мога аз да кажа, че обича ме Бог.}

      \line {   "   " Слънчевите лъчи кротко шепнат това. (2)}
      \line { " "}

      \line {  2. Moga az da kazha, che obicha me Bog.}

      \line {   "   " Slanchevite lachi krotko shepnat tova. (2)}
      \line { " "}

      \line {   3.  Диша свежест зората, пробужда се денят.}

      \line {   "   " Радост и надежда пълнят сърцата ни. (2) }
      \line {   "   "}


      \line {  3. Disha svezhest zorata, probuzhda se denyat.}

      \line {   "   " Radost i nadezhda palnyat sartsata ni. (2) }
      \line {" "}
      \line {" "}
      \line {" "}

    }
  } % markup

  %\pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/118_denyat_ide_dnes_lyrics_de.ly"

} % bookpart

