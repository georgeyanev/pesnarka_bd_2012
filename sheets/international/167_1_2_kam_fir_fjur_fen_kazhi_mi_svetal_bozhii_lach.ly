\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref167
  \tocItem \markup "Към „Фир-фюр-фен“ – Kăm „Fir-fjur-fen“"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative  c' {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Adagio" 4 "56"
      \autoBeamOff

      \partial 4 g'8. bes16 | d2 es8. g16 | \time 4/4 d4 d2 es8. d16 |

      c2. c8. d16 |\break  bes4 g2 bes8. bes16 | \time 3/4 a2 g8. a16| \time 4/4

      bes4 a2 bes8. g16 |\break \time 3/4 bes2 g8. a16 | \time 4/4

      bes4 a2 g8. a16| \time 3/4 bes2 a8. g16 | g4 g2| \bar ".|:-|." \break
    }

    \addlyrics {
      Фир -- фюр --
      фен Тао -- би Aу -- мен. Фир -- фюр --
      фен Тао -- би Aу -- мен. Фир -- фюр --
      фен Тао -- би Aу -- мен. Фир -- фюр --
      фен Тао -- би Aу -- мен. Фир -- фюр --
      фен Тао -- би Aу -- мен.}

      \addlyrics {
        Fir -- fjur --
        fen Tao -- bi Au -- men. Fir -- fjur --
        fen Tao -- bi Au -- men. Fir -- fjur --
        fen Tao -- bi Au -- men. Fir -- fjur --
        fen Tao -- bi Au -- men. Fir -- fjur --
        fen Tao -- bi Au -- men.}

        \header {
          title = \titleFunc "Към „Фир-фюр-фен“ "" Kăm „Fir-fjur-fen“ – Zu Fir-fjur-fen"
        }

        \midi{}

      } % score
      \markup \vspace #2
      \label #'ref167_2
      \tocItem \markup "Кажи ми, светли Божи лъч – Kaži mi, svetli Boži lăč "
      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key g \major
          \time 3/4
          \tempoFunc "Andante" 4 "66"
          \autoBeamOff
          g4  b4  d'4 | % 2
          b'2  a'4 | % 3
          \time 2/4  | % 3
          g'4 (  a'16 [  g'16  fis'16  g'16
          ] | % 4
          a'4. )  fis'8 | % 5
          g'2 \break | % 6
          \time 4/4  | % 6
          c''4.  b'8  b'4  a'4 | % 7
          g'4  g'16 ( [  fis'16  g'16  a'16
          ) ]  g'2 | % 8
          \time 3/4  | % 8
          b'4.  b'8  b'4  | % 9
          \time 4/4  | % 9
          d''2  c''4.  b'8 | \break
          c''8.  b'16  a'8.  gis'16
          a'2 | % 11
          \time 5/4  | % 11
          g'?4  fis'4  e'8.  e'16  e'2| % 12
          d'4  c'4  c'8.  c'16  e'2 | % 13
          d'4  a4  a8.  a16  b2 ^\fermata
          \bar "|."
        }

        \addlyrics {
          Ка -- жи ми, свет -- ли Бо --
          жи лъч, бла -- го -- то
          на жи -- во --   та, свет --
          ли -- я прав път на чис -- ти --
          те "ду-" -- ши, чис -- ти -- те "ду-" --
          ши, чис -- ти -- те ду -- ши, чис --
          ти -- те ду -- ши.}
          \addlyrics {
            Ka -- ži mi, svet -- li Bo --
            ži lăč, bla -- go -- to
            na ži -- vo --   ta, svet --
            li -- ja prav păt na čis -- ti --
            te "du-" -- ši, čis -- ti -- te "du-" --
            ši, čis -- ti -- te du -- ši, čis --
            ti -- te du -- ši.
          }

          \header {
            title = \titleFunc "Кажи ми, светли Божи лъч "" Kaži mi, svetli Boži lăč"
          }

          \midi{}

        } % score

        \markup \vspace #2
        % include foreign translation(s) of the song
        \include "../../lyrics/de/167_2_kazhi_mi_svetli_bozhi_lach_lyrics_de.ly"

      } % bookpart

      % Più mosso
      %
