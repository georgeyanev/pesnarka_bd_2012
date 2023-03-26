\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref039
  \tocItem \markup " "
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
        e'8 | a'4 a'8. b'16 | cis''4 a'8. a'16 | cis''8. cis''16 d''8. cis''16 | b'2 | e''4 e''8. ( [ d''16 ] ) \break |

        cis''4 a' | b'8 b' cis''8. b'16 | a'2 | e''4 e''8. ( [ d''16 ] ) | cis''4 a' |  b'8 b' \tempo "rit." cis''8. b'16 | \break
      }
      \alternative {
        {  a'4. e'8 | }
        {  a'4\fermata b4 \tempoFunc "Andante sustenuto" 4 "63" }
      }

      \key c \major \time 4/4 \repeat volta 2 {
        c'2 b4 a |  \tuplet 3/2 { gis8 [ ( a b ) ] } a2 e'4 | \break

        \time 3/4 f'4 e' \tuplet 3/2 { dis'8 [ ( e' )  ] f' } | e'2 e'8 e'8 | \time 2/4 a'4 b'4 | \time 4/4 c''4 b' a' \tuplet 3/2 { gis'8 [ ( a' b' ) ] } | \break
        \time 3/4
      }


      \alternative {
        {  a'2 a4 | }
        {
          a'2 r8  \tempo "Tempo I"
          e'8 |
        }
      }

      \time 2/4 \key a \major a'4 a'8. b'16 | cis''4 a'8. a'16 | \break

      cis''8. cis''16 d''8. cis''16 | b'2 |e''4  e''8. [ ( d''16 ) ] | cis''4 a'4 | b'8 b' cis''8. b'16 | \break

      a'2 | e''4 e''8. [ ( d''16 ) ]  | cis''4 a' | b'8 b' cis''8. b'16 | a'4. \bar "|."

    }

    \addlyrics {
      Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя. Кра -- мя.

      Кра -- сив е Жи -- во -- тът на на -- ша -- та ду -- ша,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя. Кра -- мя.

      Кра -- сив е жи -- во -- тът на на -- ша -- та ду -- ша,

      що из -- пъл -- ня ця -- ла -- та Зе -- мя

      що из -- пъл -- ня ця -- ла -- та Зе -- мя.
    }
    \addlyrics {
      Kra -- siv e zhi -- vo -- tat na na -- sha -- ta du -- sha,

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya. Kra -- mya.

      Kra -- siv e zhi -- vo -- tat na na -- sha -- ta du -- sha,

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya. Kra -- mya.

      Kra -- siv e zhi -- vo -- tat na na -- sha -- ta du -- sha,

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya

      shto iz -- pal -- nya tsya -- la -- ta ze -- mya.
    }


    \header {
      title = \titleFunc "Красив е животът" "Krasiv e zhivotat"
    }

    \midi{}

  } % score

  \pageBreak
  \include "lyrics_de/103_krasiv_e_zhivota_lyrics_de.ly"

} % bookpart
