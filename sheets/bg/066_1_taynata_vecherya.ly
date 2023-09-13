\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref066_1
  \tocItem \markup "Тайната вечеря – Tajnata večerja"
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
      "1. Зун" __ ме -- ри ма -- ну, зун __ ме -- ри -- ма -- нун -- да -- на,
      а -- са -- ви -- та ви -- та нан -- да. Зун __ ме -- ри
      ма -- ну, Зун __ ме -- ри ма -- нун -- да -- на, а -- са --
      ви -- та  нан -- да.  а -- са -- ви -- та  нан -- да.
    }

    \addlyrics {
      "2. Вси" -- чко е све -- тло, вси -- чко е о -- све -- те -- но
      с~Мой -- та жи -- ва Ви -- де -- ли -- на.
    }

    \header {
      title = \titleFunc "Тайната вечеря" "Tajnata večerja"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C." "con ripetizione"


  % include foreign translation(s) of the song
  

} % bookpart
