\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018a" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8.1 )
    \right-brace #22

  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.9 )
    2
  }
}

"rightBraces018b" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -4.4 )
    \right-brace #48

  }
  \column {
    % repeat numbers
    \translate #'(0 . -5.2 )
    2
  }
}

"rightBraces018c" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.7 )
    \right-brace #22

  }
  \column {
    % repeat numbers
    \translate #'(0 . -11.2 )
    2
  }
}

\bookpart {
  \label #'ref018
  \tocItem \markup "Излязъл е сеяч"
 
  \paper {
      print-first-page-number = ##t
   print-all-headers = ##t
      print-page-number = ##t
      first-page-number = #4
      bookpart-level-page-numbering = ##t
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
  #'((basic-distance . 16)
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 12))
}
 
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "144"

      \partial 4 g'4| e''2 d''4| c''2 b'4|d''2 c''4| b'2. (|a'2.) g'2. (| \break

      g'4 ) r4 g'4 | a'2 a'4 | b'2 b'4 | c''2 d''4 | e''2.~ e''4 r4 e'' | \break

      \repeat volta 2 {
        g''2 f''4 | e''2 d''4 | d''2 c''4 | e''2.| d''2. ( |d''4) r4 g'4| a'2 g'4| \break

        c''2 b'4 |
      }
      \alternative {
        {  c''2 d''4| e''2. (| e''4 ) r4  e''4| }
        { e''2 d''4 | c''2. (| c''4 )  r4 g'4  |  \break }
      }

      \repeat volta 2 {
        \tempoFunc "Più mosso" 4 "184"
        \bar ".|:-||" c''2 c''4 | c''4 ( b'4 ) c''4 | d''2 c''4 | b'2. (| b'4 ) r4 b'4 | a'2 a'4 | \break
        a'4 ( g'4 ) a'4 | b'2 a'4 | g'2. ( | g'4 ) r4 a'4 | a'2 a'4 | c''4 ( b'4) a'4 | a'2 e'4 |  \break
      }
      \alternative {
        {  f'2. (|  f'4 )  r4 f'4 | f'2 f'4 | f'4 ( e'4 ) f'4 | g'2 f'4 |e'2. (| e'4 ) r4 g'4   \break }
        {
          f'2. (|  f'4 ) r4 g'4 | g'2 g'4 | a'2
          % \override Score.RehearsalMark.outside-staff-priority = #99
          \override Score.MetronomeMark.outside-staff-priority = #99
          \tempo"rit."  % places rit. below alternative bracket
          a'4 | b'2 b'4 | c''2. ~ | c''2  \bar "|."
        }
      }
    }

    \addlyrics {
      \set stanza = "1. " Из -- ля -- зъл е се -- яч да се -- е __
      пре -- крас -- но бла -- "го  –" нов жи -- вот. __ И
      се -- е той, и ти -- хо пе -- е __ пред все -- ки
      дом и все -- ки род, __  и все -- ки род: __ Без --
      це -- нен дар __ е Лю -- бов -- та, __ кра --  си -- во
      чув -- "ство  –" о -- бич -- та __  и бла -- го де -- "ло  –" ми -- лост --
      та, __  о -- би -- лен из -- "вор  –" Мъд -- рост -- та. __ Без --
      та  __  о -- би -- лен из -- "вор  –" Мъд -- рост -- та. __
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Излязъл е сеяч" "Izljazăl e sejač"
    }

    \midi{}

  } % score



  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "И който чуе, в миг потръпва"
            "от тоя благ и мил напев;"
            "и просиява, и възкръсва,"
            "и благославя тоз посев."
          }  \"rightBraces018a"
        }

        \vspace #1.1
        \line{ \italic"    Припев:"}
        %\vspace #0.3
        \line {
          "   "
          \column {
            "Безценен дар е Любовта,"
            "красиво чувство – обичта"
            "и благо дело – милостта,"
            "обилен извор – Мъдростта."
          } \"rightBraces018b"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Любов вселената облива,"
            "от обич грее всяка твар;"
            "живот в живота се прелива,"
            "тук няма вече млад и стар."
          } \"rightBraces018a"
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
      }
    }
  }

} % bookpart
