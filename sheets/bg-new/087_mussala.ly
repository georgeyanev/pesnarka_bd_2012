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


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 14)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \score {
    \include "include/score-layout.ily"

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

      През я -- сен ден на про -- лет -- та ви -- де -- ли

      ли сте из -- гре -- ва от Му -- са -- ла,    Му -- са -- ла,

      Му -- са -- ла,  Му -- са -- ла,  от Му -- са -- ла! При пър -- ви

      лъч на слън -- це -- то вдъх -- на -- ли ли сте ле -- кий дъх на Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!
    }

    \header {
      title = \titleFunc #'ref_desc_15 "Мусала" "Musala"
    }

    \midi{}

  } % score



} % bookpart


