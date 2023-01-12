\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


 \new Voice \relative c' {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Andante maestoso" 4 "60"
      \autoBeamOff


      \autoBeamOff
      d'4 a8 b8 | a8 fis8 d e | fis4 ( e4 ) | a2 | g4 b8 b| \break

      a8 g fis d | e [ ( fis ] e4 )  | d2 \bar "||" \time 4/4 \tuplet 3/2 { { g8 [ (   a8 ) ] b8 } } a4 a2 \break

      \tuplet 3/2 {    { d,8 [( e8 )] } fis8 } e4 d2 |  \key g \major \time 2/4 
      \tempoFunc "Più mosso" 4 "184"
      g4. ( fis8 | e4 ) d4 | c4. e8 |  d4 c | \break

      b4 c | d (e) \bar "||" \time 3/4 d2 d4 | b'4. a8 g8. fis16 | e4 d c8. c16  | \break

      e4. d8 c8. c16 | b2 r4 \repeat volta 2 {
        b'4 c4. b8 | a8 g fis [(g)] a4  \break

        g4 fis e | \time 2/4 d8 c b8 [(c8) ] | d2 |
      } g4. fis8 | \break

      e8 [( d ] e [d ]) | d2 | a'4. g8  |  e8 [( d8  ] e8 [d8 ]) | d2 \bar "||" \break

      \time 3/4 d8 g a a a a | d, fis a \tempo "rit." a a a \bar "||" \key d \major \time 2/4 \tempo "Tempo I" d4 a8 b | \break

      a8 fis d e | fis fis e4| a2 | g4 b8 b | a g fis d | \break

      e8 fis e4 | d2 | \time 4/4 \tuplet 3/2 { g8 [(a8)] b } a4 a2 | \tuplet 3/2 {d,8 [(e8)] fis8  }e4 d2 \bar "|."


    }

    \addlyrics {
      Зо -- ра се свет -- ла за -- зо -- ря -- ва,
      зо -- ра се свет -- ла за -- зо -- ря -- ва,
      за -- зо -- ря -- ва, за -- зо -- ря -- ва,

      Пъл -- на 	Pа -- дост тя в~Жи -- во -- та вна -- ся.

      На мла -- ди но -- си здра -- ве,

      на ра -- бот -- "ни-" дар Жи -- вот.

      Мъ -- дри -- те да до -- бру -- ват,

      до -- бри -- те да бла -- гу -- ват,


      да до -- бру -- ват, да бла -- гу -- ват;

      мъд -- ри да до -- бру -- ват,

      до -- бри да бла -- гу -- ват.

      Зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      за -- зо -- ря -- ва, за -- зо -- ря -- ва.
    }

    \addlyrics {
      Zo -- ra se svet -- la za -- zo -- rya -- va,
      zo -- ra se svet -- la za -- zo -- rya -- va,
      za -- zo -- rya -- va, za -- zo -- rya -- va,

      Pal -- na 	Pa -- dost tya v~Zhi -- vo -- ta vna -- sya.

      Na mla -- di no -- si zdra -- ve,

      na ra -- bot -- "ni-" dar Zhi -- vot.

      Ma -- dri -- te da do -- bru -- vat,

      do -- bri -- te da bla -- gu -- vat,


      da do -- bru -- vat, da bla -- gu -- vat;

      mad -- ri da do -- bru -- vat,

      do -- bri da bla -- gu -- vat.

      Zo -- ra za tyah se svet -- la za -- zo -- rya -- va,

      zo -- ra za tyah se svet -- la za -- zo -- rya -- va,

      za -- zo -- rya -- va, za -- zo -- rya -- va.
    }


    \header {
      title = \titleFunc "Песен на зората" "Pesen na zorata"
    }

    \midi{}

  } % score

  %\markup \dc-two "D.C." "con repitione"
  

  % include foreign translation(s) of the song

  %\pageBreak
  \include "lyrics_de/106_pesen_na_zorata_lyrics_de.ly"

} % bookpart
