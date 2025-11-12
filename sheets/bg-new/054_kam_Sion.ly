\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces054" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -4.6)
    \right-brace #46
  }
  \column {
    % repeat numbers
    \translate #'(0 . -5.6 )
    2
  }
}


\bookpart {


  \label #'ref054
  \tocItem \markup "Към Сион"

  \include "include/bookpart-paper.ily"


  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key bes \major
      \time 2/4

      \tempoFunc "Tempo di marcia" 8 "112"
      \autoBeamOff

      \partial 8
      f'8 |  bes'4 f'8 bes'16 c'' | d''4 bes'8 d'' | f''8 es'' d'' es'' \break |

      c''4. f'8 | c''4 f'8 c''16 d'' | es''4 c''8 d'' | f''8 es'' c'' d'' \break |

      bes'4. bes'8 \repeat volta 2 {
        | g''4 f''8 bes'16 c'' d''4 d''8 d'' \break |

        es''8. d''16 c''8 bes' | a'4. g'8 | g''4 f''8 bes'16 c'' \break |

        d''4 d''8 d'' | f''8 es'' c'' d'' |
      } \alternative {
        { bes'4. bes'8 | }
        {bes'4.   \break }
      } \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " С~кри -- ла -- та на о -- ре -- ла, Си -- о -- не наш лю --
      бим, стре -- ми -- тел -- но към те -- бе ний друж -- но днес ле --
      тим. Смърт -- та ни веч не пла -- ши, в~нас
      Дух жи -- ве -- е свят; ед -- на -- кво нас ни
      рад -- ва и тоз, и он -- зи свят. Смърт -- свят.
    }

    \header {
      title = \titleFunc #'ref_desc_11 "Към Сион" "Kăm Sion"
    }

    \midi{}

  } % score


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Плътта ще победиме"
            "със смелост в подвиг нов,"
            "сърцата ще стопиме"
            "с Христовата Любов."
          }
        }
        \vspace #1
        \line {
          \bold "  "
          \column {
            "     Сияй, свети Сионе,"
            "     ний бързо веч летим,"
            "     на Бога скоро в тебе"
            "     с дух ще се поклоним."
          }\"rightBraces054"
        }
      }
    }
  }

} % bookpart
