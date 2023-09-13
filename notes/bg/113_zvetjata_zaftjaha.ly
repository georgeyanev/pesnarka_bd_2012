\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref113
  \tocItem \markup "Цветята цъфтяха – Cvetjata căftjaha"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 4/4
      \tempoFunc "Moderato" 4 "69"
      \autoBeamOff

      \partial 4

      g'4 | g''2 fis''4 d''4 |e''2 d''2 | b'4  d''4 a'2| a'4 b'4 g'2 | \break

      b'4 d''4 a'2 | a'4 b'4 g'2| b4 d'8 g'8 b'4. a'8 | a'4 b'8 b'8 g'2 | \break

      b4 d'8 g'8 b'4. a'8 | a'4 b'8 b'8 g'2 | g'4 fis'8. e'16 e'4. d'8 | \break

      b4 c'4 d'2 | d'4 g'8 a'8 b'4. a'8 | g'4 fis'4 a'4 a'4 |  \time 2/4 g'4. d'8 | \break

      g'2 | fis'8. g'16 a'8 b'8 | c''4 d''4 | e''4.\fermata b'8 | d''4. c''8 | b'4 a'8 a'8 | \break

      b'8 a'8 g'8 fis'8 | g'4. d'8 | g'2 | fis'8. g'16 a'8 b'8 | c''4 d''4 | \break

      e''4.\fermata b'8 | d''4. c''8 | b'4 a'8 a'8 | b'8 a'8 g'8 fis'8 | g'2 ( | g'4 ) \bar "|."
    }

    \addlyrics {
      Цве -- тя -- та цъф -- тя -- ха под слън -- че -- ви лъ -- чи

      и ве -- че вър -- за -- ха. И тъй о -- бле -- че -- ни "в~кра-" -- со -- та,

      и тъй о -- бле -- че -- ни "в~чис-" -- то -- та, те ни до -- на сят

      мла -- дост -- та. Във не -- я зре -- ят слад -- ки пло -- до -- ве. И

      тъй, ка -- то ги при -- е -- ма -- ме, поз -- на -- ва -- ме, че са

      Бо -- жи да -- ро -- ве;  и

      тъй, ка -- то ги при -- е -- ма -- ме, поз -- на -- ва -- ме, че са дар на Лю -- бов -- та. __
    }
      \header {
        title = \titleFunc "Цветята цъфтяха" "Cvetjata căftjaha"
      }

      \midi{}

    } % score
    %\markup \dc-two "D.C.""con repitione"




    %

    % include foreign translation(s) of the song

    \pageBreak
    

  } % bookpart
