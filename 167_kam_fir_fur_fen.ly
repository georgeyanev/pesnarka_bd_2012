\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref167
  \tocItem \markup "Към Фир-фюр-фен – Kăm Fir-fjur-fen"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative  c' {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff

      \partial 4 g'8. bes16 | d2 es8. g16 | \time 4/4 d4 d2 es8. d16 | \break

      c2. c8. d16 | bes4 g2 bes8. bes16 | \time 3/4 a2 g8. a16| \time 4/4 \break

      bes4 a2 bes8. g16 | \time 3/4 bes2 g8. a16 | \time 4/4 \break

      bes4 a2 g8. a16| \time 3/4 bes2 a8. g16 | g4 g2| \bar ".|:-|." \break
    }

    \addlyrics {
      Фир -- фюр --
      фен Тао -- би ау -- мен. Фир -- фюр --
      фен Тао -- би ау -- мен. Фир -- фюр --
      фен Тао -- би ау -- мен. Фир -- фюр --
      фен Тао -- би ау -- мен. Фир -- фюр --
      фен Тао -- би ау -- мен.}
     \addlyrics {
      Fir -- fjur --
      fen Tao -- bi au -- men. Fir -- fjur --
      fen Tao -- bi au -- men. Fir -- fjur --
      fen Tao -- bi au -- men. Fir -- fjur --
      fen Tao -- bi au -- men. Fir -- fjur --
      fen Tao -- bi au -- men.}

        \header {
          title = \titleFunc "Към Фир-фюр-фен" "Kăm Fir-fjur-fen  – Zu Fir-fjur-fen"
        }

        \midi{}

      } % score



    

    } % bookpart


