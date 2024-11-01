\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces047" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -4.3 )
    \right-brace #45

    \translate #'(0 . -7.7 )
    \right-brace #45

  }
  \column {
    % repeat numbers
    \translate #'(0 . -5 )
    2

    \translate #'(0 . -13.7 )
    2
  }
}

\bookpart {
  \label #'ref047
  \tocItem \markup "Аз съм бялото кокиче"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/8
      \tempoFunc "Allegretto" 8 "112"
      \autoBeamOff

      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
      f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break

      \bar ":|.|:"
      a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
      a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4.
      \bar ":|." \break |
    }

    \addlyrics {
      \set stanza = "1. " Аз съм бя -- ло -- то ко -- ки -- че
      всред тре -- ви -- те гор -- ски,
      сра -- меж -- ли -- во кат мо -- ми -- че
      от пог -- ле -- ди хор -- ски. Зла ме ма -- ще -- ха съ -- бу -- ди
      с~сне -- га, вет -- ро -- ве -- те.
      Всич -- ко жи -- во да се чу -- ди,
      че съм ран -- но цве -- те.}
      \header {
        title = \titleFunc #'ref_desc_1 "Аз съм бялото кокиче" "Az săm bjaloto kokiče"
      }

      \midi{}

    } % score


    \markup \abs-fontsize #12 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {

      \fill-line {
        \column {
          \line {
            \bold "2."
            \column {
              "Радост нова ви показвам"
              "с чашка ранобудна"
              "и за пролетта разказвам"
              "приказчица чудна."
              "   Че след мене теменужка"
              "   у вас ще гостува,"
              "   че със тая мила дружка"
              "   славей ще се чува."
            }\"rightBraces047"
          }
          \vspace #1
          \line {
            \bold "3."
            \column {
              "Че агънца ще заблеят"
              "в ливади зелени,"
              "че орачи ще засеят"
              "ниви наторени."
              "   Златни класове ще зреят"
              "   в тези чудни ниви,"
              "   ангели ще славят Бога"
              "   с песни най-красиви."
            }\"rightBraces047"
          }
        }
      }
    }




  } % bookpart
