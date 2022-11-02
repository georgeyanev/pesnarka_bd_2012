\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key bes \minor
      \time 4/4
      \tempoFunc "Andante" 4 "60"

      \autoBeamOff

      \autoBeamOff

      bes4 f'8. f'16 f'2 | \time 5/4  ges'4 f'8. e'16 f'2 des''4 \break |

      c''4 bes'8. a'16 bes'4 ges' f'8. e'16 | \time 3/4  f'2 ees'!4 \break |

      des'8 des' c'4 bes8 a | \time 4/4  c'4 bes8. a16 bes2 \break |

      \repeat volta 2 {
        f'4 bes'8. bes'16 bes'4. bes'8 | \autoBeamOn c''8  ( bes')  a' ( bes' ) c''4 \autoBeamOff bes'8. a'16 \break |

        \time 5/4  | bes'2 ( as'!4 )  ges' f'8. e'16 | \time 3/4  f'2 \times 2/3  {  f'8 [ ( ges' as'8 ) ] } \break |

        \time 4/4  as'4 bes'2  \times 2/3  {  ges'8 ( [ f' es'8 ] ) } | \time 3/4  bes'4 ges'8 ges' f'8. e'16

        f'2 \times 2/3 { c'8 [ ( des' ) ] es'8  } | \break

        f'4 ( es' ) des' | \times 2/3  { c'8 [ ( es' des'8 ) ] } c'4 bes8. a16  | \time 2/4  bes2  \break |

      }
    }

    \addlyrics {
      Бе ня -- ко  -- га, бе ня -- ко -- га,
      ко -- га -- то бе всич -- ко тъм -- ни -- на
      и в~не -- я се по -- я -- ви свет -- ли -- на.
      И свет -- ли -- на -- та о -- чер -- та кра -- со -- та -- та
      на Бо -- же -- стве -- ни -- я жи -- вот,
      кой -- то се все -- ли
      и по -- вдиг -- на мо -- я -- та ду -- ша.
    }

    \addlyrics {
      Be nya -- ko  -- ga, be nya -- ko -- ga,
      ko -- ga -- to be vsich -- ko tam -- ni -- na
      i v~ne -- ya se po -- ya -- vi svet -- li -- na.
      I svet -- li -- na -- ta o -- cher -- ta kra -- so -- ta -- ta
      na Bo -- zhe -- stve -- ni -- ya zhi -- vot,
      koy -- to se vse -- li
      i po -- vdig -- na mo -- ya -- ta du -- sha.
    }


    \header {
      title = \titleFunc "Бершид ба" "Bershid ba"
    }

    \midi{}

  } % score

  %\markup \dc-one "D.C."
  %

  % include foreign translation(s) of the song
  \pageBreak
  \include "lyrics_de/098_bershid_ba_lyrics_de.ly"

} % bookpart
