\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref026
  \tocItem \markup "Любовта е извор"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #12
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Moderato" 4 "60"
      \autoBeamOff
      a'4 g' f' e'| d'2 d'2| g'4 a' bes' d''| a'2 a'2 | \break
      g'4 a' bes' d''| a'2 a'2 | a'4 g'4 f'4 g'4 a'2 a'2| \break
      bes'4 bes'4 bes'4 bes'4 | bes'2 d''2 | d''4 c''4 c''4 bes'4 bes'2 a'2 | \break
      g'4 a'4 bes'4 d''4 | a'2 a'2 | d'4 e'4 f'4 e'4 | d'2 d'2 | \break
      a'4 a'4 d''4 c''4 | bes'2 bes'2 | g'4 a'4 c''4 bes'4 | a'2 a'2 | \break
      g'4 a'4 bes'4 d''4 | a'2 a'2 | d'4 e'4 f'4 e'4 | d'2 d'2 | \bar "|." \break
    }

    \addlyrics {
      \set stanza = "1. " Лю -- бов -- та е из -- вор: тя жи -- во -- та раж -- да
      и пре -- свя -- та длъж -- ност в~не -- го крот -- ко всаж -- "   да  –"
      все нап -- ред да хо -- ди в~стре -- меж към До -- бро -- то,
      що е съ -- вър -- ше -- но го -- ре на не -- бе -- то.
      Ра -- бо -- ти със не -- я в~ми -- лос -- ти же -- ла -- ни,
      по -- мощ -- та но -- си ѝ за ду -- ши стра -- дал -- ни.
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Любовта е извор" "Ljubovta e izvor"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "И туй непрестанно"
            "върши тя самата"
            "като нежна майка"
            "всекиму в душата:"
            "постоянно сади"
            "семенцата драги,"
            "от които никнат"
            "добрините благи."
          }
        }

      }
    }
  }

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){


    \fill-line {
      \column {
        \line{ \italic"    Припев:"}
        %\vspace #0.3
        \line {
          "   "
          \column {
            "Работи със нея"
            "в милости желани,"
            "помощта носи ѝ"
            "за души страдални."
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Таз велика тайна"
            "кой добре разбира,"
            "свойта душа мила"
            "сутрина разкрива"
            "както кринът бели"
            "на роса небесна"
            "и на слънчевата"
            "светлина чудесна."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Припев ..."
          }
        }
        \vspace #0.5
        \line {
          \bold "4."
          \column {
            "Слънцето, което"
            "оживотворява"
            "овреме човека,"
            "топло озарява,"
            "буди и възраства"
            "в него семенцата"
            "и му пълни тайно"
            "с добрини душата."

          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic"  Припев ..."
          }
        }
        \vspace #0.5
        \line {
          \bold "5."
          \column {
            "Плодове тъй сладки,"
            "в Любовта узрели,"
            "най-блажен ще бъде"
            "тоз, който ви вкуси."
            "В жилища небесни"
            "вечно ще живее,"
            "пред престола Божи"
            "песни ще да пее."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic"  Припев ..."
          }
        }
      }
    }
  }







} % bookpart
