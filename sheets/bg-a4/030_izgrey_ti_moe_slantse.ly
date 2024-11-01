\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref030
  \tocItem \markup "Изгрей ти, мое слънце"
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
      \set stanza = "1. " Из -- грей,
      из -- грей ти, мо -- е слън -- це, __  за -- що --
      то ча -- кам все -- ки ден; __ за теб коп -- ней __ сър -- це -- то мо -- е __ и в~пъ -- тя си съм из
      -- мо -- рен; __  ти но -- сиш ми жи -- вот бла --
      жен.  __ жи -- вот бла -- жен, жи -- вот бла -- жен, __
      бла -- жен, бла -- жен, жи -- вот бла -- жен; __ ти
      но -- сиш ми жи -- вот бла -- жен. __
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Изгрей ти, мое слънце" "Izgrej ti, moe Slănce"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \abs-fontsize #12 \override #`(baseline-skip . ,bgCoupletBaselineSkip){


    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Огрей небето и земята,"
            "лазурни поднебесен шир,"
            "развесели ми днес душата"
            "с трептенията си безспир."
            "О, дай ми тоз живот и мир!"
          }
        }
        \vspace #1
        \line{ \italic"    Припев:"}
        %\vspace #0.3
        \line {
          "   "
          \column {
            "Живот и мир, живот и мир,"
            "и мир, и мир, живот и мир,"
            "о, дай ми тоз живот и мир!"
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Единствено си ти, което"
            "изпълваш всичко със Любов"
            "и подновяваш всичко вехто;"
            "светът чрез теб ще бъде нов;"
            "ти вечно си свята Любов."
          }
        }

        \vspace #1
        \line{ \italic"    Припев:"}
        %\vspace #0.3
        \line {
          "   "
          \column {
            "Света Любов, света Любов,"
            "Любов, Любов, света Любов,"
            "ти вечно си света Любов."
          }
        }
      }
    }
  }
} % bookpart
