\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref060
  \tocItem \markup "На Христа запейте "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Moderato" 4 "112"
      \autoBeamOff


      a'2 a'4| fis''2 e''4| d''2 b'4 | a'2 fis'4 | e'2 e'4 | cis'2 a4 | \break

      d'2 fis'4 | a'2 r4| a'2 a'4| b'2 cis''4 | d''2 e''4| fis''2.| \break

      d''2. |  b'2 b'4| a'2 g'4 | fis'2 e'4 | d'2. | g'2 b'4 | d''2 b'4| \break

      a'2 a'4 | fis'2 d'4 | d''2 d''4 | cis''2 b'4 | a'2 cis''4 | d''2. | b'2 b'4 |  \break

      e''2 d''4 | cis''2 b'4 | a'2 fis'4 | a'2 g'4 | fis'2 e'4 | g'2 cis'4| d'2. | \bar "|." \break
    }

    \addlyrics {
      "1. Но" -- ви хи -- мни на И -- су -- са да за -- пе -- ем
      в~то -- я час, Бо -- жи Син е Той пред -- ве --
      чен на Не -- бе -- то и във нас.  Наш У -- чи -- тел,
      наш во -- ди -- тел, ис -- тин -- ски -- ят наш жи -- вот, Не -- го --
      во -- то креп -- ко И -- ме да се сла -- ви в~род и род.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "На Христа запейте" "Na Hrista zapejte"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {   2.  На Христа запейте химни  }

      \line {   "   " нови в тоз тържествен час, }

      \line {   "   " Той е Божи Син, изпратен }

      \line {   "   " на Земята зарад нас. }

      \line {   "   " Той живота Си положи }

      \line {   "   " от греха да ни спаси, }

      \line {   "   " като смъртник в гроба слезе }

      \line {   "   " мъртвите да възкреси. }
      \line {   "   "}

      \line {   3.  И когато се прослави, }

      \line {   "   " нов завет ни даде Той, }

      \line {   "   " най-великия от всички, }

      \line {   "   " Любовта – закона Свой. }

      \line {   "   " Благовествува и рече: }

      \line {   "   " „Вий сте Мои, Aз Съм ваш, }

      \line {   "   " хората са всички братя, }

      \line {   "   " Бог Отец е татко наш. }

    }

    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line {  4.  Един друг се залюбете, }

      \line {   "   " тъй се служи на Отца; }

      \line {   "   " и Отец ви всички люби, }

      \line {   "   " като Негови деца. }

      \line {   "   " Аз Съм жив хляб от Небето, }

      \line {   "   " аз Съм истинска лоза, }

      \line {   "   " Словото Ми опазете, }

      \line {   "   " заживейте в Любовта! }
      \line {   "   "}

      \line {   5.  Само в нея е живота, }

      \line {   "   " нейна е и радостта, }

      \line {   "   " тя създава всяко благо, }

      \line {   "   " тя едничка, Любовта“. }

      \line {   "   " Тъй ни учеше тогава,  }

      \line {   "   " тъй ни шепне и сега, }

      \line {   "   " и възкръсват ми в душата }

      \line {   "   " тези Негови слова. }


    }

  } % markup


} % bookpart
