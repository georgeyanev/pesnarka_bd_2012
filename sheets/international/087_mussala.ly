\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref087
  \tocItem \markup "Мусала – Musala"

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
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 19)
       (minimum-distance . 8)
       (padding . 2)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
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

      лъч на Слън -- це -- то вдъх -- на -- ли ли сте ле -- кий дъх на Му -- са -- ла,

      Му -- са -- ла, Му -- са -- ла, Му -- са -- ла, на Му -- са -- ла! При ла!
    }
    \addlyrics {
      E -- din si ti, __ moj Mu -- sa -- la, sve -- šte -- no

      mjas -- to, Bo -- ži vrăh.  Moj Mu -- sa -- la, Mu -- sa -- la,

      Mu -- sa -- la, Mu -- sa -- la, moj Mu -- sa -- la.

      Prez ja -- sen den na pro -- let -- ta vi -- de -- li

      li ste iz -- gre -- va ot Mu -- sa -- la,    Mu -- sa -- la,

      Mu -- sa -- la,  Mu -- sa -- la,  ot Mu -- sa -- la! Pri păr -- vi

      lăč na Slăn -- ce -- to vdăh -- na -- li li ste le -- kij dăh na Mu -- sa -- la,

      Mu -- sa -- la, Mu -- sa -- la, Mu -- sa -- la, na Mu -- sa -- la! Pri la!
    }

    \header {
      title = \titleFunc "Мусала" "Musala"
    }

    \midi{}

  } % score


  \markup \vspace #3


  % include foreign translation(s) of the song
  \include "../../lyrics/de/087_mussala_lyrics_de.ly"

} % bookpart
