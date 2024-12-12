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
  \markup \vspace #0.3
  \markup \abs-fontsize #11 {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. И туй непрестанно  }
      \line {   "   " върши тя самата }
      \line {   "   " като нежна майка }
      \line {   "   " всекиму в душата:  }
      \line {   "   " постоянно сади}
      \line {   "   " семенцата драги,}
      \line {   "   " от които никнат}
      \line {   "   " добрините благи.}
      \vspace #0.5
      \line { "   " \italic {Припев ...} }
      \vspace #0.5

      \line { 3. Таз велика тайна }
      \line {   "   " кой добре разбира, }
      \line {   "   " свойта душа мила }
      \line {   "   " сутрина разкрива }
      \line {   "   " както кринът бели}
      \line {   "   "на роса небесна}
      \line {   "   "и на слънчевата}
      \line {   "   "светлина чудесна.}
      \vspace #0.5
      \line { "   " \italic {Припев ...} }



    }

    \hspace #6
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. I tuj neprestanno  }
      \line {   "   " vărši tja samata }
      \line {   "   " kato nežna majka }
      \line {   "   " vsekimu v dušata:  }
      \line {   "   " postojanno sadi}
      \line {   "   " semencata dragi,}
      \line {   "   " ot koito niknat}
      \line {   "   " dobrinite blagi.}
      \vspace #0.5
      \line { "   " \italic {Refrain ...} }
      \vspace #0.5

      \line { 3. Taz velika tajna }
      \line {   "   " koj dobre razbira, }
      \line {   "   " svojta duša mila }
      \line {   "   " sutrina razkriva }
      \line {   "   " kakto krinăt beli}
      \line {   "   "na rosa nebesna}
      \line {   "   "i na slănčevata}
      \line {   "   "svetlina čudesna.}
      \vspace #0.5
      \line { "   " \italic {Refrain ...} }




    } %column
  } % markup

  \pageBreak
  \markup \abs-fontsize #11 {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line { 4. Слънцето, което }
      \line {   "   " оживотворява }
      \line {   "   " овреме човека,}
      \line {   "   " топло озарява, }
      \line {   "   "буди и възраства}
      \line {   "   "в него семенцата}
      \line {   "   "и му пълни тайно}
      \line {   "   "с добрини душата.}
      \vspace #0.5
      \line { "   " \italic {Припев ...} }
      \vspace #0.5
      \line { 5. Плодове тъй сладки, }
      \line {   "   " в Любовта узрели, }
      \line {   "   "най-блажен ще бъде}
      \line {   "   "тоз, който ви вкуси.}
      \line {   "   "В жилища небесни}
      \line {   "   "вечно ще живее,}
      \line {   "   "пред престола Божи}
      \line {   "   "песни ще да пее.}
      \line { "   " \italic {Припев ...} }
      \vspace #0.3
    }

    \hspace #6
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line { 4. Slănceto, koeto }
      \line {   "   " oživotvorjava }
      \line {   "   " ovreme čoveka,}
      \line {   "   " toplo ozarjava, }
      \line {   "   "budi i văzrastva}
      \line {   "   "v nego semencata}
      \line {   "   "i mu pălni tajno}
      \line {   "   "s dobrini dušata.}
      \vspace #0.5
      \line { "   " \italic {Refrain ...} }
      \vspace #0.5
      \line { 5. Plodove tăj sladki, }
      \line {   "   " v Ljubovta uzreli, }
      \line {   "   "naj-blažen šte băde}
      \line {   "   "toz, kojto vi vkusi.}
      \line {   "   "V žilišta nebesni}
      \line {   "   "večno šte živee,}
      \line {   "   "pred prestola Boži}
      \line {   "   "pesni šte da pee.}
      \line { "   " \italic {Refrain ...} }
    } %column

  } % markup

  \markup \empty-one

  % include foreign translation(s) of the song
  \include "../../lyrics/de/026_lyubovta_e_izvor_lyrics_de.ly"

} % bookpart

