\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref055_1
  \tocItem \markup "Слънцето на Любовта – Slănceto na Ljubovta"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      a'4 f'8 a' | g'4 e'8 g' | f'2 | bes'4 g'8 bes' \break | a'4 f'8 a' | g'2  |
      c''4 c'' | d''4. c''8 | bes'8 a' g'4 \break | bes'4 bes'  | c''4. bes'8 | a'8 g' f'4  |
      c'4 c' | a'4. g'8 | \break a'8 g' f'4 |   d'4 d' | bes'4. a'8 | bes'8 a' g'4 | \break
      c''4 c'' | d''4. c''8 |  bes'8 a' g'4 | \break c'4 c' | a'4. g'8 | a'4 g' | f'2 |\break \bar "|."
    }

    \addlyrics {
      Слън -- це -- то на Лю -- бов -- та из -- гря -- ва веч във све -- та.
      Вре -- дом пра -- ща свет -- ли -- на и раз -- на -- ся топ -- ли -- на.
      Ний сме слън -- че -- ви лъ -- чи, но -- сим но -- ви -- я жи -- вот.
      Ний сме слън -- че -- ви лъ -- чи, но -- сим но -- ви -- я жи -- вот.
    }

    \addlyrics {
      Slăn -- ce -- to na Lju -- bov -- ta iz -- grja -- va več văv sve -- ta.
      Vre -- dom pra -- šta svet -- li -- na i raz -- na -- sja top -- li -- na.
      Nij sme slăn -- če -- vi lă -- či, no -- sim no -- vi -- ja ži -- vot.
      Nij sme slăn -- če -- vi lă -- či, no -- sim no -- vi -- ja ži -- vot.
    }
    \header {
      title = \titleFunc "Слънцето на Любовта "" Slănceto na Ljubovta"
    }

    \midi{}

  } % score
  \markup \empty-one
  \markup \dc-one "D.C."
  \markup \vspace #1
  % include foreign translation(s) of the song
  \include "../../lyrics/de/055_1_slantseto_na_lyubovta_lyrics_de.ly"

} % bookpart
