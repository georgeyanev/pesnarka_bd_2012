\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces048" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.5 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20

    \translate #'(0 . -10.0 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.1 )
    2

    \translate #'(0 . -12.0 )
    2

    \translate #'(0 . -12.0 )
    2
  }
}

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      d'4 | g'4. a'8 bes'4. a'8 | g'2. d'4 | g'4. a'8 bes'8 bes'8 a'8. a'16| \break
      g'2. d''4 | \repeat volta 2 {
        g''4. es''8 d''4. cis''8 | d''2 ( d''8 ) d'8 es'8 d'8 | \break
        bes'4. bes'8 a'4. a'8 |
      } \alternative  { { g'2. d''4 | }  { g'2. } } \bar "|."
    }

    \addlyrics {
      "1. На" -- пред, ча -- да, на -- пред, но -- се -- те Сло -- во -- то на --
      вред! Без страх в~Жи -- во -- та нов но -- се -- те
      Прав -- да, Мир, Лю -- бов. Без бов!
    }

    \addlyrics {
      "1. Na" -- pred, cha -- da, na -- pred, no -- se -- te Slo -- vo -- to na --
      vred! Bez strah v~Zhi -- vo -- ta nov no -- se -- te
      Prav -- da, Mir, Lyu -- bov. Bez bov!
    }


    \header {
      title = \titleFunc "Напред, чада, напред " "Napred, chada, napred"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. От новото Небе }

      \line {   "   " Спасителят ни днес зове: }

      \line {   "   " Я чуйте тоя зов –}

      \line {   "   " носете Правда, Мир, Любов!}

      \line {   "   "}

      \line {   3.  Тук долу няма Mир,}

      \line {   "   " неправдата е в длъж и шир;}

      \line {   "   " разсейте бързо днес }

      \line {   "   " за Мир и Правда блага вест!}

      \line {   "   "}

      \line {   4.  Напред, чада, напред,}

      \line {   "   " носете Словото навред!}

      \line {   "   " Без страх в Живота нов,}

      \line {   "   " носете Правда, Мир, Любов!}
    }  \"rightBraces048"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Ot novoto Nebe }

      \line {   "   " Spasitelyat ni dnes zove: }

      \line {   "   " Ya chuyte toya zov –}

      \line {   "   " nosete Pravda, Mir, Lyubov!}

      \line {   "   "}

      \line {   3.  Tuk dolu nyama Mir,}

      \line {   "   " nepravdata e v dlazh i shir;}

      \line {   "   " razseyte barzo dnes }

      \line {   "   " za Mir i Pravda blaga vest!}

      \line {   "   "}

      \line {   4.  Napred, chada, napred,}

      \line {   "   " nosete Slovoto navred!}

      \line {   "   " Bez strah v Zhivota nov,}

      \line {   "   " nosete Pravda, Mir, Lyubov!}
    } %column
     \"rightBraces048"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/048_napred_chada_napred_lyrics_de.ly"

} % bookpart
