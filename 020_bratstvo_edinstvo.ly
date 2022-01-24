\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Tempo di marcia" "4" "100"
      \autoBeamOff

      d'4 g'8 a'8 | b'4 e''4 | d''8 d''8 e''8 c''8 | b'2| d''4 c''8 b'8 | \break
      a'4 a'8 b'8 | c''8 c''8 b'8  a'8| b'2 | e''4 c''8 e''8 | d''4 b'8 c''8 | \break
      d''8 d''8 d''8 e''8 | d''2 | a'4 a'4 | a'4 a'4 | a'4 b'8 a'8 | g'2 | \break
      d'4 d'4 | d'4 d'4 | d'4 c''8 b'8 | a'2 \repeat volta 2 {
        b'4 b'4 | b'4 b'4 | \break
        b'4 e''8 d''8 | c''2 | c''4 c''4|c''4 c''4| b'4 d''8 b'8 |a'2 |\break
        a'4 b'8 a'8 | g'2|
      }
      \alternative {
        { d'4 e'8 d'8 | d'2 | d'4 c''8 b'8| a'2 }
        {
          \time 4/4 \break
          \override Score.MetronomeMark #'outside-staff-priority = #599
          \override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
          \tempoFunc "Meno mosso" "4" "92"
          d'2 e'4 d'4 | b'1 | \tempo "rit." a'2 b'4 a'4 | g'1| \bar "|." \break
        }
      }
    }

    \addlyrics {
      Брат -- ство, е -- дин -- ство ни -- е ис -- ка -- ме,
      зо -- ва на Лю -- бов -- та ни -- е пус -- ка -- ме, ми -- ра на Ра -- дост -- та
      ни -- е ви -- ка -- ме: благ Жи -- вот в~нас да вли -- ва -- ме,
      благ Жи -- вот в~нас да вли -- ва -- ме, благ Жи -- вот в~нас
      да вли -- ва -- ме, благ Жи -- вот в~нас да вли -- ва -- ме,
      да вли -- ва -- ме, да вли -- ва -- ме, да вли -- ва -- ме,
      да вли -- ва -- ме, да вли -- ва -- ме.
    }

    \addlyrics {
      Brat -- stvo, e -- din -- stvo ni -- e is -- ka -- me,
      zo -- va na Lyu -- bov -- ta ni -- e pus -- ka -- me, mi -- ra na Ra -- dost -- ta
      ni -- e vi -- ka -- me: blag Zhi -- vot v~nas da vli -- va -- me,
      blag Zhi -- vot v~nas da vli -- va -- me, blag Zhi -- vot v~nas
      da vli -- va -- me, blag Zhi -- vot v~nas da vli -- va -- me,
      da vli -- va -- me, da vli -- va -- me, da vli -- va -- me,
      da vli -- va -- me, da vli -- va -- me.
    }
    \header {
      title = \titleFunc " Братство, единство " "Bratstvo, edinstvo"
    }

    \midi{}

  } % score
  \markup \dc-one "D.C."
  \markup \dc-one "con repetitione"
  \markup \empty-three

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/020_bratstvo_edinstvo_lyrics_de.ly"

} % bookpart
