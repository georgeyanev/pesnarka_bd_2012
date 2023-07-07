\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

   \label #'ref215
  \tocItem \markup "Зора на Новия живот – Zora na Novija život"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      r8  d'8  g'8  b'8 | % 2
      d''4.  c''8 | % 3
      \acciaccatura {  b'16 [  c''16 ] }  b'8
      a'8  g'8 ( [  b'8 ) ] | % 4
      a'2 \break | % 5
      r8  d'8  e'8  fis'8 | % 6
      g'4. (  a'32 [  g'32  fis'32  g'32
      ] | % 7
      b'4. )  c''8 | % 8
      a'2 \break | % 9
      r8  d'8  g'8  fis'8 |
      b'8  a'8  d''8  c''8 | % 11
      \acciaccatura {  b'16 [  c''16 ] }  b'8
      a'8  a'8 ( [  b'8 ) ] | % 12
      g'2 \break | % 13
      r8  d'8  d'8  d'8 | % 14
      c''4.  b'8 | % 15
      a'8  g'8  a'16 ( [  g'32  a'32
      b'32  a'32  g'32  a'32 ) ] | % 16
      g'2 \break | % 17
      r8  d'8  d'8  d'8 | % 18
      d''8 ( ^\fermata [  e''16  d''16 ]
      c''16 [  b'16 ) ]  a'16 ( [  g'16 )
      ] | % 19
      b'4. (  c''16 [  b'16 ) ] |
      a'8 ( [ \once \omit TupletBracket
      \times 2/3  {
        b'16  a'16  g'16 ]
      }
      a'8 [  b'8 ) ] | % 21
      g'2 \bar "|."
    }


    \addlyrics {
      Зо -- ра се чуд -- на за --
      зо -- ря -- ва, зо -- ра на нов __
      Жи -- вот, ко --
      я -- то мен в~Жи -- во -- та
      при -- зо -- ва -- ва. Зо --
      ра се чуд -- на за -- зо -- ря --
      ва, зо -- ра на
      но -- ви -- я __
      жи -- вот.}
    \addlyrics {
      Zo -- ra se čud -- na za --
      zo -- rja -- va, zo -- ra na nov __
      Ži -- vot, ko --
      ja -- to men v~Ži -- vo -- ta
      pri -- zo -- va -- va. Zo --
      ra se čud -- na za -- zo -- rja --
      va, zo -- ra na
      no -- vi -- ja __
      ži -- vot.}

    \header {
      title = \titleFunc "Зора на Новия живот" "Zora na Novija život"
    }

    \midi{}

  } % score

  \markup \empty-one
   % include foreign translation(s) of the song
  \include "lyrics_de/215_zora_na_noviya_zhivot_lyrics_de.ly"

} % bookpart

% Più mosso
%
