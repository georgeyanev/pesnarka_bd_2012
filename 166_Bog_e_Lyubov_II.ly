\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref166
  \tocItem \markup "Бог е Любов II – Bog e Ljubov II"
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
      g'8.   a'16 |  g'4 ~  % 8
      g'4  g'8 ( [  b'8 ] | % 9
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
      d'8 ( [  e'8 ) ]  g'2  e'4 | \break % 17
      d'8. ( [  e'16 ) ]  c'2 \once \omit
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
      g'8.  a'16  g'2 |
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
      c''4  b'8  a'8 \break | % 33
      g'4  c''8.  b'16 | % 34
      c''4.  a'8 | % 35
      g'8 ( [  f'8 ) ]  d'8.  c'16 | % 36
      c'2 \break
      \repeat volta 2 {
        | % 37
        \time 3/4  | % 37

        \times 2/3  {
          c'8 ( [  d'8 ) ]  e'8
        }
        f'4  a'4 | % 38
        \time 2/4  | % 38
        g'4  a'8.   b'16   | % 39
        g'4  c''4  |
        b'8.  a'16  a'8 ( [  b'8 ) ] | % 41
        g'2  | \pageBreak % 42
        \time 5/4  | % 42
        a'4  d''8.  c''16  c''4
        b'2 | % 43
        g'4  e'8.  a'16  g'4  g'2 | \break % 44
        c''4
        \times 4/5  {
          d''16 ( [  c''16  b'16
          c''16 )  ] d''16
        }
        c''4  c''2 \break | % 45
        \time 2/4  | % 45
        a'8.  a'16  a'8 ( [  b'8 ) ] | % 46
        g'4  f'4 | % 47
        f'8. (  g'16 )  e'4 | % 48
        a'4 \once \omit TupletBracket
        \times 2/3  {
          g'8 ( [  a'8  g'8 ) ]
        }
        | % 49
        e'4  d'8.  c'16 |
        c'2
      }
    }

    \addlyrics {
      Бог е Лю -- бов,
      Бог е Лю -- бов, Бог    е
      Лю -- бов,  Бог
      е Лю -- бов. Веч --
      на, без -- гра -- нич
      -- на, пъл -- на със Жи --
      вот, Жи --  вот на бла -- ги
      -- я Бо -- жи Дух. Дух на бла --
      гост -- та, Дух  на  свя --
      тост -- та, Дух на пъ -- лен Мир
      и Ра -- дост за вся -- ка ду --
      ша, Дух на пъ -- лен Мир и Ра --
      дост за вся -- ка ду -- ша, за
      вся -- ка ду -- ша. Ний  ще
      хо -- дим във то -- зи път на
      Свет -- ли -- на -- та, на Свет --
      ли -- на -- та, на Свет -- ли -- на --
      та, на Свет --   ли -- на --
      та, във ко -- я -- то ца -- ру
      -- ва Бо -- жи --  я -- та
      Лю -- бов.}
    \addlyrics {
      Bog e Lju -- bov,
      Bog e Lju -- bov, Bog    e
      Lju -- bov,  Bog
      e Lju -- bov. Več --
      na, bez -- gra -- nič
      -- na, păl -- na săs Ži --
      vot, Ži --  vot na bla -- gi
      -- ja Bo -- ži Duh. Duh na bla --
      gost -- ta, Duh  na  svja --
      tost -- ta, Duh na pă -- len Mir
      i Ra -- dost za vsja -- ka du --
      ša, Duh na pă -- len Mir i Ra --
      dost za vsja -- ka du -- ša, za
      vsja -- ka du -- ša. Nij  šte
      ho -- dim văv to -- zi păt na
      Svet -- li -- na -- ta, na Svet --
      li -- na -- ta, na Svet -- li -- na --
      ta, na Svet --   li -- na --
      ta, văv ko -- ja -- to ca -- ru
      -- va Bo -- ži --  ja -- ta
      Lju -- bov.}

        \header {
          title = \titleFunc "Бог е Любов II" "Bog e Ljubov II"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/166_bog_e_lyubov_lyrics_de.ly"

    } % bookpart


