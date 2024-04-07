\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref074
  \tocItem \markup "Блага дума"
  \include "include/bookpart-paper.ily"
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller


      \context {
        \Score
        \omit BarNumber %remove bar numbers
        \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
        \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol.staff-space = #(magstep -3)
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((minimum-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout

    \new Staff = main \absolute {
      \clef treble
      \key g \major
      \time 5/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

      <<
        { d'8 d'8 g'8 g' g' a' b'4 b' | }
        \new RhythmicStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 4.2)
             (padding . -20))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1
          \override StaffSymbol.staff-space = #(magstep -4)
          \override StaffSymbol.thickness = #(magstep -4)
          firstClef = ##f
        }
        {
          \autoBeamOff  d'8.^\markup { \huge \italic "ossia по К. Икономов"}

          d'16 g'8. g'16 g'8. a'16 b'4 b'4 |
        }
      >>

      d''8 c''8 c''8 b' c'' b' a'4 a' \break |

      \time 6/4  b'8. b'16 b'4 b' c''8. c''16 c''4 c'' | d''8 c''8 b'8 a' b' a' g'4 g'2 \break |

      \time 5/4  e''8 d''8 c''8 b' d'' c'' b'4 b' | c''8 b'8 a'8 g' a' b' c''4 c'' \break |

      \time 6/4  d''8. c''16 d''4 b' b'8. c''16 d''4 d'' | d''8 c''8 b'8 a' b' a' g'4 g'2 \break |

      \time 5/4  b'8 a'8 g'8 fis' g' e' d'4 d' | g'8 g'8 a'8 a' b' b' b'4 b' \break |

      \time 6/4  c''8. c''16 c''4 c'' d''8. d''16 d''4 d'' | d''8 c''8 b'8 a' b' a' g'4 g'2 \break |

      \time 5/4  c''8 e'8 e'8 d' d' d' d'4 d' | d'8 d'8 e'8 fis' g' a' g'4 g' | \break

      \time 6/4  a'8. a'16 a'4 a' b'8. b'16 b'4 b' | c''8 b'8 a'8 g' b' a' g'4 g'2 \break |


      \repeat volta 2 {
        d'8 d'8 c''4. b'8 a'8 g'8 a'4 g' | \time 5/4  fis'8. e'16 fis'8. e'16 fis'8. e'16 e'4 d' \break |

        \time 6/4  e'4 e' fis' fis' g' g' | a'8. a'16 a'8 g' b' a' g'4 g'2 \break |

        \time 5/4  b'8. b'16 b'8 b' b' c'' d''4 d'' | e''8. d''16 c''8 b' d'' c'' b'4 b' \break |

        c''8. b'16 a'8 g' a' b' c''4 c'' | \time 6/4  d''8. c''16 b'8 a' b' a' g'4 g'2 \break |
      }
    }

    \addlyrics {
      Бла -- га ду
      -- ма на ус -- та -- "та      –" туй е "клю-" -- чът на
      сър -- ца -- та, на "сър-" -- ца -- та, на "сър-" --
      ца -- та, туй е "клю-" -- чът на сър -- ца -- та.
      Ми -- ли пог -- лед на о -- чи -- "те –" туй е --
      зик е на ду -- ши -- те, на "ду-" -- ши -- те, на
      "ду-" -- ши -- те, туй е -- зик е на ду -- ши --
      те. Неж -- но "чув-" -- ство про -- я -- ве -- но,
      вся -- ко зло е раз -- то -- пе -- но, раз -- "то-"
      -- пе -- но, раз -- "то-" -- пе -- но, вся -- ко зло
      е раз -- то -- пе -- но. Сил -- на во -- ля у --
      вен -- ча -- ва вся -- ко де -- ло и про -- я --
      ва, вся -- ко де -- ло, вся -- ко де -- ло, вся
      -- ко де -- ло и про -- я -- ва. "Лю-" -- "бов-" -- та
      със тях "съ-" -- граж -- да тоз "жи-" -- вот, що тук
      се раж -- да, раж -- да, раж -- да, раж -- да,
      тоз "жи-" -- вот, що тук се раж -- да, тоз "жи-" --
      вот, що тук се раж -- да, тоз "жи-" -- вот, що
      тук се раж -- да, тоз "жи-" -- вот, що тук се раж
      -- да, тоз "жи-" -- вот, що тук се раж -- да.
    }

    \header {
      title = \titleFunc #'ref_desc_5 "Блага дума" "Blaga duma"
    }

    \midi{}

  } % score


  \markup \empty-two

  \label #'ref076
  \tocItem \markup "Венир Бенир"

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 3/4
      \tempoFunc "Andante" 4 "58"
      \autoBeamOff

      \partial 4
      d'4 | f'2 g'4 | a'2 a'4 | d''2 c''4 | bes'2 a'8. g'16 \break |

      a'2 g'8. a'16 | bes'2 a'8. e'16 | f'2 e'8. f'16 | g'4 ( a' ) e'8. f'16 |  d'2 f'8. e'16 \break |

      \repeat volta 2 { d'2 e'8. f'16 | g'2 ~ g'8 e' | g'4. f'8 e' [( f' )] |} \alternative { { d'2 f'8. e'16  | } { d'2 \break \bar "|."} }
    }

    \addlyrics {
      Ве -- нир Бе
      -- нир, Би -- хар Бе -- нум Ил -- би -- ют, Ил
      бе -- зут Ом би -- ют. Ил бе -- зут __ Ом би --
      ют. Зун ме -- зун, зун ме -- зун, __ Би -- ном ту
      ме -- то. Зун ме -- то.
    }

    \header {
      title = \titleFunc #'ref_desc_7 "Венир Бенир" "Venir benir"
    }

    \midi{}

  } % score

  \markup \dc-two "D.C." "con ripetizione "




} % bookpart
