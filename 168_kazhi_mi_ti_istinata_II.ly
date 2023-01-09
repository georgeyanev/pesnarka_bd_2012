\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff

      \partial 4
      d'4 | % 2
      b'4.  a'8  g'4 | % 3
      \time 2/4  | % 3
      fis'8.  e'16  e'4 | % 4
      \time 3/4  | % 4
      d'2 r8  d'8 | % 5
      e'8  fis'8  g'8  a'8
      b'8  d''8 ^\fermata \break | % 6
      c''4.  b'8  a'8  g'8 | % 7
      \time 2/4  | % 7
      b'4.  a'8 | % 8
      g'2 ~ | % 9
      g'4 r8  d'8 |
      \time 3/4  |
      b'4.  a'8  g'4 \break | % 11
      \time 2/4  | % 11
      fis'8.  e'16  e'4  | % 12
      \time 3/4  | % 12
      d'2 r8  d'8 | % 13
      e'8  fis'8  g'8  a'8
      b'8  d''8 ~ ^\fermata  \time 2/4 | % 14
     d''4.  c''8 \break | \time 3/4 b'2  (a'4)  | % 16
      
      \time 2/4 g'2   % 17
      b'4  a'4 | % 18
      g'4  fis'4 | % 19
      a'4. (  g'8 ) |
      fis'4  e'4 | % 21
      e'4. (  fis'8 ) | % 22
      d'2 \break | % 23
      c'4  c'4 | % 24
      e'4  d'4 | % 25
      c'4.  d'8 | % 26
      b2 | % 27
      d'4  g'4 | % 28
      b'4  a'4 \break | % 29
      g'4 (  fis'4 ) |
      g'2 | % 31
      g'4  a'8  b'8 | % 32
      d''4 (  c''4 ) | % 33
      b'4  e''4 | % 34
      d''4  a'4 | % 35
      g'4  fis'4 \break | % 36
      \time 3/4  | % 36
      g'2  d'4 | % 37
      b'4. (  a'8 )  g'4 | % 38
      \time 2/4  | % 38
      fis'8.  e'16  e'4 ( | % 39
      \time 3/4  | % 39
      d'2 ) r8  d'8 |
      e'8  fis'8  g'8  a'8
      b'4 \break | % 41
      \time 2/4  | % 41
      d''4 (  c''4 ) | % 42
      \time 3/4  | % 42
      b'2  a'4 | % 43
      g'4  fis'4  g'4 | % 44
      b'2  a'4 | % 45
      g'2 s4 \bar "|."



    }

    \addlyrics {
      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то но -- си Сво -- бо --
      да за мо -- я -- та ду -- ша.
      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то от Лю -- бов -- та
      из -- ли --  за и от Мъ --
      дрост -- та  про -- си -- я --
      ва. Са -- мо та -- зи Ис -- ти -- на
      но -- си Ве -- чен жи -- вот и
      Сво -- бо -- да  за чо -- веш --
      ка -- та ду -- ша. Ще хо -- дя
      в‿то -- я път  на Ис -- ти --
      на -- та и Жи -- во -- та, Гос --
      по -- ди, Бо -- же мой. Ка -- жи ми
      Ти Ис -- ти -- на -- та, ко -- я --
      то но -- си Сво -- бо -- да за мо
      -- я -- та ду -- ша.}
      \addlyrics {
        Ka -- zhi mi Ti Is -- ti -- na -- ta,
        ko -- ya -- to no -- si Svo -- bo --
        da za mo -- ya -- ta du -- sha.
        Ka -- zhi mi Ti Is -- ti -- na -- ta,
        ko -- ya -- to ot Lyu -- bov -- ta
        iz -- li --  za i ot Ma --
        drost -- ta  pro -- si -- ya --
        va. Sa -- mo ta -- zi Is -- ti -- na
        no -- si Ve -- chen zhi -- vot i
        Svo -- bo -- da  za cho -- vesh --
        ka -- ta du -- sha. Shte ho -- dya
        v‿to -- ya pat  na Is -- ti --
        na -- ta i Zhi -- vo -- ta, Gos --
        po -- di, Bo -- zhe moy. Ka -- zhi mi
        Ti Is -- ti -- na -- ta, ko -- ya --
        to no -- si Svo -- bo -- da za mo
        -- ya -- ta du -- sha.}

        \header {
          title = \titleFunc "Кажи ми Ти Истината II" "Kazhi mi ti istinata II"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/168_kazhi_mi_ti_istinata_ii_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
