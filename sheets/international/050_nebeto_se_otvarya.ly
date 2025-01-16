\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces050" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -7.8 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.5 )
    2
  }
}

\bookpart {
  \label #'ref050
  \tocItem \markup "Небето се отваря – Nebeto se otvarja"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 4 g'4 | e'2 f'4 | g'2 g'4 | a'2. | g'2 g'4 | c''2 d''4 | e''2 d''4 |
      d''2. | c''2 g'4 | \break \repeat volta 2 {
        e''2 e''4 | d''2 cis''4 | d''2. |
        a'2 c''?4 | b'2 b'4 | \stemUp b'4 ( a'4 ) b'4 \stemNeutral | d''2. |
      } \alternative {
        { c''2 g'4 | }
        { c''2  s4 }
      } \bar "|."
    }

    \addlyrics {
      \set stanza = "1." Не -- бе -- то се от -- ва -- ря и ан -- ге -- ли -- те
      пе -- ят. И мол -- ни -- и блес -- тя --
      щи тъ -- ми и здрач пи -- ле -- ят. И ят.
    }

    \addlyrics {
      \set stanza = "1." Ne -- be -- to se ot -- va -- rja i an -- ge -- li -- te
      pe -- jat. I mol -- ni -- i bles -- tja --
      šti tă -- mi i zdrač pi -- le -- jat. I jat.
    }

    \header {
      title = \titleFunc "Небето се отваря" "Nebeto se otvarja"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {
        \vspace #1
        \line {
          \bold "2."
          \column {
            "Христос отгоре слиза"
            "във Своята държава"
            "с могъщество и сила,"
            "във всичката Си слава."
          }\"rightBraces050"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Елате, братя, всички,"
            "облечени във бяло,"
            "да Го посрещнем с радост,"
            "тържествено и славно."
          }\"rightBraces050"
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "Той иде на земята"
            "безкрайно да царува,"
            "живот във Истината"
            "на всички да дарува."
          }\"rightBraces050"
        }
        \vspace #1
        \line {
          \bold "5."
          \column {
            "Благословено царство"
            "на Бога Триединний"
            "от сега и до века,"
            "през всичките години."
          }\"rightBraces050"
        }
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses
        \vspace #1
        \line {
          \bold "2."
          \column {
            "Hristos otgore sliza"
            "văv Svojata dăržava"
            "s mogăštestvo i sila,"
            "văv vsičkata Si slava."
          }\"rightBraces050"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Elate, bratja, vsički,"
            "oblečeni văv bjalo,"
            "da Go posreštnem s radost,"
            "tăržestveno i slavno."
          }\"rightBraces050"
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "Toj ide na zemjata"
            "bezkrajno da caruva,"
            "život văv Istinata"
            "na vsički da daruva."
          }\"rightBraces050"
        }
        \vspace #1
        \line {
          \bold "5."
          \column {
            "Blagosloveno carstvo"
            "na Boga Triedinnij"
            "ot sega i do veka,"
            "prez vsičkite godini."
          }\"rightBraces050"
        }
      }\hspace #0.1
    }
  }

  \markup \vspace #1

  % include foreign translation(s) of the song
  \include "../../lyrics/de/050_nebeto_se_otvarya_lyrics_de.ly"

} % bookpart
