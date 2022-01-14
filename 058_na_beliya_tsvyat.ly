\version "2.22.0"

\paper {
  #(set-paper-size "a5")
}

"rightBraces058" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.7 )
    \right-brace #20

    \translate #'(0 . -24.5 )
    \right-brace #20

    \translate #'(0 . -14.6 )
    \right-brace #20

    \translate #'(0 . -14.7 )
    \right-brace #20

    \translate #'(0 . -15.0 )
    \right-brace #20
  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.2 )
    2

    \translate #'(0 . -26.6 )
    2

    \translate #'(0 . -16.6 )
    2

    \translate #'(0 . -16.6 )
    2

    \translate #'(0 . -16.9 )
    2
  }
}

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change lyrics and titles font (affects notes also)
    fonts =
    #(make-pango-font-tree
      "Times New Roman"
      "DejaVu Sans"
      "DejaVu Sans Mono"
      (/ (* staff-height pt) 3.6))

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }

  \score{
    \layout {
      indent = 0.0\cm % remove first line indentation
      % ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Vivo" \normal-text { " (" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 104)" }
        }
      }

      \autoBeamOff
      \partial 8 e'8 | a'8  b'8 c''8 d''8 | e''4 c''4 | a'4. a'8 | d''4 e''4 | f''4 d''4 | e''8 ([ d''8 e''8 f''8 ]) | \break
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
      бе -- ли -- на -- та, наш е цвят-  веч -- на си -- ла и --
      ма, мрак я не об -- зи -- ма. зи -- ма.
    }

    \addlyrics {
      Na -- go -- re o -- shte da var -- vim, kam var -- ho -- ve -- te be --
      li, e -- fi -- ra byal da poz -- dra -- vim i snezh -- ni -- te kri --
      sta -- li. e -- li. Hu -- bost -- ta na Bo -- zhi svyat,
      be -- li -- na -- ta, nash e tsvyat-  vech -- na si -- la i --
      ma, mrak ya ne ob -- zi -- ma. zi -- ma.
    }
    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { На белия цвят }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 {  Na belia tsvyat }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {

      \line {   1. Нагоре още да вървим, }

      \line {   "   "към върховете бели, }

      \line {   "   "ефира бял да поздравим }

      \line {   "   "и снежните кристали. }

      \line {   "   "}
      \line { "        " \italic {Припев: } }

      \line {   "        "Хубостта на Божи свят, }

      \line {   "        "белината, наш е цвят - }

      \line {   "        "вечна сила има, }

      \line {   "        "мрак я не обзима. }
      \line {   "   "}

      \line {   2. Нагоре още! Там цъфти }
      \line {   "   " алпийска роза бяла, }
      \line {   "   " зората белите лъчи }
      \line {   "   " в таз роза е изляла. }
      \line {   "   "}
      \line { "        " \italic {Припев: } }
      \line {   "   "}

      \line {  3. Нагоре! Бяло Слънце днес }

      \line {   "   "от изток ще изгрее  – }

      \line {   "   "емблема жива на онез,}

      \line {   "   "в които Бог живее.}
      \line {   "   "}


      \line { "        " \italic {Припев: } }

      \line {   "   "}

      \line {   4. Нагоре – в тази белина!}

      \line {   "   "Тя всъде ще изпълни,}

      \line {   "   "и гибелната тъмнина}

      \line {   "   "в бял ден ще се превърне.}
      \line {   "   "}

      \line { "        " \italic {Припев: } }

      \line {   "   "}

      \line {   5. Земята ще разхубавим,}

      \line {   "   "на Рай ще я направим;}

      \line {   "   "Небето ще развеселим}

      \line {   "   "и Бога ще прославим.}
      \line {   "   "}


      \line { "        " \italic {Припев: } }
    }
    \"rightBraces058"
    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line {   1. Nagore oshte da varvim, }

      \line {   "   "kam varhovete beli, }

      \line {   "   "efira byal da pozdravim }

      \line {   "   "i snezhnite kristali. }

      \line {   "   "}
      \line { "        " \italic {Pripev: } }

      \line {   "        "Hubostta na Bozhi svyat, }

      \line {   "        "belinata, nash e tsvyat  – }

      \line {   "        "vechna sila ima, }

      \line {   "        "mrak ya ne obzima. }
      \line {   "   "}

      \line {   2. Nagore oshte! Tam tsafti }
      \line {   "   " alpiyska roza byala, }
      \line {   "   " zorata belite lachi }
      \line {   "   " v taz roza e izlyala. }
      \line {   "   "}
      \line { "        " \italic {Pripev: } }
      \line {   "   "}

      \line {  3. Nagore! Byalo Slantse dnes }

      \line {   "   "ot iztok shte izgree  – }

      \line {   "   "emblema zhiva na onez,}

      \line {   "   "v koito Bog zhivee.}
      \line {   "   "}


      \line { "        " \italic {Pripev: } }

      \line {   "   "}

      \line {   4. Nagore - v tazi belina!}

      \line {   "   "Tya vsade shte izpalni,}

      \line {   "   "i gibelnata tamnina}

      \line {   "   "v byal den shte se prevarne.}
      \line {   "   "}

      \line { "        " \italic {Pripev: } }

      \line {   "   "}

      \line {   5. Zemyata shte razhubavim,}

      \line {   "   "na Ray shte ya napravim;}

      \line {   "   "Nebeto shte razveselim}

      \line {   "   "i Boga shte proslavim.}
      \line {   "   "}


      \line { "        " \italic {Pripev: } }
    } %column
    \"rightBraces058"
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/058_na_beliya_tsvyat_lyrics_de.ly"

} % bookpart
