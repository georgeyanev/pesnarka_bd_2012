\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"


"rightBraces052_1" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.2 )
    \right-brace #30

    \translate #'(0 . -13.6 )
    \right-brace #30

    \translate #'(0 . -13.9 )
    \right-brace #30

  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.7 )
    2

    \translate #'(0 . -16.6 )
    2

    \translate #'(0 . -16.9 )
    2

  }
}

"rightBraces052_2" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -9.1 )
    \right-brace #30

    \translate #'(0 . -13.9 )
    \right-brace #30

    \translate #'(0 . -13.7 )
    \right-brace #30

    \translate #'(0 . -14 )
    \right-brace #30

    \translate #'(0 . -13.9 )
    \right-brace #30
  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.7 )
    2

    \translate #'(0 . -16.8 )
    2

    \translate #'(0 . -16.8 )
    2

    \translate #'(0 . -16.9 )
    2

    \translate #'(0 . -16.9 )
    2
  }
}

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Tempo di marcia" "4" "100"
      \autoBeamOff
      \autoBeamOff
      c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
      g'8 a' bes' c'' | a'4. r8 \repeat volta 2 {
        | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
        c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8
      } \break
    }

    \addlyrics {
      "1. Дър" -- зост във Хри -- ста, дру -- га -- ри, с~Не -- го
      да вър -- вим на -- пред, Той е ца -- рят на Жи -- во -- та,
      цар -- ство -- то Му е на -- вред, е на -- вред.
    }

    \addlyrics {
      "1. Dar" -- zost vav Hri -- sta, dru -- ga -- ri, s~Ne -- go
      da var -- vim na -- pred, Toy e tsa -- ryat na Zhi -- vo -- ta,
      tsar -- stvo -- to Mu e na -- vred, e na -- vred.
    }

    \header {
      title = \titleFunc "Дързост в Христа" "Darzost v Hrista"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   "   "}
      \line {   1.  Дързост във Христа, другари,}

      \line {   "   " с Него да вървим напред,}

      \line {   "   " Той е царят на Живота,}

      \line {   "   " царството Му е навред,}

      \line {   "                " е навред.}

      \line {   "   "}
      \line {   "   "}

      \line {   2.  Дързост във Христа, другари,}

      \line {   "   " да вървиме все напред!}

      \line {   "   " Бог-Христос ни в пътя води,}

      \line {   "   " Той е мощен цар навред,}

      \line {   "               " цар навред.}
      \line {   "   "}
      \line {   "   "}

      \line {   3.  И тук долу, и там горе, }

      \line {   "   " в мировете без конец, }

      \line {   "   " всъде само Той царува, }

      \line {   "   " Той е скиптър и венец, }

      \line {   "                 " и венец. }
    }\"rightBraces052_1"
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   "   "}
      \line {   1.  Darzost vav Hrista, drugari,}

      \line {   "   " s Nego da varvim napred,}

      \line {   "   " Toy e tsaryat na Zhivota,}

      \line {   "   " tsarstvoto Mu e navred,}

      \line {   "                " e navred.}

      \line {   "   "}
      \line {   "   "}

      \line {   2.  Darzost vav Hrista, drugari,}

      \line {   "   " da varvime vse napred!}

      \line {   "   " Bog-Hristos ni v patya vodi,}

      \line {   "   " Toy e moshten tsar navred,}

      \line {   "               " tsar navred.}
      \line {   "   "}
      \line {   "   "}

      \line {   3.  I tuk dolu, i tam gore, }

      \line {   "   " v mirovete bez konets, }

      \line {   "   " vsade samo Toy tsaruva, }

      \line {   "   " Toy e skiptar i venets, }

      \line {   "                 " i venets. }
    } \"rightBraces052_1" %column
  } % markup

  \pageBreak
  % include foreign translation(s) of the song
  \include "lyrics_de/052_darzost_v_Hrista_lyrics_de.ly"

} % bookpart
