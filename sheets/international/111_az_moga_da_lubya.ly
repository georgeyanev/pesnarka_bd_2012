\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref111
  \tocItem \markup "Мога да любя – Moga da ljubja"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \relative c' {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Andante" 8 "72"
      \autoBeamOff

      \partial 4

      c4 | % 2
      f4 a,8. bes16 | % 3
      c4 c8. c16 | % 4
      f4 ( g8. ) a16 | \break |% 5
      g4 g4 | % 6
      a4 a16 a16 a16  bes16
      % 7
      c4  c4 | \break | % 8
      d4 -> g,8. a16 | % 9
      f4 f4 ~ |
      f4 f8 f8 \repeat volta 2 \relative c {
        | % 11
        f''4.  e8 | \break |% 12
        d4  e4 | % 13
        c2 ~ | % 14
        c4 f,8 f8 | % 15
        f'4.  e8 | \break |% 16
        d4  e4 | % 17
        c2  | % 18
        a4 a8 a8 | % 19
        bes2 | \break |
        g4. g8 | % 21
        c4. (  bes8 ) | % 22
        a4 g4 | % 23
        bes4. e,8  |\break  % 24
        g4 ( a4 ) f2~
      }
      \alternative {
        { f4 f8 f8  | }
        { f2~ f4 }
      }
      \bar "|."
    }
    \addlyrics {
      Аз мо -- га да лю -- бя, до -- бър
      да ста -- на; аз мо -- га да
      о -- би -- чам, си -- лен да ста --
      на. __  Лю -- бов -- та и О -- бич --
      та, __  Лю -- бов -- та и О -- бич --
      та ще ме на -- у -- чат на Бо
      -- га слу -- га да ста -- на. __
      Лю -- бов на. __
    }
    \addlyrics {
      Az mo -- ga da lju -- bja, do -- băr
      da sta -- na; az mo -- ga da
      o -- bi -- čam, si -- len da sta --
      na. __  Lju -- bov -- ta i O -- bič --
      ta, __  Lju -- bov -- ta i O -- bič --
      ta šte me na -- u -- čat na Bo
      -- ga slu -- ga da sta -- na. __
      Lju -- bov na. __
    }

    \header {
      title = \titleFunc "Мога да любя" "Moga da ljubja"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-two "D.C.""con ripetizione"
  %

  % include foreign translation(s) of the song

  \markup \vspace #1
  \include "../../lyrics/de/111_az_moga_da_lyubya_lyrics_de.ly"

} % bookpart
