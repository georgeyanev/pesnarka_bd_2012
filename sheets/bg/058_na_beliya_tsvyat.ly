\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces058_1" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.8 )
    \right-brace #20

    \translate #'(0 . -14.8 )
    \right-brace #20



  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.5 )
    2
    \translate #'(0 . -16.8 )
    2
  }
}

"rightBraces058_2" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.8 )
    \right-brace #20

    \translate #'(0 . -14.8 )
    \right-brace #20



  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.5 )
    2
    \translate #'(0 . -16.8 )
    2
  }
}



\bookpart {
  \label #'ref058
  \tocItem \markup "На белия цвят"
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
      ли, е -- фи -- ра бял да поз -- дра -- вим и снеж -- ни -- те крис --
      та -- ли, е -- ли. Ху -- бост -- та на Бо -- жи свят,
      бе -- ли -- на -- та, наш е цвят;  веч -- на си -- ла и --
      ма, мрак я не об -- зи -- ма. зи -- ма.
    }

    \header {
      title = \titleFunc #'ref_desc_3 "На белия цвят" "Na belija cvjat"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
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




    }    \"rightBraces058_1"

    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)

    \column {



      \line {   4. Нагоре – в тази белина!}

      \line {   "   "Тя всъде ще изпълни}

      \line {   "   "и гибелната тъмнина}

      \line {   "   "в бял ден ще се превърне.}

      \line { " " }

      \line { "        " \italic {Припев ... } }
      \line { " " }


      \line {   5. Земята ще разхубавим,}

      \line {   "   "на Рай ще я направим;}

      \line {   "   "Небето ще развеселим}

      \line {   "   "и Бога ще прославим.}
      \line { " " }
      \line { "        " \italic {Припев ... } }
    }\"rightBraces058_2"


  }   % markup



} % bookpart
