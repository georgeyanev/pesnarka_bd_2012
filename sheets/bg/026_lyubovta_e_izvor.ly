\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref026
  \tocItem \markup "Любовта е извор"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Moderato" 4 "60"
      \autoBeamOff
      a'8 g'8 f'8 e'8 d'4 d'4|g'8 a'8 bes'8 d''8 a'4 a'4 | \break
      g'8 a'8 bes'8 d''8 a'4 a'4 | a'8 g'8 f'8 g'8 a'4 a'4| \break
      bes'8 bes'8 bes'8 bes'8 bes'4 d''4 | d''8 c''8 c''8 bes'8 bes'4 a'4 | \break
      g'8 a'8 bes'8 d''8 a'4 a'4 | d'8 e'8 f'8 e'8 d'4 d'4 | \break
      a'8 a'8 d''8 c''8 bes'4 bes'4 | g'8 a'8 c''8 bes'8 a'4 a'4| \break
      g'8 a'8 bes'8 d''8 a'4 a'4 | d'8 e'8 f'8 e'8 d'4 d'4 | \bar "|." \break
    }

    \addlyrics {
      Лю -- бов -- та е из -- вор: тя Жи -- во -- та раж -- да
      и пре -- свя -- та длъж -- ност в~не -- го крот -- ко всаж -- да
      все на -- пред да хо -- ди "в~стре-" -- меж към До -- бро -- то,
      що е съ -- вър -- ше -- но го -- ре на Не -- бе -- то.
      Ра -- бо -- ти със не -- я в~ми -- лос -- ти же -- ла -- ни,
      по -- мощ -- та но -- си й за ду -- ши стра -- дал -- ни.
    }

    \header {
      title = \titleFunc "Любовта е извор" "Ljubovta e izvor"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #9.5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line { 2. И туй непрестанно  }
      \line {   "   " върши тя самата }
      \line {   "   " като нежна майка }
      \line {   "   " всекиму в душата  }
      \line {   "   " постоянно сади}
      \line {   "   " семенцата драги,}
      \line {   "   " от които никнат}
      \line {   "   " Добрините благи.}



    }

    \hspace #4
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line { "   " \italic {Припев ...} }
      \line {   "   "Работи със нея }
      \line {   "   " в милости желани, }
      \line {   "   "   помощта носи й }
      \line {   "   "  за души страдални. }


    } %column

  } % markup

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line { 3. Таз велика тайна }
      \line {   "   " кой добре разбира, }
      \line {   "   " свойта душа мила }
      \line {   "   " сутрина разкрива, }
      \line {   "   " както кринът бели}
      \line {   "   "на роса небесна}
      \line {   "   "и на слънчевата}
      \line {   "   "светлина чудесна.}
      \line {   "   "}
      \line { "   " \italic {Припев ...} }
      \line {   "   "}
      \line { 4. Слънцето, което }
      \line {   "   " оживотворява, }
      \line {   "   " овреме човека}
      \line {   "   " топло озарява, }
      \line {   "   "буди и възраства}
      \line {   "   "в него семенцата}
      \line {   "   "и му пълни тайно}
      \line {   "   "с Добрини душата.}
      \line {   "   "}
      \line { "   " \italic {Припев ...} }
      \line {   "   "}
      \line { 5. Плодове тъй сладки, }
      \line {   "   " в Любовта узрели, }
      \line {   "   "най-блажен ще бъде}
      \line {   "   "тоз, който ви вкуси.}
      \line {   "   "В жилища небесни}
      \line {   "   "вечно ще живее,}
      \line {   "   "пред престола Божи}
      \line {   "   "песни ще да пее.}
      \line {   "   "}
      \line { "   " \italic {Припев ...} }
    }

  } % markup


} % bookpart
