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
  \label #'ref255
  \tocItem \markup "Изгрева свещен"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Allegretto" 4 "104"
      \autoBeamOff
      c8 e g4. e8 | c8 e g2 | d8 e8 f4. d8 | e2. | \break
      c8 e g4 c | b8 a8 g2 | d8 e8 f4. d8| c2.  \break \bar ".|:-|"
      c'8 g c4. d8 | e d a2 | b8 d c4. a8 | g2. | \break
      c8 e8 g4. e8 | a8 g8 d2 | e8 g,8 e'4. d8 | c2. | \bar ":|."
    }

    \addlyrics {
      Зна -- е -- те ли то -- зи край, где -- то -- съм ро -- ден?

      Зна -- е -- те -- ли то -- зи кът, Из -- гре -- ва све -- щен.

      Тоз' Бо -- жест -- вен о -- а -- зис с~рай -- ски -- пло -- до -- ве

      из -- во -- рът ду -- хо -- вен, чист, с~бла -- гост що зо -- ве.}

      \header {
        title = \titleFunc #'ref "Изгрева свещен" "Zaglavie"
      }

      \midi{}

    } % score


    \markup \abs-fontsize #11  \override #`(baseline-skip . ,bgCoupletBaselineSkip){
      \fill-line {
        \hspace #0.1
        \column {
          \line {
            \bold "2."
            \column {
              "Мъдрост, Истина, Любов"
              "тоз Божествен плам,"
              "гдето се явява той,"
              "мир, добро е там. "

            }
          }

          \vspace #1.1
          \line{ \italic"    Припев:"}
          %\vspace #0.3
          \line {
            "   "
            \column {
              "Пътниче, жадуваш ли"
              "мил живот, блажен,"
              "Изгрева обичай ти,"
              "извор благ, свещен!"
            } \"rightBraces018b"
          }

        }\hspace #0.1
      }
    }
  } % bookpart