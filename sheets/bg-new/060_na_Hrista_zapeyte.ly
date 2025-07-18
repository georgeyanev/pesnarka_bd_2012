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
      \set stanza = "1. " Но -- ви хи -- мни на И -- су -- са да за -- пе -- ем
      в~то -- я час, Бо -- жи Син е Той пред -- ве --
      чен на не -- бе -- то и във нас.  Наш У -- чи -- тел,
      наш во -- ди -- тел, ис -- тин -- ски -- ят наш жи -- вот, Не -- го --
      во -- то креп -- ко И -- ме да се сла -- ви в~род и род.
    }

    \header {
      title = \titleFunc #'ref_desc_15 "На Христа запейте" "Na Hrista zapejte"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \hspace #0.1
      \column {
        \line {
          \bold "2."
          \column {
            "На Христа запейте химни"
            "нови в тоз тържествен час,"
            "Той е Божи Син, изпратен "
            "на земята зарад нас. "
            "Той живота Си положи "
            "от греха да ни спаси, "
            "като смъртник в гроба слезе"
            "мъртвите да възкреси. "
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "И когато се прослави,"
            "нов завет ни даде Той,"
            "най-великия от всички, "
            "Любовта – закона Свой. "
            "Благовествува и рече: "
            "„Вий сте Мои, Aз Съм ваш,"
            "хората са всички братя,"
            "Бог Отец е татко наш."
          }
        }

      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        \line {
          \bold "4."
          \column {
            "Един друг се залюбете,"
            "тъй се служи на Отца; "
            "и Отец ви всички люби, "
            "като Негови деца."
            "Аз Съм жив хляб от небето, "
            "аз Съм истинска лоза, "
            "Словото Ми опазете, "
            "заживейте в Любовта!"
          }
        }
        % adds vertical spacing between verses
        \vspace #1
        \line {
          \bold "5."
          \column {
            "Само в нея е живота,"
            "нейна е и радостта,"
            "тя създава всяко благо,"
            "тя едничка, Любовта“."
            "Тъй ни учеше тогава,"
            "тъй ни шепне и сега,"
            "и възкръсват ми в душата"
            "тези Негови слова. "
          }
        }
      }\hspace #0.1
    }
  }
} % bookpart
