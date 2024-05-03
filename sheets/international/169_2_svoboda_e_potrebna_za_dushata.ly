\version "2.24.3"

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

      g'8 a'8 bes'4 | % 2
      a'4.  a'8 | c''4  bes'4 | a'4 g'| % 3
      f'8 ([g'8]) a'4 |  % 4
      d'8  e'8 f'4 | % 5
      e'4. e'8 | \break
      g'2 | f'2 | e'2 | d'2 | d'2 | d'2 | a8 a8 a4 | d'2 | \break

      a8 a8 a4 | d'2 |a8 a8 a4 | d'2 |a8 a8 a4 | d'2 | \break
      \time 3/4 \bar ".|:-|" d'4 d'4. e'8| f'4 d'2 | g'4 f'2 | e'4. f'8 d'4  \bar ":|." \break

      \time 2/4 a8 d'4 d'8 | a8 a8 a4 | d'2|  a8 d'4 d'8 | a8 a8 a4 | d'2 \bar "|."
    }
    \addlyrics {
      "Сво-" -- бо -- да е по -- треб -- на
      за ду -- ша -- та. "Сво-" -- бо
      -- да е по -- треб -- на за ду --
      ша -- та, за ду -- ша -- та, за ду
      -- ша -- та, за ду
      -- ша -- та, за ду
      -- ша -- та. Тя се на -- ми -- ра са -- мо в~Лю -- бов -- та.
      То -- ва е за ду -- ша -- та. То -- ва е за ду -- ша -- та.
    }
    \addlyrics {
      "Svo-" -- bo -- da e po -- treb -- na
      za du -- ša -- ta. "Svo-" -- bo
      -- da e po -- treb -- na za du --
      ša -- ta, za du -- ša -- ta, za du
      -- ša -- ta, za du
      -- ša -- ta, za du
      -- ša -- ta. Tja se na -- mi -- ra sa -- mo v~Lju -- bov -- ta.
      To -- va e za du -- ša -- ta. To -- va e za du -- ša -- ta.
    }
    \header {
      title = \titleFunc "Свобода е потребна за душата" "Svoboda e potrebna za dušata"
    }

    \midi{}

  } % score

  \markup \vspace #3

  % include foreign translation(s) of the song
  \include "../../lyrics/de/169_2_svoboda_e_potrebna_sa_dushata_lyrics_de.ly"



} % bookpart

% Più mosso
%
