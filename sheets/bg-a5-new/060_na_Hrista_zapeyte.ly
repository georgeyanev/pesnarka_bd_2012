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
      \set stanza = "1." Но -- ви хи -- мни на И -- су -- са да за -- пе -- ем
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

  % \markup \abs-fontsize #11 {
  %   \hspace #3
  %   \override #`(baseline-skip . ,bgCoupletBaselineSkip)
  %   \column {
  %     \line {   2.  На Христа запейте химни  }

  %     \line {   "   " нови в тоз тържествен час, }

  %     \line {   "   " Той е Божи Син, изпратен }

  %     \line {   "   " на Земята зарад нас. }

  %     \line {   "   " Той живота Си положи }

  %     \line {   "   " от греха да ни спаси, }

  %     \line {   "   " като смъртник в гроба слезе }

  %     \line {   "   " мъртвите да възкреси. }
  %     \line {   "   "}

  %     \line {   3.  И когато се прослави, }

  %     \line {   "   " нов завет ни даде Той, }

  %     \line {   "   " най-великия от всички, }

  %     \line {   "   " Любовта – закона Свой. }

  %     \line {   "   " Благовествува и рече: }

  %     \line {   "   " „Вий сте Мои, Aз Съм ваш, }

  %     \line {   "   " хората са всички братя, }

  %     \line {   "   " Бог Отец е татко наш. }

  %   }

  %   \hspace #3
  %   \override #`(baseline-skip . ,bgCoupletBaselineSkip)
  %   \column {


  %     \line {  4.  Един друг се залюбете, }

  %     \line {   "   " тъй се служи на Отца; }

  %     \line {   "   " и Отец ви всички люби, }

  %     \line {   "   " като Негови деца. }

  %     \line {   "   " Аз Съм жив хляб от Небето, }

  %     \line {   "   " аз Съм истинска лоза, }

  %     \line {   "   " Словото Ми опазете, }

  %     \line {   "   " заживейте в Любовта! }
  %     \line {   "   "}

  %     \line {   5.  Само в нея е живота, }

  %     \line {   "   " нейна е и радостта, }

  %     \line {   "   " тя създава всяко благо, }

  %     \line {   "   " тя едничка, Любовта“. }

  %     \line {   "   " Тъй ни учеше тогава,  }

  %     \line {   "   " тъй ни шепне и сега, }

  %     \line {   "   " и възкръсват ми в душата }

  %     \line {   "   " тези Негови слова. }


  %   }

  % } % markup


  \markup  \abs-fontsize #11 {
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \fill-line {
      % moves the column off the left margin;
      % can be removed if space on the page is tight
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "На Христа запейте химни"
            "нови в тоз тържествен час,"
            "Той е Божи Син, изпратен"
            "на Земята зарад нас."
            "Той живота Си положи"
            "от греха да ни спаси,"
            "като смъртник в гроба слезе"
            "мъртвите да възкреси."
          }
        }
        % adds vertical spacing between verses
        \combine \null  \vspace #0.5
        \line {
          \bold "3."
          \column {
            "И когато се прослави,"
            "нов завет ни даде Той,"
            "най-великия от всички,"
            "Любовта – закона Свой."
            "Благовествува и рече:"
            "„Вий сте Мои, Aз Съм ваш,"
            " хората са всички братя,"
            "Бог Отец е татко наш."
          }
        }
      }
      % adds horizontal spacing between columns
      \hspace #0.1
      \column {
        \line {
          \bold "4."
          \column {
                "Един друг се залюбете," 

     " тъй се служи на Отца;"

      " и Отец ви всички люби, "

      " като Негови деца."

      " Аз Съм жив хляб от Небето,"

       " аз Съм истинска лоза,"

      " Словото Ми опазете, "

      " заживейте в Любовта!"
          }
        }
        % adds vertical spacing between verses
        \combine \null  \vspace #0.5
        \line {
          \bold "5."
          \column {
          
     "Само в нея е живота,"

      " нейна е и радостта,"

      " тя създава всяко благо,"

      " тя едничка, Любовта“."

       " Тъй ни учеше тогава,"

      " тъй ни шепне и сега,"

      " и възкръсват ми в душата "

      " тези Негови слова. "
          }
        }
      }
      % gives some extra space on the right margin;
      % can be removed if page space is tight
      \hspace #0.1
    }
  }


} % bookpart
