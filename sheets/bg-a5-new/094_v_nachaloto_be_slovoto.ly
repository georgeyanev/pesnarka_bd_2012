\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref094
  \tocItem \markup "В начало бе Словото"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \tempoFunc "Andante" 4 "60"
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines
      \autoBeamOff

      a4 d'4 e' f' a4 a d'2 \bar "!" e'4  g'4 f' e' d'

      a4 a d'2 \bar "!" e'4 g'4 f' e' d' d'2 \bar "!" \break   f'4 e' d' a bes bes  bes2 a \fermata \bar ".|:"

      a'4  gis'8 a' bes'4 a'8. gis'16 a'2 \bar "!" \break g'8 f'

      e'4 g' f' f' e' d'2 \bar "!"  e'4 g'8 f' e'4 d' f'4 e' d'2 \bar ":|.|:" \break

      \cadenzaOff
      \undo \omit Score.TimeSignature

      \time 2/4 d''8. cis''16 d''8 a' bes'4  a' g'8 f' e' f' \break g'4 a'8 a'

      d'8 e' f'4 e'8 d' e' f' d'2 \bar ":|.|:"  \break
      \cadenzaOn
      \undo \omit Score.TimeSignature

      a4 a'2 gis'4 a' bes'2 a'  g'4 ( a' ) f'2 e'4 f'  g'4 ( a' ) e'2. \bar "!" \break

      e'4  f'4 g'   a'   \tempo \markup {
        % make tempo note smaller
        \concat {
          \normal-text { " ossia    "  }
          \fontsize #-4 \general-align #Y #DOWN \note {4} #0.8
          \normal-text { "             "  }

        }
      }
      e' g'2  f'2 e' d'2. \bar ":|."
    }

    \addlyrics {
      "В~на-" -- ча --
      ло бе "Сло-" -- во -- то и "Сло-" -- во -- то бе у
      Бо -- га, и "Сло-" -- во -- то бе Бог. То в~на --
      ча -- ло бе у Бо -- га. Всич -- ко чрез Не --
      го "ста-" -- на и ко -- е -- то е ста -- на --
      ло, ни -- що без Не -- го не ста -- на. В~Не --
      го бе жи -- во -- тът и жи -- во -- тът бе ви
      -- де -- ли -- на на че -- ло -- ве -- ци -- те.
      И ви -- де -- ли -- на -- та све -- ти в~тъм
      -- "-ни" -- на -- та, и тъм -- ни -- на -- та я не
      об -- зе. И зе.

    }

    \header {
      title = \titleFunc #'ref_desc_6 "В начало бе Словото" "V načalo be Slovoto"
    }

    \midi{}

  } % score

} % bookpart
