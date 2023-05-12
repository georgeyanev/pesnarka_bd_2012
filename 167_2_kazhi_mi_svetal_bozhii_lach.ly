\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref167_2
  \tocItem \markup "Кажи ми, светли Божи лъч – Kaži mi, svetli Boži lăč "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      g4  b4  d'4 | % 2
      b'2  a'4 | % 3
      \time 2/4  | % 3
      g'4 (  a'16 [  g'16  fis'16  g'16
      ] | % 4
      a'4. )  fis'8 | % 5
      g'2 \break | % 6
      \time 4/4  | % 6
      c''4.  b'8  b'4  a'4 | % 7
      g'4  g'16 ( [  fis'16  g'16  a'16
      ) ]  g'2 | % 8
      \time 3/4  | % 8
      b'4.  b'8  b'4 \break | % 9
      \time 4/4  | % 9
      d''2  c''4.  b'8 |
      c''8.  b'16  a'8.  gis'16
      a'2 | % 11
      \time 5/4  | % 11
      g'4  fis'4  e'8.  e'16  e'2
      \break | % 12
      d'4  c'4  c'8.  c'16  e'2 | % 13
      d'4  a4  a8.  a16  b2 ^\fermata
      \bar "|."
    }

    \addlyrics {
      Ка -- жи ми, свет -- ли Бо --
      жи лъч, бла -- го -- то
      на Жи -- во --   та, свет --
      ли -- я прав път на чис -- ти --
      те "ду-" -- ши, чис -- ти -- те "ду-" --
      ши, чис -- ти -- те ду -- ши, чис --
      ти -- те ду -- ши.}
       \addlyrics {
      Ka -- ži mi, svet -- li Bo --
      ži lăč, bla -- go -- to
      na Ži -- vo --   ta, svet --
      li -- ja prav păt na čis -- ti --
      te du -- ši, čis -- ti -- te du --
      ši, čis -- ti -- te du -- ši, čis --
      ti -- te du -- ši.}

        \header {
          title = \titleFunc "Кажи ми, светли Божи лъч" "Kaži mi, svetli Boži lăč"
        }

        \midi{}

      } % score

      % include foreign translation(s) of the song
      \include "lyrics_de/167_2_kazhi_mi_svetli_bozhi_lach_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
