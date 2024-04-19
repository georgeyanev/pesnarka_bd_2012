\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref020
  \tocItem \markup "Братство, единство – Bratstvo, edinstvo"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff

      d'4 g'8 a'8 | b'4 e''4 | d''8 d''8 e''8 c''8 | b'2| d''4 c''8 b'8 |
      a'4 a'8 b'8 | \break c''8 c''8 b'8  a'8| b'2 | e''4 c''8 e''8 | d''4 b'8 c''8 |
      d''8 d''8 d''8 e''8 | \break d''2 | a'4 a'4 | a'4 a'4 | a'4 b'8 a'8 | g'2 |
      d'4 d'4 | d'4 d'4 | \break d'4 c''8 b'8 | a'2 \repeat volta 2 {
        b'4 b'4 | b'4 b'4 |
        b'4 e''8 d''8 | c''2 | c''4 c''4| \break c''4 c''4| b'4 d''8 b'8 |a'2 |
        a'4 b'8 a'8 | g'2|
      }
      \alternative {
        { d'4 e'8 d'8 | d'2 | \break d'4 c''8 b'8| a'2 }
        {
          \time 4/4
          \tempoFunc "Meno mosso" 4 "92"
          d'2 e'4 d'4 | b'1 | \tempo "rit." a'2 b'4 a'4 | g'1| \bar "|." \break
        }
      }
    }

    \addlyrics {
      Брат -- ство, е -- дин -- ство ни -- е ис -- ка -- ме,
      зо -- ва на Лю -- бов -- та ни -- е пус -- ка -- ме, ми -- ра на ра -- дост -- та
      ни -- е ви -- ка -- ме: благ жи -- вот в~нас да вли -- ва -- ме,
      благ жи -- вот в~нас да вли -- ва -- ме, благ жи -- вот в~нас
      да вли -- ва -- ме, благ жи -- вот в~нас да вли -- ва -- ме,
      да вли -- ва -- ме, да вли -- ва -- ме, да вли -- ва -- ме,
      да вли -- ва -- ме, да вли -- ва -- ме.
    }

    \addlyrics {
      Brat -- stvo, e -- din -- stvo ni -- e is -- ka -- me,
      zo -- va na Lju -- bov -- ta ni -- e pus -- ka -- me, mi -- ra na ra -- dost -- ta
      ni -- e vi -- ka -- me: blag ži -- vot v~nas da vli -- va -- me,
      blag ži -- vot v~nas da vli -- va -- me, blag ži -- vot v~nas
      da vli -- va -- me, blag ži -- vot v~nas da vli -- va -- me,
      da vli -- va -- me, da vli -- va -- me, da vli -- va -- me,
      da vli -- va -- me, da vli -- va -- me.
    }
    \header {
      title = \titleFunc " Братство, единство " "Bratstvo, edinstvo"
    }

    \midi{}

  } % score
  \markup \empty-one
  \markup \dc-two "D.C." "con ripetizione"


  \markup \empty-one
  % include foreign translation(s) of the song
  \include "../../lyrics/de/020_bratstvo_edinstvo_lyrics_de.ly"

} % bookpart
