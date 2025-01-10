\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref026
  \tocItem \markup "Любовта е извор – Ljubovta e izvor"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Moderato" 4 "60"
      \autoBeamOff
      a'4 g' f' e'| d'2 d'2| g'4 a' bes' d''| a'2 a'2 |
      g'4 a' bes' d''| \break a'2 a'2 | a'4 g'4 f'4 g'4 a'2 a'2|
      bes'4 bes'4 bes'4 bes'4 | bes'2 d''2 | \break d''4 c''4 c''4 bes'4 bes'2 a'2 |
      g'4 a'4 bes'4 d''4 | a'2 a'2 | \break d'4 e'4 f'4 e'4 |  d'2 d'2 |
      a'4 a'4 d''4 c''4 | bes'2 bes'2 | g'4 a'4 c''4 bes'4 | \break a'2 a'2 |
      g'4 a'4 bes'4 d''4 | a'2 a'2 | d'4 e'4 f'4 e'4 | d'2 d'2 | \bar "|." \break
    }

    \addlyrics {
      \set stanza = "1." Лю -- бов -- та е из -- вор: тя жи -- во -- та раж -- да
      и пре -- свя -- та длъж -- ност в~не -- го крот -- ко всаж -- "   да  –"
      все нап -- ред да хо -- ди в~стре -- меж към До -- бро -- то,
      що е съ -- вър -- ше -- но го -- ре на Не -- бе -- то.
      Ра -- бо -- ти със не -- я в~ми -- лос -- ти же -- ла -- ни,
      по -- мощ -- та но -- си ѝ за ду -- ши стра -- дал -- ни.
    }

    \addlyrics {
      \set stanza = "1." Lju -- bov -- ta e iz -- vor: tja ži -- vo -- ta raž -- da
      i pre -- svja -- ta dlăž -- nost v~ne -- go krot -- ko vsaž -- "   da  –"
      vse nap -- red da ho -- di v~stre -- mež kăm Do -- bro -- to,
      što e să -- văr -- še -- no go -- re na Ne -- be -- to.
      Ra -- bo -- ti săs ne -- ja v~mi -- los -- ti že -- la -- ni,
      po -- mošt -- ta no -- si i za du -- ši stra -- dal -- ni.
    }

    \header {
      title = \titleFunc "Любовта е извор" "Ljubovta e izvor"
    }

    \midi{}

  } % score

  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {
        \vspace #1
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
      }
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses
        \vspace #1
        \line {
          \bold "2."
          \column {
            "I tuj neprestanno"
            "vărši tja samata"
            "kato nežna majka"
            "vsekimu v dušata:"
            "postojanno sadi"
            "semencata dragi,"
            "ot koito niknat"
            "dobrinite blagi."
          }
        }
        \vspace #1
        \line {
          \bold "3."
          \column {
            "Taz velika tajna"
            "koj dobre razbira,"
            "svojta duša mila"
            "sutrina razkriva"
            "kakto krinăt beli"
            "na rosa nebesna"
            "i na slănčevata"
            "svetlina čudesna."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic "  Refrain ..."
          }
        }
      }\hspace #0.1
    }
  }
  \pageBreak


  \markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
    \fill-line {
      \hspace #0.1
      \column {
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
      \hspace #0.1
      % adds horizontal spacing between columns
      \column {
        % adds vertical spacing between verses
        \line {
          \bold "4."
          \column {
            "Slănceto, koeto"
            "oživotvorjava"
            "ovreme čoveka,"
            "toplo ozarjava,"
            "budi i văzrastva"
            "v nego semencata"
            "i mu pălni tajno"
            "s dobrini dušata."

          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic"  Refrain ..."
          }
        }
        \vspace #0.5
        \line {
          \bold "5."
          \column {
            "Plodove tăj sladki,"
            "v Ljubovta uzreli,"
            "naj-blažen šte băde"
            "toz, kojto vi vkusi."
            "V žilišta nebesni"
            "večno šte živee,"
            "pred prestola Boži"
            "pesni šte da pee."
          }
        }
        \vspace #1
        \line {
          \bold " "
          \column {
            \italic"  Refrain ..."
          }
        }
      }\hspace #0.1
    }
  }

  \markup \vspace #1

  % include foreign translation(s) of the song
  \include "../../lyrics/de/026_lyubovta_e_izvor_lyrics_de.ly"

} % bookpart

