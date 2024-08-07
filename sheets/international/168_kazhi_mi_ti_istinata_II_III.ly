\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref168
  \tocItem \markup "Кажи ми Ти Истината II – Kaži mi Ti Istinata II"
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
      ко -- я -- то но -- си сво -- бо --
      да за мо -- я -- та ду -- ша. __
      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то от Лю -- бов -- та __
      из -- ли --  за и от Мъд --
      рост -- та __  про -- си -- я --
      ва. Са -- мо та -- зи Ис -- ти -- на
      но -- си Ве -- чен жи -- вот и
      сво -- бо -- да __  за чо -- веш --
      ка -- та ду -- ша. Ще хо -- дя
      в~то -- я път __ на Ис -- ти --
      на -- та и жи -- во -- та, Гос --
      по -- ди, Бо -- же мой. Ка -- жи ми
      Ти Ис -- ти -- на -- та, ко -- я --
      то но -- си сво -- бо -- да за мо
      -- я -- та ду -- ша.}

      \addlyrics {
        Ka -- ži mi Ti Is -- ti -- na -- ta,
        ko -- ja -- to no -- si svo -- bo --
        da za mo -- ja -- ta du -- ša. __
        Ka -- ži mi Ti Is -- ti -- na -- ta,
        ko -- ja -- to ot Lju -- bov -- ta __
        iz -- li --  za i ot Măd --
        rost -- ta __  pro -- si -- ja --
        va. Sa -- mo ta -- zi Is -- ti -- na
        no -- si Ve -- čen ži -- vot i
        svo -- bo -- da __  za čo -- veš --
        ka -- ta du -- ša. Šte ho -- dja
        v~to -- ja păt __ na Is -- ti --
        na -- ta i ži -- vo -- ta, Gos --
        po -- di, Bo -- že moj. Ka -- ži mi
        Ti Is -- ti -- na -- ta, ko -- ja --
        to no -- si svo -- bo -- da za mo
        -- ja -- ta du -- ša.}

        \header {
          title = \titleFunc "Кажи ми Ти Истината II" "Kaži mi Ti Istinata II"
        }

        \midi{}

      } % score
      \markup \vspace #1


      % include foreign translation(s) of the song
      \include "../../lyrics/de/168_kazhi_mi_ti_istinata_ii_lyrics_de.ly"

      % \markup \vspace #2

      \pageBreak


      \label #'ref169_1
      \tocItem \markup "Кажи ми Ти Истината III – Kaži mi Ti Istinata III"
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
          b'4  a'4 | % 8
          g'2 ( | % 9
          g'4 ) r4 \bar ":|.|:"
          \repeat volta 2 {
            \time 4/4
            g''2  fis''4.  g''16 [
            fis''16 ] \break | % 11
            e''4 (  e''8 ) [  e''8
            fis''8  g''8 ]  fis''8 [  e''8 ] | % 12
            d''8. [  c''16 ]  b'4 (  b'8
            ) [  b'8  c''8  d''8 ] | % 13
            e''2  d''4.  c''16 [  b'16
            ] | % 14
            a'4 ~  a'8 -- [  d'8 --  e'8 --
            fis'8 -- ]  g'8 -- [  a'8 -- ] \break |
          }

          \alternative {
            {
              b'8 ->  b'4.  a'4.\prall g'8 --
            }
            {
              b'8  b'4.  a'4.  g'8
              g'2 r4  d'4 \bar "||"
            }
          }
          \time 3/4   b'4.  a'8  g'4 | \time 2/4
          fis'8.  e'16  e'4 \break \time 3/4  d'2 r8
          d'8  e'8  fis'8  g'8  a'8
          b'8  d''8 ^\fermata  c''4.  b'8
          a'8  g'8 | \time 2/4 b'4  a'4 | \time 3/4
          g'2 s4 \bar "|."
        }
        \addlyrics {
          Ка -- жи ми Ти Ис -- ти -- на -- та,
          ко -- я -- то но -- си сво -- бо --
          да за мо -- я -- та ду -- ша. __ ""

          \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
          \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
          \skip1 \skip1 \skip1


          Ка -- жи ми Ти Ис -- ти --
          на -- та, ко -- я -- то но -- си сво
          -- бо -- да за мо -- я -- та ду --
          ша.}
          \addlyrics {
            Ka -- ži mi Ti Is -- ti -- na -- ta,
            ko -- ja -- to no -- si svo -- bo --
            da za mo -- ja -- ta du -- ša. __ ""

            \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
            \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
            \skip1 \skip1 \skip1


            Ka -- ži mi Ti Is -- ti --
            na -- ta, ko -- ja -- to no -- si svo
            -- bo -- da za mo -- ja -- ta du --
            ša.}

            \header {
              title = \titleFunc "Кажи ми Ти Истината III "" Kaži mi Ti Istinata III"
            }

            \midi{}

          } % score

          \markup \vspace #2

          % include foreign translation(s) of the song
          \include "../../lyrics/de/169_Kazhi_mi_ti_isinata_III_lyrics.de.ly"


        } % bookpart

        % Più mosso
        %
