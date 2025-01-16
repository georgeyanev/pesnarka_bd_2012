\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"


"rightBraces052_1" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8.7 )
    \right-brace #30

    \translate #'(0 . -13.1 )
    \right-brace #30

    \translate #'(0 . -13.6 )
    \right-brace #30

    \translate #'(0 . -12.7 )
    \right-brace #30

    \translate #'(0 . -13.7 )
    \right-brace #30

  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.4 )
    2

    \translate #'(0 . -17.5 )
    2

    \translate #'(0 . -18.1 )
    2

    \translate #'(0 . -16.9)
    2


    \translate #'(0 . -17.9)
    2



  }
}

"rightBraces052_2" = \markup {
  \column {
    % repeat braces


    \translate #'(0 . -9.4 )
    \right-brace #30

    \translate #'(0 . -12.3 )
    \right-brace #30

  }
  \column {
    % repeat numbers

    \translate #'(0 . -10.2 )
    2

    \translate #'(0 . -16.7 )
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
      g'8 a' bes' c'' | a'4. r8 \bar ".|:"
      | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
      c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8 \bar ":|."
      \break
    }

    \addlyrics {
      \set stanza = "1." Дър -- зост във Хрис -- та, дру -- га -- ри, с~Не -- го
      да вър -- вим нап -- ред, Той е ца -- рят на жи -- во -- та,
      цар -- ство -- то Му е нав -- ред, е нав -- ред.
    }
    \addlyrics {
      \set stanza = "1." Dăr -- zost văv Hris -- ta, dru -- ga -- ri, s~Ne -- go
      da văr -- vim nap -- red, Toj e ca -- rjat na ži -- vo -- ta,
      car -- stvo -- to Mu e nav -- red, e nav -- red.
    }


    \header {
      title = \titleFunc "Дързост в Христа" "Dărzost v Hrista"
    }

    \midi{}

  } % score

  \markup \empty-two

  \markup \abs-fontsize #11 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   2.  Dărzost văv Hrista, drugari,}

      \line {   "   " da vărvime vse napred!}

      \line {   "   " Bog Hristos ni v pătja vodi,}

      \line {   "   " Toj e mošten car navred,}

      \line {   "               " car navred.}
      \vspace #0.5

      \line {   3.  I tuk, dolu, i tam, gore, }

      \line {   "   " v mirovete bez konec, }

      \line {   "   " vsăde samo Toj caruva, }

      \line {   "   " Toj e skiptăr i venec, }

      \line {   "                 " i venec. }
      \vspace #0.5
      \line {   4.  Upravljava, blagoslavja – }

      \line {   "   " vsičko v Mădrost da raste, }

      \line {   "   " plodove na pravda svjata }

      \line {   "   " v žertva da Mu prinese, }

      \line {   "              " prinese. }

      \vspace #0.5


      \line {   5. Eto, dnes ni Gore vikat, }

      \line {   "   " kăm Nebeto da vărvim, }

      \line {   "   " če tam radost ni očakva, }

      \line {   "   " nov grad da si săgradim, }

      \line {   "              " săgradim. }

      \vspace #0.5



      \line {   6. От смъртта се не плашете, }

      \line {   "   " не загива същността, }

      \line {   "   " туй, що смърт зовеме тука, }

      \line {   "   " за Небето е врата, }

      \line {   "              " е врата. }



    }\"rightBraces052_1"
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {



      \line {   2.  Dărzost văv Hrista, drugari,}

      \line {   "   " da vărvime vse napred!}

      \line {   "   " Bog Hristos ni v pătja vodi,}

      \line {   "   " Toj e mošten car navred,}

      \line {   "               " car navred.}
      \vspace #0.5

      \line {   3.  I tuk, dolu, i tam, gore, }

      \line {   "   " v mirovete bez konec, }

      \line {   "   " vsăde samo Toj caruva, }

      \line {   "   " Toj e skiptăr i venec, }

      \line {   "                 " i venec. }
      \vspace #0.5
      \line {   4.  Upravljava, blagoslavja – }

      \line {   "   " vsičko v Mădrost da raste, }

      \line {   "   " plodove na pravda svjata }

      \line {   "   " v žertva da Mu prinese, }

      \line {   "              " prinese. }

      \vspace #0.5


      \line {   5. Eto, dnes ni Gore vikat, }

      \line {   "   " kăm Nebeto da vărvim, }

      \line {   "   " če tam radost ni očakva, }

      \line {   "   " nov grad da si săgradim, }

      \line {   "              " săgradim. }
      \vspace #0.5
      \line {   6. Ot smărtta se ne plašete, }

      \line {   "   " ne zagiva săštnostta, }

      \line {   "   " tuj, što smărt zoveme tuka, }

      \line {   "   " za Nebeto e vrata, }

      \line {   "              " e vrata. }




    } \"rightBraces052_1" %column
  } % markup

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   7. С радост и хвалебни песни }

      \line {   "   " ще прекрачим нейни праг, }

      \line {   "   " а отвъд Христос ни чака, }

      \line {   "   " все тъй кротък, все тъй благ, }

      \line {   "            " все тъй благ. }

      \vspace #0.5


      \line {   8. И там Той ще ни научи, }

      \line {   "   " тленното как да не тлей, }

      \line {   "   " как с телото си човекът }

      \line {   "   " вечно може да живей, }

      \line {   "             " да живей. }

    }
    \"rightBraces052_2"
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line {   7. S radost i hvalebni pesni }

      \line {   "   " šte prekračim nejni prag, }

      \line {   "   " a otvăd Hristos ni čaka, }

      \line {   "   " vse tăj krotăk, vse tăj blag, }

      \line {   "            " vse tăj blag. }

      \vspace #0.5


      \line {   8. I tam Toj šte ni nauči, }

      \line {   "   " tlennoto kak da ne tlej, }

      \line {   "   " kak s teloto si čovekăt }

      \line {   "   " večno može da živej, }

      \line {   "             " da živej. }

    } %column
    \"rightBraces052_2"
  } % markup

  \markup \vspace #2

  % include foreign translation(s) of the song
  \include "../../lyrics/de/052_darzost_v_Hrista_lyrics_de.ly"

} % bookpart
