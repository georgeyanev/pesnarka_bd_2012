\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref171_1
  \tocItem \markup "Милост, благост"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Moderato" 4 "80"
      \autoBeamOff

      a'2 e'4 | % 2
      a'2 e'4 | % 3
      a'2. | % 4
      \key c \major
      g'2 e'4 | % 5
      g'2. | % 6
      d'4 ( e'4 ) f'4 | % 7
      f'2 e'4 \break | % 8
      g'2. | % 9
      f'2 e'4 |
      e'2. | % 11
      d'4 ( e'4 ) f'4 | % 12
      e'2. | % 13
      \tempo "rit."  d'4  ( e'4 ) f'4 | % 14
      e'2.\bar "|."

    }

    \addlyrics {
      Ми -- лост, бла -- гост в~мен Той все -- ли.  Ми -- лост, бла -- гост   в~мен Той все -- ли, в~мен все -- ли, в~мен все -- ли.}


      \header {
        title = \titleFunc "Милост, благост" "Milost, blagost"
      }

      \midi{}

    } % score

    \markup \dc-one "D.C."

    \label #'ref169_2
    \tocItem \markup "Свобода е потребна за душата"
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
        \time 3/4 \bar ".|:-|" d'4 d'4. e'8| f'4 d'2 | g'4 f'2 | e'4. f'8 d'4  \bar ":|."

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

      \header {
        title = \titleFunc "Свобода е потребна за душата" "Svoboda e potrebna za dušata"
      }

      \midi{}

    } % score



  } % bookpart

  % Più mosso
  %
