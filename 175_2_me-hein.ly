\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref175_2
  \tocItem \markup "Ме-хейн – Me-hein "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8  [g'8]  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      es'4

      fis'4 | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar ":|."
    }
    \addlyrics {
      В~дни на бор -- ба, в~дни на пе -- чал,
      да -- леч от теб мой ро -- ден край,
      аз ви -- на -- ги мис-ля за теб,
      аз ви -- на -- ги мис -- ля  мис -- ля за теб.
    }
    \addlyrics {
      V~dni na bor -- ba, v~dni na pe -- chal,
      da -- lech ot teb moy ro -- den kray,
      az vi -- na -- gi mis-lya za teb,
      az vi -- na -- gi mis -- lya  mis -- lya za teb.}

      \header {
        title = \titleFunc "Ме-хейн" "Me-hein"
      }

      \midi{}

    } % score




    % include foreign translation(s) of the song
    \include "lyrics_de/175_mehein_lyrics_de.ly"

  } % bookpart

  % Più mosso
  %
