\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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

      d'4 |  g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. | d'2. ~ | d'4 r d'' \break
      d''2 es''4 | d''2 cis''4 | d''2 es''4 | d''2. ~ | d''4 r c'' | bes'2 bes'4 \break |
      bes'4 ( a' ) bes' | c''2 bes'4 | a'2. | a'2. ~ | a'4 r a' |  bes'2 bes'4 \break |
      c''2 c''4 | d''2 a'4 |  bes'2. ~ |  bes'4 r a' |  bes'2 a'4 |  bes'2 a'4 \break |
      g'2 fis'4 | g'2. ~ | g'4 r d'' | d''2 es''4 | d''2 cis''4 \break |
      d''2 es''4 | d''2. ~ | d''4 r g'' | f''2 es''4 | d''2 d''4 | c''2 bes'4 \break |
      d''2.~ | d''4 r c'' | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | g'2.~ | g'4 r2 | \bar "|."\break
    }

    \addlyrics {
      Из -- грей,
      из -- грей ти, мо -- е Слън -- це, за -- що --
      то ча -- кам все -- ки ден; за теб коп -- не --
      е мой -- то сър -- це и в~пъ -- тя си съм из
      -- мо -- рен; ти но -- сиш ми Жи -- вот бла --
      жен. Жи -- вот бла -- жен, Жи -- вот бла -- жен,
      бла -- жен, бла -- жен, Жи -- вот бла -- жен; ти
      но -- сиш ми Жи -- вот бла -- жен.}
      \addlyrics {
        Iz -- grey,
        iz -- grey ti, mo -- e Slan -- tse, za -- shto --
        to cha -- kam vse -- ki den; za teb kop -- ne --
        e moy -- to sar -- tse i v~pa -- tya si sam iz
        -- mo -- ren; ti no -- sish mi Zhi -- vot bla --
        zhen. Zhi -- vot bla -- zhen, Zhi -- vot bla -- zhen,
        bla -- zhen, bla -- zhen, Zhi -- vot bla -- zhen; ti
        no -- sish mi ZHi -- vot bla -- zhen.}

        \header {
          title = \titleFunc "Изгрей ти, мое Слънце" "Izgrey ti, moe Slantse"
        }

        \midi{}

      } % score
      
      \pageBreak

      \markup \fontsize #bgCoupletFontSize {
        \hspace #1
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

          \line {   "   "ти вечно си света, Любов.}
        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Ogrey nebeto i Zemyata,}

          \line {   "   "lazurni podnebesen shir,}

          \line {   "   "razveseli mi dnes dushata}

          \line {   "   "s trepteniyata si bezspir.}

          \line {   "   "O, day mi toz Zhivot i Mir!}
          \line { " " }
          \line { "   " \italic {Refrain:} }


          \line {   "   "Zhivot i Mir, Zhivot i Mir,}

          \line {   "   "i Mir, i Mir, Zhivot i Mir,}

          \line {   "   "o, day mi toz Zhivot i Mir!}

          \line { " " }
          \line {   3. Edinstveno si ti, koeto}

          \line {   "   "izpalvash vsichko sas Lyubov}

          \line {   "   "i podnovyavash vsichko vehto;}

          \line {   "   "svetat chrez teb shte bade nov;}

          \line {   "   "ti vechno si sveta, Lyubov.}


          \line { " " }
          \line { "   " \italic {Refrain:} }
          \line {   "   " Sveta Lyubov, sveta Lyubov,}

          \line {   "   "Lyubov, Lyubov, sveta Lyubov,}

          \line {   "   "ti vechno si sveta, Lyubov.}
        } %column
      } % markup
      
      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/030_izgrey_ti_moe_slantse_lyrics_de.ly"

    } % bookpart
