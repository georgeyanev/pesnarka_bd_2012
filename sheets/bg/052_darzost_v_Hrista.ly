\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"


"rightBraces052_1" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -6.7 )
    \right-brace #30

    \translate #'(0 . -11.7 )
    \right-brace #30

    \translate #'(0 . -11.4 )
    \right-brace #30

    \translate #'(0 . -11.2 )
    \right-brace #30

  }
  \column {
    % repeat numbers
    \translate #'(0 . -7.2 )
    2

    \translate #'(0 . -14.8 )
    2

    \translate #'(0 . -14.6 )
    2

    \translate #'(0 . -14.2)
    2



  }
}

"rightBraces052_2" = \markup {
  \column {
    % repeat braces


    \translate #'(0 . -6.7 )
    \right-brace #30

    \translate #'(0 . -11.7 )
    \right-brace #30

    \translate #'(0 . -11.4 )
    \right-brace #30


  }
  \column {
    % repeat numbers

    \translate #'(0 . -7.2 )
    2

    \translate #'(0 . -14.8 )
    2

    \translate #'(0 . -14.6 )
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
      "1. Дър" -- зост във Хри -- ста, дру -- га -- ри, с~Не -- го
      да вър -- вим на -- пред, Той е ца -- рят на Жи -- во -- та,
      цар -- ство -- то Му е на -- вред, е на -- вред.
    }

    \header {
      title = \titleFunc "Дързост в Христа" "Dărzost v Hrista"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line {   2.  Дързост във Христа, другари,}

      \line {   "   " да вървиме все напред!}

      \line {   "   " Бог-Христос ни в пътя води,}

      \line {   "   " Той е мощен цар навред,}

      \line {   "               " цар навред.}
      \line {   "   "}

      \line {   3.  И тук долу, и там горе, }

      \line {   "   " в мировете без конец, }

      \line {   "   " всъде само Той царува, }

      \line {   "   " Той е скиптър и венец, }

      \line {   "                 " и венец. }
      \line {   "   "}
      \line {   4.  Управлява, благославя – }

      \line {   "   " всичко в Мъдрост да расте, }

      \line {   "   " плодове на Правда свята }

      \line {   "   " в жертва да Му принесе, }

      \line {   "              " принесе. }

      \line {   "   "}


      \line {   5. Ето днес ни горе викат, }

      \line {   "   " към Небето да вървим, }

      \line {   "   " че там Радост ни очаква, }

      \line {   "   " нов град да си съградим, }

      \line {   "              " съградим. }

      \line {   "   "}

    }\"rightBraces052_1"



    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {



      \line {   6. От смъртта се не плашете, }

      \line {   "   " не загива същността, }

      \line {   "   " туй, що смърт зовеме тука, }

      \line {   "   " за Небето е врата, }

      \line {   "              " е врата. }

      \line {   "   "}


      \line {   7. С радост и хвалебни песни }

      \line {   "   " ще прекрачим нейни праг, }

      \line {   "   " а отвъд Христос ни чака, }

      \line {   "   " все тъй кротък, все тъй благ, }

      \line {   "            " все тъй благ. }

      \line {   "   "}


      \line {   8. И там Той ще ни научи, }

      \line {   "   " тленното как да не тлей, }

      \line {   "   " как с телото си човека }

      \line {   "   " вечно може да живей, }

      \line {   "             " да живей. }

    }
    \"rightBraces052_2"
  } % markup



} % bookpart
