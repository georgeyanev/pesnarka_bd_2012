\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces058" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -4.1 )
    \right-brace #20

    \translate #'(0 . -9.9 )
    \right-brace #20

    \translate #'(0 . -10.5 )
    \right-brace #20

  }
  \column {
    % repeat numbers
    \translate #'(0 . -4.5 )
    2
    \translate #'(0 . -11.8 )
    2

    \translate #'(0 . -12.2 )
    2

  }
}

"rightBraces059" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -8.3 )
    \right-brace #20


  }
  \column {
    % repeat numbers
    \translate #'(0 . -9.2 )
    2
  }
}

\bookpart {
  \label #'ref058
  \tocItem \markup "На белия цвят – Na belija cvjat"
  \include "include/bookpart-paper.ily"
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
      На -- го -- ре о -- ще да вър -- вим, към вър -- хо -- ве -- те бе --
      ли, е -- фи -- ра бял да поз -- дра -- вим и снеж -- ни -- те кри --
      ста -- ли. е -- ли. Ху -- бост -- та на Бо -- жи свят,
      бе -- ли -- на -- та, наш е цвят;  веч -- на си -- ла и --
      ма, мрак я не об -- зи -- ма. зи -- ма.
    }

    \addlyrics {
      Na -- go -- re o -- šte da văr -- vim, kăm văr -- ho -- ve -- te be --
      li, e -- fi -- ra bjal da poz -- dra -- vim i snež -- ni -- te kri --
      sta -- li. e -- li. Hu -- bost -- ta na Bo -- ži svjat,
      be -- li -- na -- ta, naš e cvjat;  več -- na si -- la i --
      ma, mrak ja ne ob -- zi -- ma. zi -- ma.
    }
    \header {
      title = \titleFunc "На белия цвят" "Na belija cvjat"
    }

    \midi{}

  } % score


  \markup \fontsize #+1.7 {
    \hspace #6
    \override #'(baseline-skip . 1.8)
    \column {

      \line {   2. Нагоре още! Там цъфти }
      \line {   "   " алпийска роза бяла, }
      \line {   "   " зората белите лъчи }
      \line {   "   " в таз роза е изляла. }
      \line { " " }

      \line { "        " \italic {Припев ... } }
      \line { " " }


      \line {  3. Нагоре! Бяло Слънце днес }

      \line {   "   "от изток ще изгрее  – }

      \line {   "   "емблема жива на онез,}

      \line {   "   "в които Бог живее.}
      \line { " " }

      \line { "        " \italic {Припев ... } }
      \line { " " }
      \line {   4. Нагоре – в тази белина!}

      \line {   "   "Тя всъде ще изпълни,}

      \line {   "   "и гибелната тъмнина}

      \line {   "   "в бял ден ще се превърне.}


    }    \"rightBraces058"

    \hspace #5
    \override #'(baseline-skip . 1.8)
   \column {

      \line {   2. Nagore ošte! Tam căfti }
      \line {   "   " alpijska roza bjala, }
      \line {   "   " zorata belite lăči }
      \line {   "   " v taz roza e izljala. }
      \line { " " }

      \line { "        " \italic {Pripev ... } }
      \line { " " }


      \line {  3. Nagore! Bjalo Slănce dnes }

      \line {   "   "ot iztok šte izgree  – }

      \line {   "   "emblema živa na onez,}

      \line {   "   "v koito Bog živee.}
      \line { " " }

      \line { "        " \italic {Pripev ... } }
      \line { " " }
      \line {   4. Nagore – v tazi belina!}

      \line {   "   "Tja vsăde šte izpălni,}

      \line {   "   "i gibelnata tămnina}

      \line {   "   "v bjal den šte se prevărne.}


    }   \"rightBraces058" %column
  } % markup

  \pageBreak


  \markup \fontsize #+1.7 {
    \hspace #6
    \override #'(baseline-skip . 1.8)
    \column {




      \line { "        " \italic {Припев ... } }
      \line { " " }


      \line {   5. Земята ще разхубавим,}

      \line {   "   "на Рай ще я направим;}

      \line {   "   "Небето ще развеселим}

      \line {   "   "и Бога ще прославим.}
      \line { " " }
      \line { "        " \italic {Припев ... } }
    }      \"rightBraces059"

    \hspace #5
    \override #'(baseline-skip . 1.8)
    \column {




      \line { "        " \italic {Pripev ... } }
      \line { " " }


      \line {   5. Zemjata šte razhubavim,}

      \line {   "   "na Raj šte ja napravim;}

      \line {   "   "Nebeto šte razveselim}

      \line {   "   "i Boga šte proslavim.}
      \line { " " }
      \line { "        " \italic {Pripev ... } }
    }    \"rightBraces059"
  } % markup

  % include foreign translation(s) of the song
  \markup \empty-two
  \include "../../lyrics/de/058_na_beliya_tsvyat_lyrics_de.ly"

} % bookpart
