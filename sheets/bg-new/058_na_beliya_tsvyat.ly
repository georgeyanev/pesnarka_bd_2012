\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces058" = \markup {
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
  \label #'ref058
  \tocItem \markup "На белия цвят"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #39
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 2/4
      \tempoFunc "Vivo" 4 "104"

      \autoBeamOff
      \partial 8

      e'8 | a'8  b'8 c''8 d''8 | e''4 c''4 | a'4. a'8 | d''4 e''4 | f''4 d''4 | e''8 ([ d''8 e''8 f''8 ]) | \break
      e''4. d''8 \repeat volta 2 {
        | d''4 d''4 |  c''4 b'4 |  c''4 d''4 |  e''4. c''8 |  b'4 d''4 | c''4 b'4 | \break
        a'4 ( gis'8 [b'8]) |
      } \alternative { { a'4 r8 d''8 } {  a'4 r4 } }
      \repeat volta 2 {
        | g'4 g'4 | c''4 d''4 | e''4 f''4 | g''2\break
        | g''4 a''4 |  g''4 f''4 |  e''4 d''4 |  c''2 | a'4 a'4 | a'4 b'4 | c''4 ( d''4 ) | \break
        e''2 | b'4 d''4| c''4 b'4 |
      } \alternative { { a'2 | g'2  }  {   a'4 (gis'8[b'8])  | a'4. \bar "|." \break } }
    }

    \addlyrics {
      \set stanza = "1. "  На -- го -- ре о -- ще да вър -- вим, към вър -- хо -- ве -- те бе --
      ли, е -- фи -- ра бял да поз -- дра -- вим и снеж -- ни -- те крис --
      та -- ли, е -- ли. Ху -- бост -- та на Бо -- жи свят,
      бе -- ли -- на -- та, наш е цвят;  веч -- на си -- ла и --
      ма, мрак я не об -- зи -- ма. зи -- ма.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "На белия цвят" "Na belija cvjat"
    }

    \midi{}

  } % score


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "Нагоре още! Там цъфти"
            "алпийска роза бяла,"
            "зората белите лъчи"
            "в таз роза е изляла"
          }\"rightBraces058"
        }

        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
        \vspace #0.5
        \line {
          \bold "3."
          \column {
            "Нагоре! Бяло слънце днес"
            "от изток ще изгрее  –"
            "емблема жива на онез,"
            "в които Бог живее."
          }\"rightBraces058"
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "4."
          \column {
            "Нагоре – в тази белина!"
            "Тя всъде ще изпълни"
            "и гибелната тъмнина"
            "в бял ден ще се превърне."
          }\"rightBraces058"
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
        % adds vertical spacing between verses
        \vspace #0.5
        \line {
          \bold "5."
          \column {
            "Земята ще разхубавим,"
            "на рай ще я направим;"
            "небето ще развеселим"
            "и Бога ще прославим."
          }\"rightBraces058"
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
      }\hspace #0.1
    }
  }


} % bookpart
