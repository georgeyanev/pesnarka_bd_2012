\version "2.24.4"

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
      \set stanza = "1." Из -- грей,
      из -- грей ти, мо -- е Слън -- це, __  за -- що --
      то ча -- кам все -- ки ден; __ за теб коп -- ней __ сър -- це -- то мо -- е __ и в~пъ -- тя си съм из
      -- мо -- рен; __  ти но -- сиш ми жи -- вот бла --
      жен.  __ жи -- вот бла -- жен, жи -- вот бла -- жен, __
      бла -- жен, бла -- жен, жи -- вот бла -- жен; __ ти
      но -- сиш ми жи -- вот бла -- жен. __
    }
    \addlyrics {
      \set stanza = "1." Iz -- grej,
      iz -- grej ti, mo -- e Slăn -- ce, __  za -- što --
      to ča -- kam vse -- ki den; __ za teb kop -- nej __ săr -- ce -- to mo -- e __ i v~pă -- tja si săm iz
      -- mo -- ren; __  ti no -- siš mi ži -- vot bla --
      žen.  __ ži -- vot bla -- žen, ži -- vot bla -- žen, __
      bla -- žen, bla -- žen, ži -- vot bla -- žen; __ ti
      no -- siš mi ži -- vot bla -- žen. __
    }

    \header {
      title = \titleFunc "Изгрей ти, мое Слънце" "Izgrej ti, moe Slănce"
    }

    \midi{}

  } % score
  \markup \vspace #1
  \markup \abs-fontsize #11 {
    \hspace #10
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Огрей небето и Земята,}

      \line {   "   "лазурни поднебесен шир,}

      \line {   "   "развесели ми днес душата}

      \line {   "   "с трептенията си безспир.}

      \line {   "   "О, дай ми тоз живот и мир!}

    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line {   2. Ogrej nebeto i Zemjata,}

      \line {   "   "lazurni podnebesen šir,}

      \line {   "   "razveseli mi dnes dušata}

      \line {   "   "s treptenijata si bezspir.}

      \line {   "   "O, daj mi toz život i mir!}

    } %column
  } % markup

  \pageBreak

  \markup \abs-fontsize #11 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line { "   " \italic {Припев:} }

      \line {   "   "Живот и мир, живот и мир,}

      \line {   "   "и мир, и мир, живот и мир,}

      \line {   "   "о, дай ми тоз живот и мир!}

      \vspace #0.5
      \line {   3. Единствено си ти, което}

      \line {   "   "изпълваш всичко със Любов}

      \line {   "   "и подновяваш всичко вехто;}

      \line {   "   "светът чрез теб ще бъде нов;}

      \line {   "   "ти вечно си свята Любов.}


      \vspace #0.5
      \line { "   " \italic {Припев:} }
      \line {   "   " Света Любов, света Любов,}

      \line {   "   "Любов, Любов, света Любов,}

      \line {   "   "ти вечно си света Любов.}
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { "   " \italic {Refrain:} }

      \line {   "   "Život i mir, život i mir,}

      \line {   "   "i mir, i mir, život i mir,}

      \line {   "   "o, daj mi toz život i mir!}

      \vspace #0.5
      \line {   3. Edinstveno si ti, koeto}

      \line {   "   "izpălvaš vsičko săs Ljubov}

      \line {   "   "i podnovjavaš vsičko vehto;}

      \line {   "   "svetăt črez teb šte băde nov;}

      \line {   "   "ti večno si svjata Ljubov.}


      \vspace #0.5
      \line { "   " \italic {Refrain:} }
      \line {   "   " Sveta Ljubov, sveta Ljubov,}

      \line {   "   "Ljubov, Ljubov, sveta Ljubov,}

      \line {   "   "ti večno si sveta Ljubov.}
    } %column
  } % markup

  \markup \vspace #2


  % include foreign translation(s) of the song
  \include "../../lyrics/de/030_izgrey_ti_moe_slantse_lyrics_de.ly"

} % bookpart
