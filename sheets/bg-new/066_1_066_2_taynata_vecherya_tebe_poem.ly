\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref066_1
  \tocItem \markup "Тайната вечеря"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      a8 ([ e'8 ]) d'8 c'8 | d'4 e'4 | a8 ([ e'8 ])  d'8 c'8 | d'8 e'8 e'8 e'8 \break |
      c'8 g'8 g'8 g'8 | g'8 ([a'8]) g'8 f'8 | e'2 \repeat volta 2 {
        c'8 ([ d'8 ]) e'8 a'8 |\break
        b'4 a'4 | c'8 ([ d'8 ]) e'8 a'8 | a'8 ([ c''8 ]) b'8 g'8 | a'2 |
      } \alternative {
        {
          c'8 ([ d' e' ]) a'  | \break
          b'8 ([ d''8 ]) c''8 b'8 | a'2 |
        } {  c'8 ([ d'8 e'8 ]) a8 | b8 ([ d'8 ]) c'8 b8 | a2 | \bar "|." \break }
      }
    }

    \addlyrics {
      \set stanza = "1. " Зун __ ме -- ри ма -- ну, зун __ ме -- ри -- ма -- нун -- да -- на,
      а -- са -- ви -- та ви -- та нан -- да. Зун __ ме -- ри
      ма -- ну, Зун __ ме -- ри ма -- нун -- да -- на, а -- са --
      ви -- та  нан -- да.  а -- са -- ви -- та  нан -- да.
    }

    \addlyrics {
      \set stanza = "2. " Всич -- ко е свет -- ло, вси -- чко е о -- све -- те -- но
      с~Мой -- та жи -- ва Ви -- де -- ли -- на.
    }

    \header {
      title = \titleFunc #'ref_desc_21 "Тайната вечеря" "Tajnata večerja"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C." "con ripetizione"

  \markup \vspace #1

  \label #'ref066_2
  \tocItem \markup "Тебе поем"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \minor
      \time 5/4
      \tempoFunc "Andante" 4 "80"
      c'4 es'4 d'4 c'2 | \time 7/4 c'4 es'4 d'4 c'4 b4 c'2 |  \break
      \time 6/4 g'4 c''4 bes'4 as'4 g'4 f'4 |  es'2 d'4 c'2 c'8 ( d'8 ) | \break
      \repeat volta 2 {
        es'4 d'4 c'4 c'2 f'8 ( g'8 ) | as'4 g'4 f'4 es'2  g'8 ( c''8 ) | \time 4/4 \break
        c''4 bes'4 as'4 g'4
      } \alternative {
        { \time 6/4 f'4 es'4 d'4 c'2 c'8 ( d'8 ) }
        {
          f'4 \override Staff.BarLine.stencil = ##f es'4 d'4 c'2.
          \revert Staff.BarLine.stencil
          \bar "|."
        }
      }
    }

    \addlyrics {
      Те -- бе по -- ем, Те -- бе бла -- го -- да -- рим.
      Те -- бе бла -- го -- сло -- вим, Бо -- же наш.  И __
      мо -- лим Ти ся, и __  мо -- лим Ти ся,  и __
      мо -- лим Ти ся, o, Бо -- же наш. И __ o, Бо -- же наш.
    }

    \header {
      title = \titleFunc #'ref_desc_21 "Тебе поем" "Tebe poem"
    }

    \midi{}

  } % score


} % bookpart
