\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces052" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.5 )
    \right-brace #33
  }
  \column {
    % repeat numbers
    \translate #'(0 . -10 )
    2
  }
}


\bookpart {
  \label #'ref052
  \tocItem \markup "Дързост в Христа"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
      \autoBeamOff
      c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
      g'8 a' bes' c'' | a'4. r8 \bar ".|:"
      | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
      c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8 \bar ":|."
      \break
    }

    \addlyrics {
      \set stanza = "1. " Дър -- зост във Хрис -- та, дру -- га -- ри, с~Не -- го
      да вър -- вим нап -- ред, Той е ца -- рят на жи -- во -- та,
      цар -- ство -- то Му е нав -- ред, е нав -- ред.
    }

    \header {
      title = \titleFunc #'ref_desc_1 "Дързост в Христа" "Dărzost v Hrista"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #12 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "Дързост във Христа, другари,"
            "да вървиме все напред!"
            "Бог Христос ни в пътя води,"
            "Той е мощен цар навред,"
            "     цар навред."
          } \"rightBraces052"
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "И тук, долу, и там, горе,"
            "в мировете без конец,"
            "всъде само Той царува,"
            "Той е скиптър и венец,"
            "     и венец."
          }\"rightBraces052"
        }
        \vspace #1
        \line {
          \bold "4."
          \column {
            "Управлява, благославя –"
            "всичко в Мъдрост да расте,"
            "плодове на правда свята"
            "в жертва да Му принесе,"
            "    принесе."
          }\"rightBraces052"
        }
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "5."
          \column {
            "Ето, днес ни горе викат,"
            "към небето да вървим,"
            "че там радост ни очаква,"
            "нов град да си съградим,"
            "     съградим."
          }\"rightBraces052"
        }
        % adds vertical spacing between verses
        \vspace #1
        \line {
          \bold "6."
          \column {
            "От смъртта се не плашете,"
            "не загива същността,"
            "туй, що смърт зовеме тука,"
            "за небето е врата,"
            "     е врата."
          }\"rightBraces052"
        }
        \vspace #1
        \line {
          \bold "7."
          \column {
            "С радост и хвалебни песни"
            "ще прекрачим нейни праг,"
            "а отвъд Христос ни чака,"
            "все тъй кротък, все тъй благ,"
            "      все тъй благ."
          }\"rightBraces052"
        }
      }\hspace #0.1
    }
  }

  \markup \abs-fontsize #12 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \column {
        \vspace #1
        \line {
          \bold "8."
          \column {
            "И там Той ще ни научи,"
            "тленното как да не тлей,"
            "как с телото си човекът"
            "вечно може да живей,"
            "     да живей."
          }\"rightBraces052"
        }
      }
    }
  }




} % bookpart
