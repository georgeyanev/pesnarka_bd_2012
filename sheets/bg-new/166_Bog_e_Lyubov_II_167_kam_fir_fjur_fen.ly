\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref166
  \tocItem \markup "Бог е Любов II"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      c'4 (  d'16 [  c'16  b16  c'16 ]
      | % 2
      e'4 )  d'8.  e'16 | % 3
      c'2 | % 4
      e'4  g'8.  g'16 | % 5
      g'2 \break | % 6
      \time 3/4 g'8 ( [  a'8 ]  b'8 [  c''8 ) ]  % 7
      g'8.   a'16 |  g'2 % 8
      g'8 ( [  b'8 ] | % 9
      \time 2/4 c''4  d''16 [  c''16  b'16
      c''16 ] |
      e''4 )  d''8.  e''16 | % 11
      c''2 \break | % 12
      c''4 (  d''16 [  c''16  b'16
      c''16 ] | % 13
      a'4 )  g'4 | % 14
      a'8  g'8  f'8 ( [  e'8 ) ] | % 15
      f'2 | % 16
      \time 4/4  | % 16
      d'8 ( [  e'8  ]  g'2 ) e'4 | \break % 17
      d'8.  e'16  c'2 \once \omit
      TupletBracket
      \times 2/3  {
        f'8 ( [  e'8  f'8 ) ]
      }
      |  % 18
      g'4  g'4  a'4 \once \omit TupletBracket
      \times 2/3  {
        f'8 ( [  e'8 )  ] f'8
      }
      | % 19
      \time 3/4  | % 19
      g'8.  a'16  g'2 | \break
      \time 2/4  |
      a'4.  c''8 |  % 21
      b'8  a'8  g'4 |  % 22
      a'8 ( [  g'8 ) ]  f'8 ( [  e'8 ) ]
      | % 23
      f'8  a'8  g'4 | % 24
      e'4.  f'8 | % 25
      d'4  e'4 | % 26
      f'4.  a'8   | % 27
      g'4  a'8  b'8 | % 28
      b'8 ( [  c''8 ) ]  a'8.  g'16 | % 29
      g'2 \break |
      d'4.  e'8 | % 31
      f'8  a'8  a'8.  g'16 | % 32
      c''4  b'8  a'8  | % 33
      g'4  c''8.  b'16 \break | % 34
      c''4.  a'8 | % 35
      g'8 ( [  f'8 ) ]  d'8.  c'16 | % 36
      c'2 \caesura
      \bar ".|:-||"

      | % 37
      \tempo "Più mosso"
      \time 3/4  | % 37

      \times 2/3  {
        c'8 ( [  d'8 ) ]  e'8
      }
      f'4  a'4 | \break % 38
      \time 2/4  | % 38
      g'4  a'8.   b'16   | % 39
      g'4  c''4  |
      b'8.  a'16  a'8 ( [  b'8 ) ] | % 41
      g'2  | % 42
      \time 5/4  | % 42
      a'4  d''8.  c''16  c''4
      b'2 | \break % 43
      g'4  e'8.  a'16  g'4  g'2 |  % 44
      c''4
      \times 4/5  {
        d''16 ( [  c''16  b'16
        c''16 )  ] d''16
      }
      c''4  c''2  | % 45
      \time 2/4  | % 45
      a'8.  a'16  a'8 ( [  b'8 ) ] | \break % 46
      g'4  f'4 |  % 47
      f'8. (  g'16 )  e'4 | % 48
      a'4 \once \omit TupletBracket
      \times 2/3  {
        g'8 ( [  a'8  g'8 ) ]
      }
      | % 49
      e'4  d'8.  c'16 |
      c'2
      \bar ":|."
    }

    \addlyrics {
      Бог __ е Лю -- бов,
      Бог е Лю -- бов, Бог __    е
      Лю -- бов,  Бог __
      е Лю -- бов. Веч --
      на, без -- гра -- нич
      -- на, пъл -- на със жи --
      вот, жи --  вот на бла -- ги
      -- я Бо -- жи Дух. Дух на бла --
      гост -- та, Дух __  на __  свя --
      тост -- та, Дух на пъ -- лен мир
      и ра -- дост за вся -- ка ду --
      ша, Дух на пъ -- лен мир и ра --
      дост за вся -- ка ду -- ша, за
      вся -- ка ду -- ша. Ний  ще
      хо -- дим във то -- зи път на
      свет -- ли -- на -- та, на свет --
      ли -- на -- та, на свет -- ли -- на --
      та, на свет -- ли -- на --
      та, във ко -- я -- то ца -- ру
      -- ва Бо -- жи --  я -- та
      Лю -- бов.}

      \header {
        title = \titleFunc #'ref_desc_3 "Бог е Любов II" "Bog e Ljubov II"
      }

      \midi{}

    } % score

    \markup \vspace #5

    
    \label #'ref167
    \tocItem \markup "Към „Фир-фюр-фен“"
    \include "include/bookpart-paper.ily"
    \score {
      \include "include/score-layout.ily"

      \new Voice \relative  c' {
        \clef treble
        \key g \minor
        \time 3/4
        \tempoFunc "Adagio" 4 "56"
        \autoBeamOff

        \partial 4 g'8. bes16 | d2 es8. g16 | \time 4/4 d4 d2 es8. d16 | \break

        c2. c8. d16 | bes4 g2 bes8. bes16 | \time 3/4 a2 g8. a16| \time 4/4 \break

        bes4 a2 bes8. g16 | \time 3/4 bes2 g8. a16 | \time 4/4 \break

        bes4 a2 g8. a16| \time 3/4 bes2 a8. g16 | g4 g2| \bar ".|:-|." \break
      }

      \addlyrics {
        Фир -- фюр --
        фен Тао -- би Aу -- мен. Фир -- фюр --
        фен Тао -- би Aу -- мен. Фир -- фюр --
        фен Тао -- би Aу -- мен. Фир -- фюр --
        фен Тао -- би Aу -- мен. Фир -- фюр --
        фен Тао -- би Aу -- мен.}

        \header {
          title = \titleFunc #'ref_desc_11 "Към „Фир-фюр-фен“" "Kăm Fir-fjur-fen  – Zu Fir-fjur-fen"
        }

        \midi{}

      } % score



    } % bookpart


