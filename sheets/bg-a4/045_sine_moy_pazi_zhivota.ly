\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces045" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -17.9 )
    \right-brace #44


  }
  \column {
    % repeat numbers
    \translate #'(0 . -18.4 )
    2


  }
}

\bookpart {
  \label #'ref045
  \tocItem \markup "Сине мой, пази живота"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 4/4
      \tempoFunc "Andante" 4 "72"
      \autoBeamOff
      \partial 4


      e'8 e'8 | a'4 b' c''4 b' | a'4 gis'2 e'8 e' | e''4 f'' e''4 d'' | \break

      c''2 r4 b'8 a'  |  gis'4 f'  e'4 dis' |  f'4 e'2  b'8 c'' \break |

      d''4 e'' c''4 b' | a'2 r4 g'8 g' \repeat volta 2 {
        |  c''4 g' c''4 d'' | e''4 c''2 e''8 f'' | g''4 f'' e''4 d'' | c''2 r4 e'8 e' | a'4 b'  c''4 d'' \break |

        e''4 b'2 d''8 d'' c''4 b' a'4 gis' |
      } \alternative { { a'2 r4 g'?8 g'  } { a'2. } } \bar "|."
    }

    \addlyrics {
      \set stanza = "1. " Си -- не мой, па -- зи жи -- во -- та, скри -- ти -- я у
      те -- бе жар; той без -- це -- нен е по сми -- съл и ве --
      ли -- ко -- ле -- пен дар. Дух без -- смър -- тен, Дух не -- тле -- нен,
      туй, ко -- е -- то веч -- но бди и ра -- бо -- ти без у --
      мо -- ра, не -- пре -- стан -- но в~теб гра -- ди! Дух без -- ди.
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Сине мой, пази живота" "Sine moj, pazi života"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #12 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "Ти си тоз живот реален,"
            "синко, себе си познай!"
            "Твойта сила е голяма,"
            "дните твои нямат край."
            "Ти създаваш всеки подтик,"
            "благородния стремеж,"
            "идеалите високи"
            "и красивия копнеж."
          }\"rightBraces045"
        }
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "3."
          \column {
            "Тази плът ти е одежда,"
            "а земята – школен чин;"
            "ти живееш и се учиш,"
            "като малък Божи Син."
            "Дързост, мили мой животе,"
            "с теб е Божата Любов!"
            "Тя зове те все нагоре –"
            "в съвършенство и свят нов."
          } \"rightBraces045"
        }

        % adds vertical spacing between verses
      }\hspace #0.1
    }
  }

} % bookpart
