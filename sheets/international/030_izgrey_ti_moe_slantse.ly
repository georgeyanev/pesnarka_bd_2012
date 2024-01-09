\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref030
  \tocItem \markup "Изгрей ти, мое Слънце – Izgrej ti, moe Slănce"
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
       -- мо -- рен; __  ти но -- сиш ми Жи -- вот бла --
      жен.  __ Жи -- вот бла -- жен, Жи -- вот бла -- жен, __ 
      бла -- жен, бла -- жен, Жи -- вот бла -- жен; __ ти
      но -- сиш ми Жи -- вот бла -- жен. __ }
       \addlyrics {
      Iz -- grej,
      iz -- grej ti, mo -- e Slăn -- ce, __  za -- što --
      to ča -- kam vse -- ki den; __ za teb kop -- nej __ săr -- ce -- to mo -- e __  i v~pă -- tja si săm iz
       -- mo -- ren;  __ ti no -- siš mi Ži -- vot bla --
      žen. __  Ži -- vot bla -- žen, Ži -- vot bla -- žen, __ 
      bla -- žen, bla -- žen, Ži -- vot bla -- žen; __ ti
      no -- siš mi Ži -- vot bla -- žen. __ }

        \header {
          title = \titleFunc "Изгрей ти, мое Слънце" "Izgrej ti, moe Slănce"
        }

        \midi{}

      } % score

      \pageBreak

      \markup \fontsize #bgCoupletFontSize {
        \hspace #2
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Огрей небето и Земята,}

          \line {   "   "лазурни поднебесен шир,}

          \line {   "   "развесели ми днес душата}

          \line {   "   "с трептенията си безспир.}

          \line {   "   "О, дай ми тоз Живот и Мир!}
          \line { " " }

          \line { "   " \italic {Припев:} }

          \line {   "   "Живот и Мир, Живот и Мир,}

          \line {   "   "и Мир, и Мир, Живот и Мир,}

          \line {   "   "о, дай ми тоз Живот и Мир!}

          \line { " " }
          \line {   3. Единствено си ти, което}

          \line {   "   "изпълваш всичко със Любов}

          \line {   "   "и подновяваш всичко вехто;}

          \line {   "   "светът чрез теб ще бъде нов;}

          \line {   "   "ти вечно си света, Любов.}


          \line { " " }
          \line { "   " \italic {Припев:} }
          \line {   "   " Света Любов, света Любов,}

          \line {   "   "Любов, Любов, света Любов,}

          \line {   "   "ти вечно си света Любов.}
        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
         \column {
          \line {   2. Ogrej nebeto i Zemjata,}

          \line {   "   "lazurni podnebesen šir,}

          \line {   "   "razveseli mi dnes dušata}

          \line {   "   "s treptenijata si bezspir.}

          \line {   "   "O, daj mi toz Život i Mir!}
          \line { " " }

          \line { "   " \italic {Pripev:} }

          \line {   "   "Život i Mir, Život i Mir,}

          \line {   "   "i Mir, i Mir, Život i Mir,}

          \line {   "   "o, daj mi toz Život i Mir!}

          \line { " " }
          \line {   3. Edinstveno si ti, koeto}

          \line {   "   "izpălvaš vsičko săs Ljubov}

          \line {   "   "i podnovjavaš vsičko vehto;}

          \line {   "   "svetăt črez teb šte băde nov;}

          \line {   "   "ti večno si sveta, Ljubov.}


          \line { " " }
          \line { "   " \italic {Pripev:} }
          \line {   "   " Sveta Ljubov, sveta Ljubov,}

          \line {   "   "Ljubov, Ljubov, sveta Ljubov,}

          \line {   "   "ti večno si sveta Ljubov.}
        } %column
      } % markup

      \markup \empty-two


      % include foreign translation(s) of the song
      \include "../../lyrics/de/030_izgrey_ti_moe_slantse_lyrics_de.ly"

    } % bookpart
