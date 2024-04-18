\version "2.24.3"

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
  \label #'ref048
  \tocItem \markup "Напред, чада, напред – Napred, čada, napred"
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
      "1. Нап" -- ред, ча -- да, нап -- ред, но -- се -- те Сло -- во -- то нав --
      ред! Без страх в~жи -- во -- та нов __  но -- се -- те
      прав -- да, мир, лю -- бов. Без бов!
    }

    \addlyrics {
      "1. Nap" -- red, ča -- da, nap -- red, no -- se -- te Slo -- vo -- to nav --
      red! Bez strah v~ži -- vo -- ta nov __  no -- se -- te
      prav -- da, mir, lju -- bov. Bez bov!
    }



    \header {
      title = \titleFunc "Напред, чада, напред " "Napred, čada, napred"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \abs-fontsize #10 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. От новото Небе }

      \line {   "   " Спасителят ни днес зове: }

      \line {   "   " „Я чуйте тоя зов –}

      \line {   "   " носете правда, мир, любов!“.}

      \vspace #0.5

      \line {   3.  Тук долу няма мир,}

      \line {   "   " неправдата е в длъж и шир.}

      \line {   "   " Разсейте бързо днес }

      \line {   "   " за мир и правда блага вест!}

      \vspace #0.5

      \line {   4.  Напред, чада, напред,}

      \line {   "   " носете Словото навред!}

      \line {   "   " Без страх в живота нов,}

      \line {   "   " носете правда, мир, любов!}
    }  \"rightBraces048"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Ot novoto Nebe }

      \line {   "   " Spasiteljat ni dnes zove: }

      \line {   "   " „Ja čujte toja zov –}

      \line {   "   " nosete pravda, mir, ljubov!“.}

       \vspace #0.5

      \line {   3.  Tuk dolu njama mir,}

      \line {   "   " nepravdata e v dlăž i šir.}

      \line {   "   " Razsejte bărzo dnes }

      \line {   "   " za mir i pravda blaga vest!}

       \vspace #0.5

      \line {   4.  Napred, čada, napred,}

      \line {   "   " nosete Slovoto navred!}

      \line {   "   " Bez strah v života nov,}

      \line {   "   " nosete pravda, mir, ljubov!}
    }  %column
    \"rightBraces048"
  } % markup

  \markup \empty-two

  % include foreign translation(s) of the song
  \include "../../lyrics/de/048_napred_chada_napred_lyrics_de.ly"

} % bookpart
