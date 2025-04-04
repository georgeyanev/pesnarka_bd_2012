\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref030
  \tocItem \markup "Изгрей ти, мое слънце – Izgrej ti, moe slănce"
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
    \addlyrics {
      \set stanza = "1. " Iz -- grej,
      iz -- grej ti, mo -- e slăn -- ce, __  za -- što --
      to ča -- kam vse -- ki den; __ za teb kop -- nej __ săr -- ce -- to mo -- e __ i v~pă -- tja si săm iz
      -- mo -- ren; __  ti no -- siš mi ži -- vot bla --
      žen.  __ ži -- vot bla -- žen, ži -- vot bla -- žen, __
      bla -- žen, bla -- žen, ži -- vot bla -- žen; __ ti
      no -- siš mi ži -- vot bla -- žen. __
    }

    \header {
      title = \titleFunc "Изгрей ти, мое слънце" "Izgrej ti, moe slănce"
    }

    \midi{}

  } % score
  \markup \vspace #2
  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
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
        \line {
          "   "
          \column {
            "Живот и мир, живот и мир,"
            "и мир, и мир, живот и мир,"
            "о, дай ми тоз живот и мир!"
          }
        }

      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses

        \line {
          \bold "2."
          \column {
            "Ogrej nebeto i zemjata,"
            "lazurni podnebesen šir,"
            "razveseli mi dnes dušata"
            "s treptenijata si bezspir."
            "O, daj mi toz život i mir!"
          }
        }
        \vspace #1
        \line{ \italic"    Pripev:"}
        \line {
          "   "
          \column {
            "Život i mir, život i mir,"
            "i mir, i mir, život i mir,"
            "o, daj mi toz život i mir!"
          }
        }

      }\hspace #0.1
    }
  }

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {

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
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses

        \line {
          \bold "3."
          \column {
            "Edinstveno si ti, koeto"
            "izpălvaš vsičko săs Ljubov"
            "i podnovjavaš vsičko vehto;"
            "svetăt črez teb šte băde nov;"
            "ti večno si svjata Ljubov."
          }
        }

        \vspace #1
        \line{ \italic"    Pripev:"}
        %\vspace #0.3
        \line {
          "   "
          \column {
            "Sveta Ljubov, sveta Ljubov,"
            "Ljubov, Ljubov, sveta Ljubov,"
            "ti večno si sveta Ljubov."
          }
        }

      }\hspace #0.1
    }
  }

  \markup \vspace #2


  % include foreign translation(s) of the song
  \include "../../lyrics/de/030_izgrey_ti_moe_slantse_lyrics_de.ly"

} % bookpart
