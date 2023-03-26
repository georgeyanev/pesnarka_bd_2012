\version "2.24.0"

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
  \label #'ref053
  \tocItem \markup "Слава Божия – Slava Bozhia"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 4/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff

      d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \tupletUp \tuplet 3/2 {  d''8 cis'' b'8 } ais'2 | \break
      \times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 [( d'' e'' d'' cis'' b' )] ais'4 | b'8 [( cis'' )] b'2. \bar "|."
    }

    \addlyrics {
      Не на ме -- не, не на ме -- не, но на И -- ме -- то Си
      дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!
    }

    \addlyrics {
      Ne na me -- ne, ne na me -- ne, no na I -- me -- to Si
      day, Bo -- zhe, sla -- va, sla -- va, sla -- va!
    }
    \header {
      title = \titleFunc "Слава Божия" "Slava Bozhia"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \include "lyrics_de/053_slava_Bozhiya_lyrics_de.ly"

  \markup \empty-three

   \label #'ref054
  \tocItem \markup "Към Сион – Kam Sion"

  \include "include/bookpart-paper.ily"


  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \minor
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

    \addlyrics {
      "1. S~kri" -- la -- ta na o -- re -- la, Si -- o -- ne nash lyu --
      bim, stre -- mi -- tel -- no kam te -- be niy druzh -- no dnes le --
      tim. Smart -- ta ni vech ne pla -- shi, v~nas
      Duh zhi -- ve -- e svyat; ed -- na -- kvo nas ni
      rad -- va i toz, i on -- zi svyat. Smart -- svyat.
    }


    \header {
      title = \titleFunc "Към Сион" "Kam Sion"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Плътта ще победиме}

      \line {   "   "със смелост в подвиг нов;}

      \line {   "   "сърцата ще стопиме}

      \line {   "   "с Христовата Любов.}

      \line { " " }

      \line {   "        "Сияй, свети Сионе,}

      \line {   "        "ний бързо веч летим,}

      \line {   "        "на Бога скоро в тебе,}

      \line {   "        "с дух ще се поклоним. }
    } \"rightBraces054"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2. Platta shte pobedime}

      \line {   "   "sas smelost v podvig nov;}

      \line {   "   "sartsata shte stopime}

      \line {   "   "s Hristovata Lyubov.}

      \line { " " }

      \line {   "        "Siyay, sveti Sione,}

      \line {   "        "niy barzo vech letim,}

      \line {   "        "na Boga skoro v tebe,}

      \line {   "        "s duh shte se poklonim. }
    } \"rightBraces054"
  } % markup
  \markup \empty-three

  \include "lyrics_de/054_kam_sion_lyrics_de.ly"

} % bookpart
