\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces037" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8 )
    \right-brace #22
  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.5 )
    2
  }
}



\bookpart {
  \label #'ref037
  \tocItem \markup "На Учителя"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
      \partial 4
      \autoBeamOff
      e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
      d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
      | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
    }

    \addlyrics {
      \set stanza = "1. " На У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
      до кон -- ца. Той за мен е път от -- во --
      рен, що ме во -- ди към От -- ца. Той за мен
      е път от -- во -- рен, що ме во -- ди към От -- ца.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "На Учителя" "Na Učitelja"
    }

    \midi{}

  } % score


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Господи, Ти мой Учител,"
            "в стъпките Си ме води"
            "и кат мощен покровител"
            "всякога към мен бъди. "
          }\"rightBraces037"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Дай ми Твойта Мъдрост свята"
            "и Божествена Любов;"
            "за любов към всички братя"
            "винаги да съм готов."
          }\"rightBraces037"
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "И във дни на изпитание"
            "Ти бъди ми канара,"
            "тъй за Тебе ще живея "
            "и за Тебе ще умра."
          }\"rightBraces037"
        }
        \vspace #1

        \line {
          \bold "5."
          \column {
            "И когато стана жител "
            "на Невидимия свят, "
            "о, любезни мой Учител,"
            "дай ми Твойта благодат! "
          }\"rightBraces037"
        }
      }
    }
  }

} % bookpart
