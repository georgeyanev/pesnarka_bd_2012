\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

       \new Voice \absolute {

      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andante" "4" "60/63"
      \autoBeamOff
      c'8 g c' g c' g | b8 g b g b g \break |

      \time 4/4  g8 g a [( b )] c'2 |g8 g a [( b )] c'2 | g8 g a [( b )] c'2 \break |

      \repeat volta 2 {
        e'8 d' c' d' e' e' e' e' | g'8 f' e' d' e' d' c' b \break |

        d'8 c' b a a g g g |c'8 c' c' d' e'2 \break |

        d'8 d' d' e' f'2 | g'8 f' e' d' c'2 \break
      }

      \repeat volta 2 {
        c''8 b' a' g' a' g' g' g' |  c''8 b' a' g' a' g' g' g' \break |

        a'8 g' f' e' g'2 | d'8 d' d' e' f'2 | g'8 f' e' d' c'2
      }  \break |

      \repeat volta 2 {
        d''8 c'' b' a' b' a' g' g' | d''8 c'' b' a' b' a' g' g' \break

        a'8 g' f' e' g'2 | d'8 d' d' e' f'2 | g'8 f' e' d' c'2
      } \break |


      \repeat volta 2 {
        e''8 d'' c'' b' d'' c'' b' a' | e''8 d'' c'' b' d'' c'' b' a' \break |

        b'8 a' g' fis' g'2 | d'8 d' d' e' f'!2 | g'8 f' e' d' c'2
      } \break | % 27
    }

    \addlyrics {
      Бла -- гост,
      бла -- гост, бла -- гост но -- си, но -- си, но --
      си "Свет-" -- ли -- на -- та, "Свет-" -- ли -- на -- та,
      "Свет-" -- ли -- на -- та. Ра -- дост но -- си за
      Жи -- во -- та, Ра -- дост но -- си за Жи -- во
      -- та, Ра -- дост но -- си за Жи -- во -- та, за
      Жи -- во -- та тя, за Жи -- во -- та тя, за Жи
      -- во -- та тя. Ста -- ри вди -- га, мла -- ди
      вди -- га, ста -- ри вди -- га, мла -- ди вди --
      га от лег -- ло -- то тя, от лег -- ло -- то
      тя, от лег -- ло -- то тя. Бол -- ни мил -- ва,
      здра -- ви рад -- ва, бол -- ни мил -- ва, здра --
      ви рад -- ва, ко -- га и -- де тя, ко -- га и
      -- де тя, ко -- га и -- де тя. И ре -- ки те
      -- кат о -- бил -- но, и цве -- тя цъф -- тят
      кра -- си -- во, ко -- га и -- де тя, ко -- га
      и -- де тя, ко -- га и -- де тя.
    }
    \addlyrics {
      Bla -- gost, bla
      -- gost, bla -- gost no -- si, no -- si, no -- si Svet -- li
      -- na -- ta, Svet -- li -- na -- ta, Svet -- li -- na -- ta.
      Ra -- dost no -- si za zhi -- vo -- ta, ra -- dost no -- si za zhi
      -- vo -- ta, ra -- dost no -- si za zhi -- vo -- ta, za zhi --
      vo -- ta tya, za zhi -- vo -- ta tya, za zhi -- vo -- ta tya.
      Sta -- ri vdi -- ga, mla -- di vdi -- ga, sta -- ri vdi -- ga,
      mla -- di vdi -- ga, ot leg -- lo -- to tya, ot leg -- lo -- to
      tya, ot leg -- lo -- to tya. Bol -- ni mil -- va, zdra -- vi
      rad -- va, Bol -- ni mil -- va, zdra -- vi rad -- va, ko -- ga
      i -- de tya, ko -- ga i -- de tya, ko -- ga i -- de tya. I re
      -- ki te -- kat o -- bil -- no, i tsve -- tya tsaf -- tyat kra --
      si -- vo, ko -- ga i -- de tya, ko -- ga i -- de tya, ko -- ga
      i -- de tya.}
    \header {
      title = \titleFunc "Благост" "Blagost"
    }

    \midi{}

  } % score
  
  \markup \dc-one "D.C. al Fine"

  \markup \empty-two
  % include foreign translation(s) of the song
  \include "lyrics_de/072_blagost_lyrics_de.ly"

} % bookpart
