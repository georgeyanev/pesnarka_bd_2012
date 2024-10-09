\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces025" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -4.5 )
    \right-brace #48
  }
  \column {
    % repeat numbers
    \translate #'(0 . -5.2 )
    2
  }
}


\bookpart {
  \label #'ref025
  \tocItem \markup "Събуди се, братко мили"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 5/4
      \tempoFunc "Moderato" 4 "60"
      \autoBeamOff

      \partial 4
      d'8 d'8 | \slurDown g'4(bes'4) \slurNeutral a'4 g'4 fis'4 | \time 3/4 a'4 d'2 | \time 6/4 \break
      d''4 es''4 d''4 cis''4 d''4 es''4 | \time 3/4 d''2 c''?8 c''8 | \time 4/4 bes'4 a'4 bes'4 c''4 \break
      d''4 a'2 c''8 c''8 | \time 6/4 bes'4 a'4 g'4 fis'4 g'2 | \time 3/4 \break
      \repeat volta 2 {
        \bar ".|:-||"

        \tempoFunc "Più mosso " 2. "60"
        d''2 es''4 | d''2 cis''4| d''2  a'4 | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | \break
        g'2 a'4 | bes'2. | bes'2 a'4 | bes'2 a'4 | bes'2 a'4| \break
        g'2 fis'4 | g'2 a'4 | bes'2 a'4 | g'2 fis'4 |
      }
      \alternative {
        {
          g'2.|
        }   {
          g'2 \bar "|."
        }
      }

    }

    \addlyrics {
      \set stanza = "1." Съ -- бу -- ди -- се, брат -- ко ми -- ли,
      от дъл -- бок сън ти ста -- ни и ве -- ри -- ги -- те ве --
      ков -- ни от но -- зе -- те си сне -- ми!
      Лю -- бов -- та е тво -- я май -- ка, тво -- я си -- ла,
      твой пи -- лот: тя ще те из -- пра -- ви
      креп -- ко, тя ще ти да -- ри жи -- вот. вот.
    }

    \header {
      title = \titleFunc #'ref_desc_3 "Събуди се, братко мили" "Săbudi se, bratko mili"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "Напусни затвори тъмни,"
            "вън е вредом светлина,"
            "мир и радост те очакват"
            "и блажена сетнина."
          }
        }
        \vspace #1
        \line{ \italic"    Припев:"}
        \line {
          "   "
          \column {
            "Любовта е твой учител,"
            "живо Слово да ще ти"
            "на добро ще те научи,"
            "в Мъдрост ще те посвети."
          }\"rightBraces025"
        }
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "3."
          \column {
            "И на брата си продумай"
            "сладка дума с подтик нов;"
            "ти сърцето му да стоплиш"
            "с твойта искрена любов."
          }
        }
        % adds vertical spacing between verses
        \vspace #1
        \line{ \italic"    Припев:"}
        \line {
          "   "
          \column {
            "Любовта е твой спасител,"
            "нея в помощ призови:"
            "тя душата ти от гнета"
            "скоро ще освободи."
          } \"rightBraces025"
        }
      }\hspace #0.1
    }
  }


} % bookpart
