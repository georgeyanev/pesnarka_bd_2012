\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces054" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -15 )
    \right-brace #44
  }
  \column {
    % repeat numbers
    \translate #'(0 . -15.6 )
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

      \tempoFunc "Tempo di marcia" 4 "112"
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
      "1. С~кри" -- ла -- та на о -- ре -- ла, Си -- о -- не наш лю --
      бим, стре -- ми -- тел -- но към те -- бе ний друж -- но днес ле --
      тим. Смърт -- та ни веч не пла -- ши, в~нас
      Дух жи -- ве -- е свят; ед -- на -- кво нас ни
      рад -- ва и тоз, и он -- зи свят. Смърт -- свят.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Към Сион" "Kăm Sion"
    }

    \midi{}

  } % score


  \markup \abs-fontsize #11 {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Плътта ще победиме}

      \line {   "   "със смелост в подвиг нов,}

      \line {   "   "сърцата ще стопиме}

      \line {   "   "с Христовата Любов.}

      \line { " " }

      \line {   "        "Сияй, свети Сионе,}

      \line {   "        "ний бързо веч летим,}

      \line {   "        "на Бога скоро в тебе,}

      \line {   "        "с дух ще се поклоним. }
    } \"rightBraces054"

  } % markup

  

} % bookpart
