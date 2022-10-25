\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
        
      \partial 4
      d'4 | % 2
      b'4.  a'8  g'4 | % 3
      \time 2/4  | % 3
      fis'8.  e'16  e'4 | % 4
      \time 3/4  | % 4
      d'2 r8  d'8 | % 5
      e'8  fis'8  g'8  a'8
      b'8  d''8 ^\fermata \break | % 6
      c''4.  b'8  a'8  g'8 | % 7
      \time 2/4  | % 7
      b'4  a'4 | % 8
      g'2 ( | % 9
      g'4 ) r4
      \repeat volta 2 {
        \time 4/4
        g''2  fis''4.  g''16 [
        fis''16 ] \break | % 11
        e''4 (  e''8 ) [  e''8
        fis''8  g''8 ]  fis''8 [  e''8 ] | % 12
        d''8. [  c''16 ]  b'4 (  b'8
        ) [  b'8  c''8  d''8 ] | % 13
        e''2  d''4.  c''16 [  b'16
        ] | % 14
        a'4 ~  a'8 -- [  d'8 --  e'8 --
        fis'8 -- ]  g'8 -- [  a'8 -- ] \break |
      }

      \alternative {
        {
          b'8 ->  b'4.  a'4.\prall g'8 --
        }
        {
          b'8  b'4.  a'4.  g'8
          g'2 r4  d'4 \bar "||"
        }
      }
      \time 3/4   b'4.  a'8  g'4 | \time 2/4
      fis'8.  e'16  e'4 \break \time 3/4  d'2 r8
      d'8  e'8  fis'8  g'8  a'8
      b'8  d''8 ^\fermata  c''4.  b'8
      a'8  g'8 \time 2/4  b'4  a'4
      g'2 \bar "|."
    }
    \addlyrics {      Ка -- жи ми Ти Ис -- ти -- на -- та,
      ко -- я -- то но -- си Сво -- бо --
      да за мо -- я -- та ду -- ша.

      \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
      \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
      \skip1 \skip1 \skip1


      Ка -- жи ми Ти Ис -- ти --
      на -- та, ко -- я -- то но -- си Сво
      -- бо -- да за мо -- я -- та ду --
      ша}
    \addlyrics { Ka -- zhi mi Ti Is -- ti -- na -- ta,
      ko -- ya -- to no -- si Svo -- bo --
      da za mo -- ya -- ta du -- sha.

      \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
      \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
      \skip1 \skip1 \skip1


      Ka -- zhi mi Ti Is -- ti --
      na -- ta, ko -- ya -- to no -- si Svo
      -- bo -- da za mo -- ya -- ta du --
      sha.}

    \header {
      title = \titleFunc "Кажи ми ти Истината III" "Kazhi mi ti istinata III"
    }

    \midi{}

  } % score

  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/169_Kazhi_mi_ti_isinata_III_lyrics.de.ly"

} % bookpart

% Più mosso
%
