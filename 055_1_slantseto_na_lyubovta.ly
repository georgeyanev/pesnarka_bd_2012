\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      a'4 f'8 a' | g'4 e'8 g' | f'2 | bes'4 g'8 bes' | a'4 f'8 a' | g'2 \break |
      c''4 c'' | d''4. c''8 | bes'8 a' g'4 | bes'4 bes' | c''4. bes'8 | a'8 g' f'4 \break |
      c'4 c' | a'4. g'8 | a'8 g' f'4 | d'4 d' | bes'4. a'8 | bes'8 a' g'4 \break |
      c''4 c'' | d''4. c''8 | bes'8 a' g'4 | c'4 c' | a'4. g'8 | a'4 g' | f'2 |\break \bar "|."
    }

    \addlyrics {
      Слън -- це -- то на Лю -- бов -- та из -- гря -- ва веч във све -- та.
      Вре -- дом пра -- ща Свет -- ли -- на и раз -- на -- ся Топ -- ли -- на.
      Ний сме слън -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи -- вот.
      Ний сме слън -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи -- вот.
    }

    \addlyrics {
      Slan -- tse -- to na Lyu -- bov -- ta iz -- grya -- va vech vav sve -- ta.
      Vre -- dom pra -- shta Svet -- li -- na i raz -- na -- sya Top -- li -- na.
      Niy sme slan -- che -- vi la -- chi, no -- sim No -- vi -- ya zhi -- vot.
      Niy sme slan -- che -- vi la -- chi, no -- sim No -- vi -- ya zhi -- vot.
    }
    \header {
      title = \titleFunc "Слънцето на Любовта" "Slantseto na Lyubovta"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

  % include foreign translation(s) of the song
  \include "lyrics_de/055_1_slantseto_na_lyubovta_lyrics_de.ly"

} % bookpart
