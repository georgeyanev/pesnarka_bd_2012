\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 4/4
      \tempoFunc "Moderato" "4" "69"
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
      все на -- пред да хо -- ди в~стре -- меж към До -- бро -- то,
      що е съ -- вър -- ше -- но го -- ре на Не -- бе -- то.
      Ра -- бо -- ти със не -- я в~ми -- лос -- ти же -- ла -- ни,
      по -- мощ -- та но -- си й за ду -- ши стра -- дал -- ни.
    }

    \addlyrics {
      Lyu -- bov -- ta e iz -- vor: tya Zhi -- vo -- ta razh -- da
      i pre -- svya -- ta dlazh -- nost v~ne -- go krot -- ko vsazh -- da
      vse na -- pred da ho -- di v~stre -- mezh kam Do -- bro -- to,
      shto e sa -- var -- she -- no go -- re na Ne -- be -- to.
      Ra -- bo -- ti sas ne -- ya v~mi -- los -- ti zhe -- la -- ni,
      po -- mosht -- ta no -- si y za du -- shi stra -- dal -- ni.
    }

    \header {
      title = \titleFunc "Любовта е извор" "Lyubovta e izvor"
    }

    \midi{}

  } % score

  \markup \fontsize #+2.0 {
    \hspace #7
    \override #'(baseline-skip . 1.8) % affects space between column lines
    \column {
      \line { 1. Любовта е извор, }
      \line {   "   " тя живота ражда }
      \line {   "   " и пресвята длъжност }
      \line {   "   " в него кротко всажда - }
      \line {   "   "все напред да ходи}
      \line {   "   "в стремеж към доброто,}
      \line {   "   "що е съвършено}
      \line {   "   "горе на Небето.}
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " Работи със нея }
      \line { "   " в милости желани, }
      \line { "   " помощта носи й }
      \line {  "   " за души страдални.}
      \line { " " }
      \line { 2. И туй непрестанно  }
      \line {   "   " върши тя самата }
      \line {   "   " като нежна майка }
      \line {   "   " всекиму в душата  }
      \line {   "   " постоянно сади}
      \line {   "   " семенцата драги,}
      \line {   "   " от които никнат}
      \line {   "   " добрините благи}
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }
      \line { 3. Таз велика тайна }
      \line {   "   " кой добре разбира, }
      \line {   "   " свойта душа мила }
      \line {   "   " сутрина разкрива. }
      \line {   "   " както кринът бели}
      \line {   "   "на роса небесна}
      \line {   "   "и на слънчевата}
      \line {   "   "светлина чудесна.}
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }
      \line { 4. Слънцето, което }
      \line {   "   " оживотворява, }
      \line {   "   " овреме човека}
      \line {   "   " топло озарява, }
      \line {   "   "буди и възраства}
      \line {   "   "в него семенцата}
      \line {   "   "и му пълни тайно}
      \line {   "   "с добрини душата}
      \line { " " }
      \line { "   " \italic {Припев ...} }
      \line { " " }
      \line { 5. Плодове тъй сладки, }
      \line {   "   " в Любовта узрели, }
      \line {   "   "най-блажен ще бъде}
      \line {   "   "тоз, който ви вкуси.}
      \line {   "   "В жилища небесни}
      \line {   "   "вечно ще живее,}
      \line {   "   "пред престола Божи}
      \line {   "   "песни ще да пее.}
    }

    \hspace #5
    \override #'(baseline-skip . 1.8)
    \column {
      \line { 1. Lyubovta e izvor, }
      \line {   "   " tya zhivota razhda }
      \line {   "   " i presvyata dlazhnost }
      \line {   "   " v nego krotko vsazhda. }
      \line {   "   "Vse napred da hodi}
      \line {   "   "v stremezh kam dobroto,}
      \line {   "   "shto e savarsheno}
      \line {   "   "gore na Nebeto.}
      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line {  "   " Raboti sas neya }
      \line { "   " v milosti zhelani, }
      \line { "   " pomoshtta nosi y }
      \line {  "   " za dushi stradalni.}
      \line { " " }
      \line { 2. I tuy neprestanno  }
      \line {   "   " varshi tya samata }
      \line {   "   " kato nezhna mayka }
      \line {   "   " vsekimu v dushata  }
      \line {   "   " postoyanno sadi}
      \line {   "   " sementsata dragi,}
      \line {   "   " ot koito niknat}
      \line {   "   " dobrinite blagi}
      \line { " " }
      \line { "   " \italic {Refrain ...} }
      \line { " " }
      \line { 3. Taz velika tayna }
      \line {   "   " koy dobre razbira, }
      \line {   "   " svoyta dusha mila }
      \line {   "   " sutrina razkriva. }
      \line {   "   " kakto krinat beli}
      \line {   "   "na rosa nebesna}
      \line {   "   "i na slanchevata}
      \line {   "   "svetlina chudesna.}
      \line { " " }
      \line { "   " \italic {Refrain ...} }
      \line { " " }
      \line { 4. Slantseto, koeto }
      \line {   "   " ozhivotvoryava, }
      \line {   "   " ovreme choveka}
      \line {   "   " toplo ozaryava, }
      \line {   "   "budi i vazrastva}
      \line {   "   "v nego sementsata}
      \line {   "   "i mu palni tayno}
      \line {   "   "s dobrini dushata}
      \line { " " }
      \line { "   " \italic {Refrain ...} }
      \line { " " }
      \line { 5. Plodove tay sladki, }
      \line {   "   " v Lyubovta uzreli, }
      \line {   "   "nay-blazhen shte bade}
      \line {   "   "toz, koyto vi vkusi.}
      \line {   "   "V zhilishta nebesni}
      \line {   "   "vechno shte zhivee,}
      \line {   "   "pred prestola Bozhi}
      \line {   "   "pesni shte da pee.}
    } %column
  } % markup
  
  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/026_lyubovta_e_izvor_lyrics_de.ly"

} % bookpart
