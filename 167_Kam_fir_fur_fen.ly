\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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

      bes4 a2 g8. a16| \time 3/4 bes2 a8. g16 | g4 g2| \break
    }

    \addlyrics {
      Фир -- фюр --
      фен Тао би ау -- мен. Фир -- фюр --
      фен Тао би ау -- мен. Фир -- фюр --
      фен Тао би ау -- мен. Фир -- фюр --
      фен Тао би ау -- мен. Фир -- фюр --
      фен Тао би ау -- мен.}
      \addlyrics {
        Fir -- fyur --
        fen Tao bi au -- men. Fir -- fyur --
        fen Tao bi au -- men. Fir -- fyur --
        fen Tao bi au -- men. Fir -- fyur --
        fen Tao bi au -- men. Fir -- fyur --
        fen Tao bi au -- men.}

        \header {
          title = \titleFunc "Към Фир фюр фен" "Kam Fir fyur fen"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      %\include "lyrics_de/167_2_kazhi_mi_svetli_bozhi_lach_lyrics_de.ly"

    } % bookpart


