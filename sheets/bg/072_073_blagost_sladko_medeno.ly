\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref072
  \tocItem \markup "Благост"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {

      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andante" 4 "60/63"
      \autoBeamOff
      c'8 g c' g c' g | b8 g b g b g \break |

      \time 4/4  g8 g a [( b )] c'2 |g8 g a [( b )] c'2 | g8 g a [( b )] c'2^\markup{ \bold {" " " "Fine} }  \break |

      \bar ".|:-||"
      e'8 d' c' d' e' e' e' e' | g'8 f' e' d' e' d' c' b \break |

      d'8 c' b a a g g g |c'8 c' c' d' e'2 \break |

      d'8 d' d' e' f'2 | g'8 f' e' d' c'2 \break \bar ":|.:"



      c''8 b' a' g' a' g' g' g' |  c''8 b' a' g' a' g' g' g' \break |

      a'8 g' f' e' g'2 | d'8 d' d' e' f'2 | g'8 f' e' d' c'2
      \break |

      \bar ":|.:"
      d''8 c'' b' a' b' a' g' g' | d''8 c'' b' a' b' a' g' g' \break

      a'8 g' f' e' g'2 | d'8 d' d' e' f'2 | g'8 f' e' d' c'2
      \break |

      \bar ":|.:"
      e''8 d'' c'' b' d'' c'' b' a' | e''8 d'' c'' b' d'' c'' b' a' \break |

      b'8 a' g' fis' g'2 | d'8 d' d' e' f'?2 | g'8 f' e' d' c'2   \bar ":|.:"
      \break | % 27
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
    \header {
      title = \titleFunc "Благост" "Blagost"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C. al Fine"

  \markup \empty-two
  \label #'ref073
  \tocItem \markup "Сладко медено"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Allergetto" 4 "104"
      \autoBeamOff


      d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2  \bar ":|.:"   \break |

      a'8 a' a'4 | b'8 b' b'4 | d''8 c'' b' a' | \tempo "                 Fine" g'2  \bar ":|.:"  \break |



      d''4 g'' | fis''4 e'' | e''4 fis''8 e'' | d''2 \break |

      b'4 d'' | c''4 b' | a'4 b'8 a' | g'2
      \bar ":|."
    }

    \addlyrics {
      Слад -- ко,
      ме -- де -- но, слад -- ко, ме -- де -- но, ме --
      де -- но, ме -- де -- но, слад -- ко, ме -- де --
      но. От Слън -- це -- то из -- пра -- те -- но,
      от пче -- ли -- те до -- не -- се -- но.
    }

    \header {
      title = \titleFunc "Сладко медено" "Sladko medeno"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C. al Fine" "con ripetizioni"


} % bookpart