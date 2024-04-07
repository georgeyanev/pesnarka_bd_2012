\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref097
  \tocItem \markup "Запали се огънят"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \tempoFunc "Andante" 4 "60"
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \autoBeamOff

      d'4 g'4 a' a'2 bes'8 a' bes'4 c'' bes' a'4 gis' a'2 \bar"!" \break

      a'8 [( bes' )]  c''4 d''2  bes'4 a' g' f'8 [( g' )]  a'2 \bar"!" \break

      d'8 e' f'4 e' d'2 a8 a d'4 a d'2 \bar"!" \break

      a4  f'4 e' d'2 a8 a d'4 a d'4 d'2  \bar"!"

      e'8 f' g' a' bes'4 g' a'2 \bar"!" \break

      a'4 d''4 d''2 bes'8 a' g'4 bes'4 a'2

      \bar ".|:" a'8 bes' c''4 c''2 d''4 a'8 bes' c''4 c''2  \bar "!"\break

      bes'4  bes'8 a' bes'4 d''  c''4 bes' a' e' f'4 d'2 \bar ":|."
    }

    \addlyrics {
      За -- па --
      ли се о -- гъ -- нят на ог -- ни -- ще -- то.
      За -- туп -- ка мо -- е -- то сър -- це. Хля --
      бът е го -- тов, хля -- бът е го -- тов. За --
      па -- ли се но -- ви -- ят све -- тил -- ник.
      "Сло-" -- жи се "тра-" -- пе -- за -- та. Я -- ви се
      мо -- я -- та ми -- съл: "хля-" -- ба слад -- ки
      днес да "въз-" -- лю -- бя и слад -- ки -- те му
      ду -- ми аз да чу -- я.
    }

    \header {
      title = \titleFunc #'ref_desc_9 "Запали се огънят" "Zapali se ogănjat"
    }

    \midi{}

  } % score

} % bookpart
