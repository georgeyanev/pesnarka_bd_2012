\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref030
  \tocItem \markup "Изгрей ти, мое Слънце"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Moderato" 2. "40"
      \autoBeamOff
      \partial 4

      d'4 | g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. | d'2. ~ | d'4 r d'' \break
      d''2 es''4 | d''2 cis''4 | d''2 es''4 | d''2. ~ | d''4 r c'' | bes'2 bes'4 \break |
      bes'4 ( a' ) bes' | c''2 bes'4 | a'2. | a'2. ~ | a'4 r a' |  bes'2 bes'4 \break |
      c''2 c''4 | d''2 a'4 |  bes'2. ~ |  bes'4 r a' |  bes'2 a'4 |  bes'2 a'4 \break |
      g'2 fis'4 | g'2. ~ | g'4 r d'' | d''2 es''4 | d''2 cis''4 \break |
      d''2 es''4 | d''2. ~ | d''4 r g'' | f''2 es''4 | d''2 d''4 | c''2 bes'4 \break |
      d''2.~ | d''4 r c'' | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | g'2.~ | g'4 r4 \bar "|."\break
    }



    \addlyrics {
      Из -- грей,
      из -- грей ти, мо -- е Слън -- це, __  за -- що --
      то ча -- кам все -- ки ден; __ за теб коп -- ней __ сър -- це -- то мо -- е __ и в~пъ -- тя си съм из
      -- мо -- рен; __  ти но -- сиш ми жи -- вот бла --
      жен.  __ жи -- вот бла -- жен, жи -- вот бла -- жен, __
      бла -- жен, бла -- жен, жи -- вот бла -- жен; __ ти
      но -- сиш ми жи -- вот бла -- жен. __
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Изгрей ти, мое Слънце" "Izgrej ti, moe Slănce"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #12 {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line {   2. Огрей небето и Земята,}

      \line {   "   "лазурни поднебесен шир,}

      \line {   "   "развесели ми днес душата}

      \line {   "   "с трептенията си безспир.}

      \line {   "   "О, дай ми тоз живот и мир!}
      \line { " " }

      \line { "   " \italic {Припев:} }

      \line {   "   "Живот и мир, живот и мир,}

      \line {   "   "и мир, и мир, живот и мир,}

      \line {   "   "о, дай ми тоз живот и мир!}


    }
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line {   3. Единствено си ти, което}

      \line {   "   "изпълваш всичко със Любов}

      \line {   "   "и подновяваш всичко вехто;}

      \line {   "   "светът чрез теб ще бъде нов;}

      \line {   "   "ти вечно си свята Любов.}


      \line { " " }
      \line { "   " \italic {Припев:} }
      \line {   "   " Света Любов, света Любов,}

      \line {   "   "Любов, Любов, света Любов,}

      \line {   "   "ти вечно си света Любов.}
    }

  } % markup

} % bookpart
