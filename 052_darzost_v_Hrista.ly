\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"


"rightBraces052_1" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -6.2 )
    \right-brace #30

    \translate #'(0 . -11.6 )
    \right-brace #30

    \translate #'(0 . -12.6 )
    \right-brace #30

    \translate #'(0 . -10.7 )
    \right-brace #30

  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.7 )
    2

    \translate #'(0 . -14.6 )
    2

    \translate #'(0 . -15.6 )
    2

    \translate #'(0 . -13.7)
    2



  }
}

"rightBraces052_2" = \markup {
  \column {
    % repeat braces


    \translate #'(0 . -6.4 )
    \right-brace #30

    \translate #'(0 . -12.3 )
    \right-brace #30

    \translate #'(0 . -11 )
    \right-brace #30


  }
  \column {
    % repeat numbers

    \translate #'(0 . -7.2 )
    2

    \translate #'(0 . -14.7 )
    2

    \translate #'(0 . -15.0 )
    2


  }
}

\bookpart {
  \label #'ref052
  \tocItem \markup "Дързост в Христа – Dărzost v Hrista"
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
      "1. Dăr" -- zost văv Hri -- sta, dru -- ga -- ri, s~Ne -- go
      da văr -- vim na -- pred, Toj e ca -- rjat na Ži -- vo -- ta,
      car -- stvo -- to Mu e na -- vred, e na -- vred.
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
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line {   2.  Dărzost văv Hrista, drugari,}

      \line {   "   " da vărvime vse napred!}

      \line {   "   " Bog-Hristos ni v pătja vodi,}

      \line {   "   " Toj e mošten car navred,}

      \line {   "               " car navred.}
      \line {   "   "}

      \line {   3.  I tuk dolu, i tam gore, }

      \line {   "   " v mirovete bez konec, }

      \line {   "   " vsăde samo Toj caruva, }

      \line {   "   " Toj e skiptăr i venec, }

      \line {   "                 " i venec. }
      \line {   "   "}
      \line {   4.  Upravljava, blagoslavja – }

      \line {   "   " vsičko v Mădrost da raste, }

      \line {   "   " plodove na Pravda svjata }

      \line {   "   " v žertva da Mu prinese, }

      \line {   "              " prinese. }

      \line {   "   "}


      \line {   5. Eto dnes ni gore vikat, }

      \line {   "   " kăm Nebeto da vărvim, }

      \line {   "   " če tam Radost ni očakva, }

      \line {   "   " nov grad da si săgradim, }

      \line {   "              " săgradim. }

      \line {   "   "}

    } \"rightBraces052_1" %column
  } % markup

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
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
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
     \column {



      \line {   6. Ot smărtta se ne plašete, }

      \line {   "   " ne zagiva săštnostta, }

      \line {   "   " tuj, što smărt zoveme tuka, }

      \line {   "   " za Nebeto e vrata, }

      \line {   "              " e vrata. }

      \line {   "   "}


      \line {   7. S radost i hvalebni pesni }

      \line {   "   " šte prekračim nejni prag, }

      \line {   "   " a otvăd Hristos ni čaka, }

      \line {   "   " vse tăj krotăk, vse tăj blag, }

      \line {   "            " vse tăj blag. }

      \line {   "   "}


      \line {   8. I tam Toj šte ni nauči, }

      \line {   "   " tlennoto kak da ne tlej, }

      \line {   "   " kak s teloto si čoveka }

      \line {   "   " večno može da živej, }

      \line {   "             " da živej. }

    } %column
    \"rightBraces052_2"
  } % markup

  \markup \empty-three

  % include foreign translation(s) of the song
  \include "lyrics_de/052_darzost_v_Hrista_lyrics_de.ly"

} % bookpart
