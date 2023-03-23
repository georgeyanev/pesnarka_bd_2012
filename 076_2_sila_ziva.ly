\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 7/16
      \tempoFunc "Allegretto" 8 "176"
      \autoBeamOff


      g8 ( b ) d'8. | d'8 ( g' ) d'8. | g8 ( b ) d'8. | d'8 ( g' ) d'8. | d'8 g' d'8. \break | % 6

      d'8 g' d'8. | d'8 c'' b'8. | a'8 b' g'8. | d'8 c'' b'8. | a'8 b' g'8. \break |

      \repeat volta 2 { g'8 b' b'8. | b'8 d'' d''8. | c''8 d''8 b'8. | a'8 b' g'8. } \break

      \key g \minor \repeat volta 2 { d'8 d'' d''8. | d'8 c'' c''8. | d'8 bes' bes'8. | a'8 g' g' g'16 | g'4 ~ g'8. } \break |

      \repeat volta 2 { a'8 a' a' c''16 | bes'4 ~ bes'8. | a'8 g' g' g'16 |}
      \alternative { {  g'4 ( ~ g'8 f'16 )  | } { g'4~\tempo "   Fine" g'8. | \bar "|."} }


    }

    \addlyrics {
      Си -- ла жи
      -- ва, Си -- ла жи -- ва, ка -- жи ми, ка -- жи
      ми де во -- да из -- ви -- ра, де во -- да из
      -- ви -- ра. Из -- ви -- ра, из -- ви -- ра, де
      во -- да из -- ви -- ра. Ка -- жи ми, ка -- жи
      ми, ка -- жи ми слад -- ки ду -- ми две. Твой --
      те ду -- ми две, слад -- ки ду -- ми две.
      две.}

      \addlyrics {
        Si -- la zhi --
        va, Si -- la zhi -- va, ka -- zhi mi, ka -- zhi mi de vo -- da
        iz -- vi -- ra, de vo -- da iz -- vi -- ra. Iz -- vi -- ra, iz
        -- vi -- ra, de vo -- da iz -- vi -- ra. Ka -- zhi mi, ka --
        zhi mi, ka -- zhi mi slad -- ki du -- mi dve. Tvoy -- te du --
        mi dve, slad -- ki du -- mi dve. dve.}

        \header {
          title = \titleFunc "Сила жива" "Sila ziva"
        }

        \midi{}

      } % score

       \markup \italic \dc-one-nobold "(По желание песента се изпълнява два пъти/Nach Wunsch wird das Lied zwei Mal gesungen.)"
      \markup \italic \dc-one-nobold "attacca „Скръбта си ти кажи“„Teile mir deine Trauer mit“"
      
 \markup \empty-two
      

      % include foreign translation(s) of the song
      \include "lyrics_de/076_2_sila_zhiva_lyrics_de.ly"

    } % bookpart
