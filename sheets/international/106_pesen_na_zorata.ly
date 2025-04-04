\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref106
  \tocItem \markup "Песен на зората – Pesen na zorata"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Andante maestoso" 4 "60"
      \autoBeamOff
      d'4 a8 b8 | a8 fis8 d e | fis4 ( e4 ) | a2 | g4 b8 b| \break

      a8 g fis d | e [ ( fis ] e4 )  | d2 | \time 4/4 \tuplet 3/2 { { g8 [ (   a8 ) ] b8 } } a4 a2 \break

      \tuplet 3/2 {    { d,8 [( e8 )] } fis8 } e4 d2 \bar "||"  \key g \major \time 2/4
      \tempoFunc "Più mosso" 4 "184"
      g4. ( fis8 | e4 ) d4 | c4. e8 |  d4 c | \break

      b4 c | d (e) | \time 3/4 d2 d4 | b'4. a8 g8. fis16 | e4 d c8. c16  | \break

      e4. d8 c8. c16 | b2 r4 \bar ".|:"
      b'4 c4. b8 | a8 g fis [(g)] a4  \break

      g4 fis e | \time 2/4 d8 c b8 [(c8) ] | d2 |
      \bar ":|." g4. fis8 | \break

      e8 [( d ] e [d ]) | d2 | a'4. g8  |  e8 [( d8  ] e8 [d8 ]) | d2 | \break

      \time 3/4 d8 fis a a a a | d, fis a \tempo "rit." a a a \bar "||" \break \pageBreak \key d \major \time 2/4 \tempo "Tempo I" d4 a8 b |

      a8 fis d e | fis fis e4| a2 | g4 b8 b | \break  a g fis d |

      e8 fis e4 | d2 | \time 4/4 \tuplet 3/2 { g8 [(a8)] b } a4 a2 | \tuplet 3/2 {d,8 [(e8)] fis8  }e4 d2 \bar "|."


    }

    \addlyrics {
      Зо -- ра се свет -- ла за -- зо -- ря -- ва,
      зо -- ра се свет -- ла за -- зо -- ря -- ва,
      за -- зо -- ря -- ва, за -- зо -- ря -- ва.

      Пъл -- на ра -- дост тя в~жи -- во -- та вна -- ся.

      На мла -- ди но -- си здра -- ве,

      на ра -- бот -- "ни  –" дар жи -- вот.

      Мъд -- ри -- те да до -- бру -- ват,

      доб -- ри -- те да бла -- гу -- ват,

      да доб -- ру -- ват, да бла -- гу -- ват;

      мъд -- ри да доб -- ру -- ват,

      доб -- ри да бла -- гу -- ват.

      Зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      за -- зо -- ря -- ва, за -- зо -- ря -- ва.
    }

    \addlyrics {
      Zo -- ra se svet -- la za -- zo -- rja -- va,
      zo -- ra se svet -- la za -- zo -- rja -- va,
      za -- zo -- rja -- va, za -- zo -- rja -- va.

      Păl -- na ra -- dost tja v~ži -- vo -- ta vna -- sja.

      Na mla -- di no -- si zdra -- ve,

      na ra -- bot -- "ni  –" dar ži -- vot.

      Măd -- ri -- te da do -- bru -- vat,

      dob -- ri -- te da bla -- gu -- vat,

      da dob -- ru -- vat, da bla -- gu -- vat;

      măd -- ri da dob -- ru -- vat,

      dob -- ri da bla -- gu -- vat.

      Zo -- ra za tjah se svet -- la za -- zo -- rja -- va,

      zo -- ra za tjah se svet -- la za -- zo -- rja -- va,

      za -- zo -- rja -- va, za -- zo -- rja -- va.

    }


    \header {
      title = \titleFunc "Песен на зората" "Pesen na zorata"
    }

    \midi{}

  } % score

  %\markup \dc-two "D.C." "con repitione"


  % include foreign translation(s) of the song

  \markup \vspace #3

  \include "../../lyrics/de/106_pesen_na_zorata_lyrics_de.ly"

} % bookpart
