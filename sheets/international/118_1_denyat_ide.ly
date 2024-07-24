\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref118_1
  \tocItem \markup "Денят иде – Denjat ide "
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

      \bar ".|:-|"    c''4 bes' | as'8 g'8 f' [(g') ] | es'2 | g'4 f' | es'4 d'8. es'16| c'2 \bar ":|." \break
    }

    \addlyrics {
      "1. Мо" -- га аз да ка -- жа, че де -- нят и -- де веч.

      Слън -- це ще из -- гре -- е, да пос -- тъ -- пим доб -- ре.
    }

    \addlyrics {
      "1. Mo" -- ga az da ka -- ža, če de -- njat i -- de več.

      Slăn -- ce šte iz -- gre -- e, da pos -- tă -- pim dob -- re.
    }

    \addlyrics {
      " " " " " " " 3. [...]" зо-ра -- та
    }
    \addlyrics {
      " " " " " " " 3. [...]" zo-ra -- ta
    }


    \header {
      title = \titleFunc "Денят иде" "Denjat ide"
    }

    \midi{}

  } % score
  \markup \empty-two

  \markup \abs-fontsize #10 {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {


      \line {  2. Мога аз да кажа, че обича ме Бог.}

      \line {   "   " Слънчевите лъчи кротко шепнат това. (2)}
      \vspace #0.5

      \line {  2. Moga az da kaža, če običa me Bog.}

      \line {   "   " Slănčevite lăči krotko šepnat tova. (2)}
      \vspace #0.5

      \line {   3.  Диша свежест зората, пробужда се денят.}

      \line {   "   " Радост и надежда пълнят сърцата ни. (2) }
      \vspace #0.5


      \line {   3.  Diša svežest zorata, probužda se denjat.}

      \line {   "   " Radost i nadežda pălnjat sărcata ni. (2) }

    }
  } % markup

  \markup \vspace #3


  % include foreign translation(s) of the song
  \include "../../lyrics/de/118_denyat_ide_dnes_lyrics_de.ly"

} % bookpart

