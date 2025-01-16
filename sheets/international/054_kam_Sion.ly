\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"
"rightBraces054" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -18.7 )
    \right-brace #40
  }
  \column {
    % repeat numbers
    \translate #'(0 . -19.3 )
    2
  }
}


\bookpart {


  \label #'ref054
  \tocItem \markup "Към Сион – Kăm Sion"

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
      f'8 |  bes'4 f'8 bes'16 c'' | d''4 bes'8 d'' | f''8 es'' d'' es''  |

      c''4. f'8 |\break c''4 f'8 c''16 d'' | es''4 c''8 d'' | f''8 es'' c'' d''  |

      bes'4. bes'8 \repeat volta 2 {
        | \break g''4 f''8 bes'16 c'' d''4 d''8 d'' |

        es''8. d''16 c''8 bes' | a'4. g'8 | \break g''4 f''8 bes'16 c''  |

        d''4 d''8 d'' | f''8 es'' c'' d'' |
      } \alternative {
        { bes'4. bes'8 | }
        {bes'4.   \break }
      } \bar "|."
    }

    \addlyrics {
      \set stanza = "1." С~кри -- ла -- та на о -- ре -- ла, Си -- о -- не наш лю --
      бим, стре -- ми -- тел -- но към те -- бе ний друж -- но днес ле --
      тим. Смърт -- та ни веч не пла -- ши, в~нас
      Дух жи -- ве -- е свят; ед -- на -- кво нас ни
      рад -- ва и тоз, и он -- зи свят. Смърт -- свят.
    }

    \addlyrics {
      \set stanza = "1." S~kri -- la -- ta na o -- re -- la, Si -- o -- ne naš lju --
      bim, stre -- mi -- tel -- no kăm te -- be nij druž -- no dnes le --
      tim. Smărt -- ta ni več ne pla -- ši, v~nas
      Duh ži -- ve -- e svjat; ed -- na -- kvo nas ni
      rad -- va i toz, i on -- zi svjat. Smărt -- svjat.
    }

    \header {
      title = \titleFunc "Към Сион" "Kăm Sion"
    }

    \midi{}

  } % score

  \markup \vspace #1
  \markup \abs-fontsize #11 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Плътта ще победиме}

      \line {   "   "със смелост в подвиг нов,}

      \line {   "   "сърцата ще стопиме}

      \line {   "   "с Христовата Любов.}

      \vspace #0.5

      \line {   "        "Сияй, свети Сионе,}

      \line {   "        "ний бързо веч летим,}

      \line {   "        "на Бога скоро в тебе,}

      \line {   "        "с дух ще се поклоним. }
    } \"rightBraces054"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Plătta šte pobedime}

      \line {   "   "săs smelost v podvig nov,}

      \line {   "   "sărcata šte stopime}

      \line {   "   "s Hristovata Ljubov.}

      \vspace #0.5

      \line {   "        "Sijaj, sveti Sione,}

      \line {   "        "nij bărzo več letim,}

      \line {   "        "na Boga skoro v tebe,}

      \line {   "        "s duh šte se poklonim. }
    } \"rightBraces054"
  } % markup

    \markup \vspace #2
  \include "../../lyrics/de/054_kam_sion_lyrics_de.ly"

} % bookpart
