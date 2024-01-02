\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref214
  \tocItem \markup "Ти ще сполучиш в живота"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"
    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 3/4
      \tempoFunc "Andante" 4 "72"
      \autoBeamOff
      \partial 4

      a4^\mp^\< | d'2 e'8. \! e'16 | f'4^\> ( d'4 cis'8[d'8] |  e'4 ) a4 \! r4 | \break

      \time 4/4  a'2^ \p c''4 bes'4 | a'4 ( g'4 ) a'2 ( | a'4 ) r4 r4 a4^\mf ^\< | f'2 e'4 \! d'8 ^\markup { \huge \italic "   sosten."} [( e'32 d'32 cis'32 d'32 )] | \break

      \once \override Hairpin.shorten-pair = #'(0 . -3) bes'2^\> ^\markup { \huge \bold "a tempo" } a'2 ( | a'4 ) \! r4 r4 \override TupletNumber.text = \markup { \bold "3"} \times 2/3  { e'8^\< [( f'8 g'8 )] } | a'4 \! \fermata
      \once \override Hairpin.to-barline = ##f
      g'4^\> f'4 e'4 |   d'2 \! r2 | \break

      a4^\mf d'8 e'8 f'8 [( d'8 )]  cis'8 [( d'8 )] | e'8 a8 bes4 ( a8 [g8] ) a4 ( | a4 ) r4 r2 | \break

      a'4^\mf g'8 f'8 e'8 d'8 d'8 cis'8 | d'4 ( e'4 ) d'2 | \time 3/4  | c''4^\mp bes'4 a'4 | \break

      a'2 a'4 | \time 4/4  d''4 c''4 bes'4 ( g'4 ) | a'2. r4 | \time 3/4 | a'2^\mf f'8 d'8 |\break

      bes'2 a'4 ( | a'4 ) a4 a4 |   e'2 d'4 ( | d'4 ) r4 a4 |

      d'2^\p^\< e'8. e'16 \! | \break


      f'4^\> ( d'4 cis'8 [d'8] | \time 4/4  e'4 ) a4 \! \breathe

      a'2  ^\> | \tempo"rall." c''4 bes'4 a'4^\markup { \dynamic "ppp"} ( g'4 ) | a'2. \! \bar "|."

    }
    \addlyrics {

      Кра -- сив е Жи -- во -- тът на Ан -- ге -- ли -- те. __
      Кра -- сив е Жи -- во -- тът __ на __ на -- ша -- та ду -- ша.
      Ти ще спо -- лу -- чиш във Жи -- во -- та, __
      ти ще спо -- лу -- чиш във Жи -- во -- та
      Слу -- шай гла -- са на Ан -- ге -- ли -- те
      и ще спо -- лу -- чиш във Жи -- во -- та. __
      Кра -- сив е Жи -- во -- тът на Ан -- ге -- ли -- те.

    }

    \header {
      title = \titleFunc "Ти ще сполучиш в живота" "Ti šte spolučiš v Života"
    }

    \midi{}

  } % score



} % bookpart

% Più mosso
%
