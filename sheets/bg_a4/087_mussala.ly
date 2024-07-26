\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref087
  \tocItem \markup "Мусала"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

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
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andantino" 4 "69"

      c'4 e'4 g'4 | c''2 ( d''16 c'' b' c'' ) |  d''4 c''4 a'4 | g'2 g'4 |

      d''2 c''4  | \break

      b'4 ( a'4 ) g'4 | a'2 g'4 | c''2.| \time 6/4 e'2 d'4. c'8 g'2 |

      \time 4/4 c'4 e'4  g'2  | \break

      e'4 g'4 c''2 |

      \time 6/4 b'4 ( d''4 ) c''4 ( a'4 ) g'2 \tempo "rit." |

      \time 4/4 e'2 d'4. c'8 | \break

      \time 3/4 c'2 \tempoFunc "Poco più mosso" 4 "76" g'4  | \bar "||"

      \time 3/4



      g'8 ( fis'8 g'8 a'8 ) g'4 |

      c''2 d''4 | \time 2/4 c''4 a'4 |\time 3/4 g'2 g'4 | d''2 e''4 | \break

      \time 4/4 d''4 c'' c'' b' |

      \time 6/4 c''4 a' g' fis' g'2 \fermata |

      \time 4/4 c'4 e'4 g'2 | \break

      e'4 g'4 c''2  | \tempo "        rit." b'4 ( d''4 ) c''4 ( a'4 ) |

      \time 3/4 g'2 e'4 |

      g'4 ( f'4 ) d'4 | \break

      c'2\fermata

      \tempoFunc "Più mosso" 2. "58"

      e'4 | \repeat volta 2 {
        g'2 g'4 | a'2 e'4 | g'2 f'4 f'2 d''4 |\break

        d''2 c''4 | b'2 a'4 | a'2 g'4 | g'2 e'4 | g'2 f'4 | e'2.\fermata \breathe \bar "||" \break

        \tempoFunc "Moderato" 4 "80"

        c'2 e'4 |  g'2. \breathe |

        e'2 g'4 | c''2. \breathe | \time 4/4 \tempo "        rit." b'4 ( d''4 ) c''4 ( a'4 ) \break

        \time 3/4 g'2 e'4 | g'4 ( f'4 ) d'4
      } \alternative { { c'2  \breathe e'4 } {c'2. } } \bar "|."

    }



    \addlyrics {
      Е -- дин си ти, __ мой Му -- са -- ла, све -- ще -- но

      мяс -- то, Бо -- жи връх.  Мой Му -- са -- ла, Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, мой Му -- са -- ла.

      През я -- сен ден на "про-" -- лет -- та ви -- де -- ли

      ли сте из -- гре -- ва от Му -- са -- ла,    Му -- са -- ла,

      Му -- са -- ла,  Му -- са -- ла,  от Му -- са -- ла! При пър -- ви

      лъч на Слън -- це -- то вдъх -- на -- ли ли сте ле -- кий дъх на Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!
    }

    \header {
      title = \titleFunc #'ref_desc_10 "Мусала" "Musala"
    }

    \midi{}

  } % score



} % bookpart


