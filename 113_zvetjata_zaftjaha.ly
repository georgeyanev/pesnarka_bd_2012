\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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

      e''4.\fermata b'8 | d''4. c''8 | b'4 a'8 a'8 | b'8 a'8 g'8 fis'8 | g'2 \bar "|."
    }

    \addlyrics {
      Цве -- тя -- та цъф -- тя -- ха под слън -- че -- ви лъ -- чи

      и ве -- че вър -- за -- ха. И тъй о -- бле -- че -- ни в~кра -- со та,

      и тъй о -- бле -- че -- ни в~чи -- сто -- та, те ни до -- на сят

      мла -- дост -- та. Във не -- я зре -- ят слад -- ки пло -- до -- ве. И

      тъй, ка -- то ги при -- е -- ма -- ме, поз -- на -- ва -- ме, че са

      Бо -- жи да -- ро -- ве;  и

      тъй, ка -- то ги при -- е -- ма -- ме, поз -- на -- ва -- ме, че са дар на Лю -- бов -- та.
    }
    \addlyrics {
      Tsve -- tya -- ta tsaf -- tya -- ha pod slan -- che -- vi la -- chi

      i ve -- che var -- za -- ha. I tay o -- ble -- che -- ni v~kra -- so ta,

      i tay o -- ble -- che -- ni v~chi -- sto -- ta, te ni do -- na syat

      mla -- dost -- ta. Vav ne -- ya zre -- yat slad -- ki plo -- do -- ve. I

      tay, ka -- to gi pri -- e -- ma -- me, poz -- na -- va -- me, che sa

      Bo -- zhi da -- ro -- ve;  i

      tay, ka -- to gi pri -- e -- ma -- me, poz -- na -- va -- me, che sa dar na Lyu -- bov -- ta.}
      \header {
        title = \titleFunc "Цветята цъфтяха" "Tvetyata tsaftyaha"
      }

      \midi{}

    } % score
    %\markup \dc-two "D.C.""con ripetizione"




    %

    % include foreign translation(s) of the song

    \pageBreak
    \include "lyrics_de/113_zvetjata_zaftjaha_lyrics_de.ly"

  } % bookpart
