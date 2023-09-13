\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref169_2
  \tocItem \markup "Свобода е потребна за душата – Svoboda e potrebna za dušata "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      
        r4  d'8  d'8 | % 2
        a'4  a'8  a'8 | % 3
        c''4  bes'4 | % 4
        a'4  g'4 | % 5
        f'8 ( [  g'8 ) ]  a'4 ~ \break | % 6
        a'4  a8  a8 |  % 7
        d'4  e'8  e'8 | % 8
        g'4  f'4 | % 9
        e'4  d'4 |
        d'2 | % 11
        d'2 | \break % 12
        a8  a8  a4 | % 13
        d'2 | % 14
        a8  a8  a4 | % 15
        d'2
     \bar ":|."
    }
    \addlyrics {
      Сво -- бо -- да е по -- треб -- на
      за ду -- ша -- та. Сво -- бо
      -- да е по -- треб -- на за ду --
      ша -- та, за ду -- ша -- та, за ду
      -- ша -- та.}
     \addlyrics {
      Svo -- bo -- da e po -- treb -- na
      za du -- ša -- ta. Svo -- bo
      -- da e po -- treb -- na za du --
      ša -- ta, za du -- ša -- ta, za du
      -- ša -- ta.}

        \header {
          title = \titleFunc "Свобода е потребна за душата" "Svoboda e potrebna za dušata"
        }

        \midi{}

      } % score

      

      % include foreign translation(s) of the song
      \include "../../lyrics/de/169_2_svoboda_e_potrebna_sa_dushata_lyrics_de.ly"

      

    } % bookpart

    % Più mosso
    %
