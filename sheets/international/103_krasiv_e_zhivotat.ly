\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref103
  \tocItem \markup "Красив е животът – Krasiv e životăt"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute{

      \clef treble
      \key a \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

      \partial 8

      \repeat volta 2 {
        e'8 | a'4 a'8. b'16 | cis''4 a'8. a'16 | cis''8 cis''8 d''8. cis''16 | b'2 | e''4 e''8. ( [ d''16 ] ) \break |

        cis''4 a' | b'8 b' cis''8. b'16 | a'2 | e''4 e''8. ( [ d''16 ] ) | cis''4 a' |  b'8 b' \tempo "rit." cis''8. b'16 | \break
      }
      \alternative {
        {  a'4. e'8 | }
        {  a'4\fermata a4 \tempoFunc "Andante sustenuto" 4 "63" }
      }

      \key a \minor \time 4/4 \repeat volta 2 {
        c'2 b4 a |  \tuplet 3/2 { gis8 [ ( a b ) ] } a2 e'4 | \break

        \time 3/4 f'4 e' \tuplet 3/2 { dis'8 [ ( e' )  ] f' } | e'2 e'8 e'8 | \time 2/4 a'4 b'4 | \time 4/4 c''4 b' a' \tuplet 3/2 { gis'8 [ ( a' b' ) ] } | \break
        \time 3/4
      }


      \alternative {
        {  a'2 a4 | }
        {
          a'2 r8  \tempo "Tempo I"
          e'8 \bar "||"
        }
      }

      \time 2/4 \key a \major a'4 a'8. b'16 | cis''4 a'8. a'16 | \break

      cis''8 cis''8 d''8. cis''16 | b'2 |e''4  e''8. [ ( d''16 ) ] | cis''4 a'4 | b'8 b' cis''8. b'16 | \break

      a'2 | e''4 e''8. [ ( d''16 ) ]  | cis''4 a' | b'8 b' cis''8. b'16 | a'4. \bar "|."

    }

    \addlyrics {
      Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя. Кра -- мя.

      Кра -- сив е Жи -- во -- тът на на -- ша -- та __ ду -- ша,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя. Кра -- мя.

      Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя.
    }
    \addlyrics {
      Kra -- siv e ži -- vo -- tăt na na -- ša -- ta du -- ša,

      što iz -- păl -- nja cja -- la -- ta Ze -- mja,

      što iz -- păl -- nja cja -- la -- ta Ze -- mja. Kra -- mja.

      Kra -- siv e Ži -- vo -- tăt na na -- ša -- ta __ du -- ša,

      što iz -- păl -- nja cja -- la -- ta Ze -- mja. Kra -- mja.

      Kra -- siv e ži -- vo -- tăt na na -- ša -- ta du -- ša,

      što iz -- păl -- nja cja -- la -- ta Ze -- mja,

      što iz -- păl -- nja cja -- la -- ta Ze -- mja.
    }


    \header {
      title = \titleFunc "Красив е животът" "Krasiv e životăt"
    }

    \midi{}

  } % score

  \pageBreak
  \include "../../lyrics/de/103_krasiv_e_zhivota_lyrics_de.ly"

} % bookpart