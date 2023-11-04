\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref106
  \tocItem \markup "Песен на зората"
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

      \time 3/4 d8 fis a a a a | d, fis a \tempo "rit." a a a \bar "||" \key d \major \time 2/4 \tempo "Tempo I" d4 a8 b | \break \pageBreak

      a8 fis d e | fis fis e4| a2 | g4 b8 b | a g fis d | \break

      e8 fis e4 | d2 | \time 4/4 \tuplet 3/2 { g8 [(a8)] b } a4 a2 | \tuplet 3/2 {d,8 [(e8)] fis8  }e4 d2 \bar "|."


    }

    \addlyrics {
      Зо -- ра се свет -- ла за -- зо -- ря -- ва,
      зо -- ра се свет -- ла за -- зо -- ря -- ва,
      за -- зо -- ря -- ва, за -- зо -- ря -- ва.

      Пъл -- на 	Pа -- дост тя в~Жи -- во -- та вна -- ся.

      На мла -- ди но -- си здра -- ве,

      на ра -- бот -- ни дар Жи -- вот.

      Мъд -- ри -- те да до -- бру -- ват,

      доб -- ри -- те да бла -- гу -- ват,

      да доб -- ру -- ват, да бла -- гу -- ват;

      мъд -- ри да доб -- ру -- ват,

      доб -- ри да бла -- гу -- ват.

      Зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      зо -- ра за тях се свет -- ла за -- зо -- ря -- ва,

      за -- зо -- ря -- ва, за -- зо -- ря -- ва.
    }

    \header {
      title = \titleFunc "Песен на зората" "Pesen na zorata"
    }

    \midi{}

  } % score

  \label #'ref107
  \tocItem \markup "При всичките условия"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key f \major
      \time 6/8
      \tempoFunc "Allegretto" 4. "84"
      \partial 8
      c'8 | c4 bes8 a4 g8 | f4 d8 c4. | g'4  g8 g8 (a b)  | \break

      \time 3/4 \tempo \markup {
        % make tempo note smaller
        \concat {
          \normal-text { "        " }
          \teeny \general-align #Y #DOWN \note {4.} #0.8
          \normal-text { " = " }
          \teeny \general-align #Y #DOWN \note {4} #0.8
        }
      }
      c2 \tuplet 3/2 { g4 g8} | c2 \tuplet 3/2 { a4 a8 } | d4 (c) \tupletUp \tuplet 3/2 { b b8 } | \tupletNeutral \break

      c2 \mark \markup { \bold \fontsize #-2 { "Fine" } } \bar "!!" \key d \minor a8 ( f8 ) \autoBeamOff \repeat volta 2 {
        e4 d a8. a16 | \time 2/4 d4. f8 | \break
        e4 a,8. a16 | d8 [(e8)] f8 e |
      }
      \alternative {
        {\time 3/4 d2 a'8 [(f)] }
        {\time 2/4 d4. }
      }
      \bar "|."

    }

    \addlyrics {
      При всич -- ки -- те у -- сло -- ви -- я на жи -- во -- та

      не гу -- би сво -- я Мир, сво -- я Мир.

      Жи -- во -- тът е кра -- сив,

      ко -- га -- то чо -- ве -- кът е смел.

      Жи -- смел.
    }

    \header {
      title = \titleFunc "При всичките условия" "Pri vsičkite uslovija"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C. al Fine"



} % bookpart
