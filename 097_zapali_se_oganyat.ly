\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref097
  \tocItem \markup "Запали се огънят – Zapali se oganyat"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Andante" 4 "60"

      \autoBeamOff
      \partial 4

      d'4 | g'4 a' a'2 | bes'8 a' bes'4 c'' bes' | \time 5/4  a'4 gis' a'2 a'8 [( bes' )] \break |

      \time 3/4  c''4 d''2 | \time 4/4  bes'4 a' g' f'8 [( g' )] | \time 5/4  a'2 d'8 e' f'4 e' \break |

      \autoBeamOff d'2 a8 a d'4 a |  \time 3/4  d'2 a4 |  \time 4/4  f'4 e' d'2 \break |

      \time 3/4  a8 a d'4 a | d'4 d'2 | \time 4/4  e'8 f' g' a' bes'4 g' \break |

      \time 3/4  a'2 a'4 |  \time 5/4  d''4 d''2 bes'8 a' g'4 | \time 4/4  bes'4 a'2 a'8 bes' \break |

      \time 5/4  \repeat volta 2 {
        c''4 c''2 d''4 a'8 bes' | \time 4/4  c''4 c''2 bes'4 | \time 3/4  bes'8 a' bes'4 d'' \break |

        \time 4/4  c''4 bes' a' e'
      } \alternative { { | f'4 d'2 a'8 bes' | } {  f'4 d'2 s4 } } \bar "|."
    }

    \addlyrics {
      За -- па --
      ли се о -- гъ -- нят на ог -- ни -- ще -- то.
      За -- туп -- ка мо -- е -- то сър -- це. Хля --
      "-бът" е го -- тов, хля -- бът е го -- тов. За --
      па -- ли се но -- ви -- ят све -- тил -- ник.
      Сло -- жи се тра -- пе -- за -- та. Я -- ви се
      мо -- я -- та ми -- съл: хля -- ба слад -- ки
      днес да въз -- лю -- бя и слад -- "-ки" -- те му
      ду -- ми аз да чу -- я. Хля -- ба чу -- я.
    }

    \addlyrics {
      Za -- pa --
      li se o -- ga -- "-nyat" na og -- ni -- shte -- to.
      Za -- tup -- ka mo -- e -- to sar -- tse. Hlya --
      "-bat" e go -- tov, hlya -- bat e go -- tov. Za --
      pa -- li se no -- vi -- yat sve -- til -- nik.
      Slo -- zhi se tra -- pe -- za -- ta. Ya -- vi se
      mo -- ya -- ta mi -- sal: hlya -- ba slad -- ki
      dnes da vaz -- lyu -- bya i slad -- ki -- te mu
      du -- mi az da chu -- ya. Hlya -- ba chu -- ya.
    }


    \header {
      title = \titleFunc "Запали се огънят" "Zapali se oganyat"
    }

    \midi{}

  } % score

  %\markup \dc-one "D.C."
  %

  % include foreign translation(s) of the song
  \pageBreak
  \include "lyrics_de/097_zapalise_ogunyat_lyrics_de.ly"

} % bookpart
