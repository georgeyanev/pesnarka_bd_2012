\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref161
  \tocItem \markup "Духай ветре II"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      fis''8 -.  d''8 -.  e''8 -.
      c''8 -. | % 2
      d''8 -.  b'8 -.  c''8 -.
      a'8 -.  | % 3
      b'2 \repeat volta 2 {
        | % 4
        b'8 -. c''8 -.  d''8 -.
        b'8 -.  | % 5
        c''8 -. a'8 -.  b'8 -.
        b'8 -.  \break | % 6
        b'2
        | % 7
      }
      \key g \minor \time 5/4  % 7
      d''4 c''4  bes'8 ( [  a'8 ) ]
      g'2 | % 8
      a'4  g'4  fis'8 ( [  es'8 ) ]
      d'2 | % 9
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      \break |
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 | % 11
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      | % 12
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 \break | % 13
      d''4 c''4  bes'8 ( [  a'8 ) ]
      g'2 | % 14
      a'4  g'4  fis'8 ( [  es'8 ) ]
      d'2 | % 15
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      \break | % 16
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 | % 17
      c'4  c'4  d'8 ( [  es'8 ) ]  g'2
      | % 18
      fis'4  es'4  fis'8 ( [  es'8 ) ]
      d'2 \bar "||"
      \break | % 19
      \time 9/8  | % 19
      | % 19
      \tempoFunc "Allegretto" 4 "160"
      bes'4 bes'8 bes'8  a'4
      bes'4. |
      a'4  g'4  a'4  g'4. | % 21
      fis'4  es'8  es'8  fis'4  es'4.
      \break | % 22
      c'4  d'4  d'4  d'4. | % 23
      c'4  c'4  d'4  es'4. | % 24
      d'4  c'4  d'4  d'4. | % 25
      c'4  c'4  d'4  es'4. | \break % 26
      d'4  c'4  d'4  d'4. | % 27
      \tempoFunc "Meno mosso" 4 "144"
      \bar "||" bes'4 bes'8 bes'8  a'4
      bes'4. | % 28
      a'4  g'4  a'4  g'4. \break | % 29
      fis'4  es'4  fis'4  es'4. |
      c'4  d'4  c'4  d'4. | % 31
      d'2. ~  d'4. \bar "|."
    }

    \addlyrics {
      Бо -- жи -- е -- то "Слън-" -- це гре --
      е днес, Бо -- жи -- е -- то "Слън-" --
      це гре -- е днес. Ду -- хай, вет
      -- ре, ти -- хо ду  -- хай, ти
      -- хо ду  -- хай, ми -- ло гле
      -- дай, ти -- хо ду  -- хай,
      лис -- ти раз  -- вий. Лист раз
      -- вя  -- вай, цвят раз -- тва
      -- ряй, цвят раз -- тва  --
      ряй, плод раз -- да  -- вай,
      цвят раз -- тва  -- ряй, плод
      раз -- да  -- вай. Хай ди ди ди
      ди, да си и -- ди. Хай ди ди ди
      ди, да се у -- чи, да се у -- чи,
      да по -- лу -- чи, да по -- лу --
      чи, да се у -- чи. Хай ди ди ди
      ди, да си и -- ди, да си и -- ди,
      До -- бро да ви -- ди. __
    }

    \header {
      title = \titleFunc "Духай ветре II" "Duhaj vetre II"
    }

    \midi{}

  } % score


} % bookpart

% Più mosso
%
