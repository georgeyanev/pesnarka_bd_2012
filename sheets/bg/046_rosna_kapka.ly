\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces046" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.2 )
    \right-brace #32

    \translate #'(0 . -13.6 )
    \right-brace #32
  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.8 )
    2

    \translate #'(0 . -16.8 )
    2
  }
}

\bookpart {
  \label #'ref046
  \tocItem \markup "Росна капка"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Larghetto" 4 "58"
      \partial 4
      \autoBeamOff

      e'8 e' a'4 b' c''8 b' |  a'4 a' b'8 b' | c''4 c'' d''8 c'' \break | % 5

      b'4 a' e''8 e'' | e''4 d'' c''8 d'' | e''2 c''8 c'' | c''4 b' c''8 b' \break |

      a'2 e''8 d'' \repeat volta 2 {
        | c''4 c'' d''8 c'' |  b'4 b' c''8 b' \break |

        a'4 gis' a'8 b' |
      }  \alternative {
        { c''4 b' a'8 b' | c''4 d'' e''8 f'' | e''2 e''8 d''  \break |  }

        { c''4 b' c''8 b'8 | a'4 gis'4 a'8 b'8 | a'2 \bar "|." }
      }
    }

    \addlyrics {
      "1. Рос-" -- на кап -- ко, свят ла -- зу -- рен, чист, кра -- сив и тих, без --
      бу -- рен, мир на рай -- ски -- я Жи -- вот, мир на рай -- ски -- я Жи --
      вот! В~те -- бе, кап -- ко, ви -- кам всич -- ки бра -- тя
      ми -- ли и се -- стрич -- ки, да ти ста -- не -- ме на -- род. "В~те -" -- бе,
      стрич -- ки, да ти ста -- не -- ме на -- род.
    }

    \header {
      title = \titleFunc "Росна капка" "Rosna kapka"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Всяка сутрин във росата }
      \line {   "   " ще си къпеме сърцата, }

      \line {   "   " като слънчеви лъчи; (2)}

      \line {   "   " и ще пеем нови песни}

      \line {   "   " със мелодии чудесни,}

      \line {   "   " сводът красен да ечи.}

      \line{" "}

      \line {   3.  И тъй чисти, в бели дрехи,}

      \line {   "   " и препасани с доспехи}

      \line {   "   " на Великата Любов, (2)}

      \line {   "   " ново царство ще направим,}

      \line {   "   " Бога нашего да славим}

      \line {   "   " всеки ден, во век веков.}
    }  \"rightBraces046"

  } % markup
  

} % bookpart
