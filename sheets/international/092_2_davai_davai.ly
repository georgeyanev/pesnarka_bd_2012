\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref092_2
  \tocItem \markup "Давай, давай – Davaj, davaj "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key a \minor
      \time 5/4
      \tempoFunc "Moderato" 4 "60"

      a4 c' e' a'2 |c''4 b' a' e'2 | c''4 c'' c'' c''2 \break |

      b'8 ( c'' ) d''4 b' a'2 | b'4 a' gis' a'2 | f'4 d' e' e'2 \break |

      a'4 b' a' gis'2 | f'4 gis' f' e'2 | a'4 a' f' gis'2 \break |

      f'4 d' e' e'2  \bar ".|:"|

      a'4 a' b'8 ( c'' ) d''2 |  e''4 c'' b' a'2 \break | % 13

      b'4 a' gis' a'2 | f'4 d' e' e'2
      \bar ":|." | gis'4 f' f' gis'2 \break |

      f'4 d' e' e'2 | gis'4 f' f' gis'2 | \tempo "rit." f'4  d' e' e'2 | \bar "|."

    }



    \addlyrics {
      Да -- вай, да  -- вай, всич -- ко да -- вай,

      чис -- то се -- ме пше -- ни -- че -- но.

      Да се се -- е на ни -- ва -- та, на ни -- ва -- та кра -- си -- ва -- та.

      Да се чис -- ти през зи -- ма -- та.

      Да се рад -- ва на жи -- во -- та

      всич -- ко ся -- то на по -- ле -- то,

      на по -- ле -- то от Hе -- бе -- то,

      на по -- ле -- то от Hе -- бе -- то.

    }

    \addlyrics {
      Da -- vaj, da  -- vaj, vsič -- ko da -- vaj,

      čis -- to se -- me pše -- ni -- če -- no.

      Da se se -- e na ni -- va -- ta, na ni -- va -- ta kra -- si -- va -- ta.

      Da se čis -- ti prez zi -- ma -- ta.

      Da se rad -- va na ži -- vo -- ta

      vsič -- ko sja -- to na po -- le -- to,

      na po -- le -- to ot He -- be -- to,

      na po -- le -- to ot He -- be -- to.

    }

    \header {
      title = \titleFunc "Давай, давай "" Davaj, davaj"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-two "D.C.""con ripetizione"

  % include foreign translation(s) of the song
  \include "../../lyrics/de/092_2_datay_davay_lyrics_de.ly"

} % bookpart
