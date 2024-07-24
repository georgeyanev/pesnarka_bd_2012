\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref170_1
  \tocItem \markup "Вяра светла I "

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72"
      \override Staff.BarLine.gap = 0.5
      \autoBeamOff
      \partial 4
      d'8  fis'8 | \repeat volta 2 {
        a'4  % 2
        a'2 | % 3
        \time 2/4 b'4.  a'8 | \time 3/4 g'8 ( [  a'8 ])  % 4
        fis'2 | % 5
        \time 2/4 a'4 b'4  | % 6
        a'4  g'4 \break | % 7
        a'2 | % 8
        fis'4  e'4 | % 9
        a'4  g'4 |
        g'4 (  a'4 ) |
      }  % 11

      \alternative {
        {\time 3/4 fis'2 d'8 fis'8}
        { fis'2}
      }
      \bar "|."
    }

    \addlyrics {
      Вя -- ра свет --   ла,
      вя -- ра сил --   на! Тя кре -- пи ду -- ха, що жи -- во -- та раж -- да. Вя -- ра да.}
      \header {
        title = \titleFunc #'ref_desc_15 "Вяра светла I" "Vjara svetla I"
      }

      \midi{}

    } % score

    \markup \vspace #3

    \label #'ref170_2
    \tocItem \markup "Вяра светла II "

    \include "include/bookpart-paper.ily"
    \score {
      \include "include/score-layout.ily"

      \new Voice \absolute {
        \clef treble
        \key bes \major
        \time 2/4
        \tempoFunc "Moderato" 4 "72"
        \autoBeamOff
        bes4 (  d'4 )  f'2 | % 2
        g'8 ( [  a'8  bes'8  g'8 ) ]  f'2
        | % 3
        g'4. (  a'8 )  bes'2 | % 4
        d''8 ( [  c''8  bes'8  c''8 ) ]
        c''2 \break | % 5
        es''2  d''4  c''4 | % 6
        \time 6/4  | % 6
        bes'4  d''4  c''16 ( [  d''16 ]
        c''4. )  bes'2 | % 7
        \time 4/4  | % 7
        g'4.  a'8  bes'4  c''8.
        bes'16  | % 8
        \time 3/4  | % 8
        a'8 ( [  bes'8 ) ]  g'2 | \break % 9
        \time 4/4  | % 9
        bes'4  a'4  g'4  f'4 |
        c''4 (  bes'8 [  a'8 ) ]  bes'2 | % 11
        \time 3/4  | % 11
        bes'8 ( [  c''8 ])   d''4  es''4
        | % 12
        \times 2/3  {
          d''8 ( [  es''8  d''8 ) ]
        }
        c''4.  g'8 | \break % 13
        \time 4/4  | % 13
        c''4.  bes'8  a'4  g'4 | % 14
        f'4 (  d''2 )  c''4 | % 15
        bes'2. r4
        \bar ".|:-||"

        | % 16
        \tempoFunc "Poco più mosso" 4 "92"

        f''4.  d''8  es''4  c''4 | % 17
        d''4.  bes'8  c''4  a'4 \break | % 18
        bes'8  bes'8  c''8  c''8
        d''2 | % 19
        f''4.  es''8  d''2 |
        c''2  bes'2
        \bar ":|."
      }

      \addlyrics {
        Вя -- ра свет --   ла,
        вя -- ра сил --   на!
        Тя во -- ди нас към Бо --
        га, бла -- "го-" -- то на жи -- во
        -- та, Лю -- бов -- та на Бо --
        га, где  мир вла -- де --
        е и Ис -- ти -- на -- та веч
        -- но грей. Вя -- ра "свет-" -- ла,
        вя -- ра сил -- на! Тя кре -- пи
        ду -- ха, що жи -- вот но -- си.}

        \header {
          title = \titleFunc #'ref_desc_15 "Вяра светла II " "Vjara svetla II "
        }

        \midi{}

      } % score




    } % bookpart

    % Più mosso
    %
