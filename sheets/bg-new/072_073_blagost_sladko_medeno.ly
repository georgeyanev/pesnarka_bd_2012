\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref072
  \tocItem \markup "Благост"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #55
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {

      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andante" 4 "60/63"
      \autoBeamOff
      c'8 g c' g c' g | b8 g b g b g \break |

      \time 4/4  g8 g a [( b )] c'2 |g8 g a [( b )] c'2 | g8 g a [( b )]  \tempo"   Fine"c'2    \break |

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
      си свет -- ли -- на -- та, свет -- ли -- на -- та,
      свет -- ли -- на -- та. Ра -- дост но -- си за
      жи -- во -- та, ра -- дост но -- си за жи -- во
      -- та, ра -- дост но -- си за жи -- во -- та, за
      жи -- во -- та тя, за жи -- во -- та тя, за жи
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
      title = \titleFunc #'ref_desc_5 "Благост" "Blagost"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C. al Fine"

  \markup \vspace #4
  \label #'ref073
  \tocItem \markup "Сладко, медено"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Allegretto" 4 "104"
      \autoBeamOff

      d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2  \bar ":|.:"  |
      a'8 a' a'4 | \break  b'8 b' b'4 | d''8 c'' b' a' | \tempo "                 Fine" g'2  \bar ":|.:" |
      d''4 g'' | fis''4 e'' | \break
      e''4 fis''8 e'' | d''2  |
      <<
        {

          b'4 d'' | c''4 b' |
        }

        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 5.5)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1.5
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        { b'4^\markup { \large \italic "ossia по М. Тодорова" } c'' | b'4 a' | }
      >>



      a'4 b'8 a' | g'2
      \bar ":|."
    }

    \addlyrics {
      Слад -- ко,
      ме -- де -- но, слад -- ко, ме -- де -- но, ме --
      де -- но, ме -- де -- но, слад -- ко, ме -- де --
      но. От слън -- це -- то из -- пра -- те -- но,
      от пче -- ли -- те до -- не -- се -- но.
    }

    \header {
      title = \titleFunc #'ref_desc_13 "Сладко, медено" "Sladko, medeno"
    }

    \midi{}

  } % score
  \markup \dc-two "D.C. al Fine" "con ripetizioni"


} % bookpart
