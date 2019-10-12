\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \minor
    \time 4/4 \tempo "Moderato" 4 = 60
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
    Lyu -- bov -- ta e iz -- vor: tya ZHi -- vo -- ta razh -- da
    i pre -- svya -- ta dlazh -- nost v~ne -- go krot -- ko vsazh -- da 
    vse na -- pred da ho -- di v~stre -- mezh kam Do -- bro -- to,
    shto e sa -- var -- she -- no go -- re na Ne -- be -- to.
    Ra -- bo -- ti sas ne -- ya v~mi -- los -- ti zhe -- la -- ni,
    po -- mosht -- ta no -- si y za du -- shi stra -- dal -- ni. 
  }

  \header {
    title = "Любовта е извор / Lyubovta e izvor"
  }

} % score

\markup {
    \hspace #10
    \vspace #4
    \fontsize #+1 {
    \column {
      \line { 1. Любовта е извор, }
      \line {   "   " тя живота ражда }  
      \line {   "   " и пресвята длъжност }
      \line {   "   " в него кротко всажда. } 
      \line {   "   "Все напред да ходи}
      \line {   "   "в стремеж към доброто,}
       \line {   "   "що е съвършено}
      \line {   "   "горе на Небето.}
      \line { " " }
       \line { "   " \italic {Припев: } }
      \line {  "   " Работи със нея }
      \line { "   " в милости желани, }
      \line { "   " помощта носи й }
      \line {  "   " за души страдални.}
    }
   \hspace #10 {
    \column  {
     \line { 1. Ljubovta e izvor, }
      \line {   "   " tja shivota rashda }  
      \line {   "   " i presvjata dlyshnost }
      \line {   "   " v nego krotko vsashda. } 
      \line {   "   "Vse napred da chodi}
      \line {   "   "v stremesh kym dobroto,}
      \line {   "   "shho e syvyrscheno}
      \line {   "   "gore na Nebeto.}
      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line {  "   " Raboti sys neja }
      \line { "   " v milosti shelani, }
      \line { "   " pomoshhta nosi i }
      \line {  "   " za duschi stradalni.}
    }
   }
   }
}

\markup {
    \hspace #10
    \vspace #1.9
    \fontsize #+1 {
    \column {
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
      \line { 4. Таз велика тайна }
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
      \line { 5. Слънцето, което }
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
   \hspace #10 {
    \column  {
      \line { 2. I tui neprestanno  }
      \line {   "   " vyrschi tja samata }  
      \line {   "   " kato neshna maika }
      \line {   "   " vsekimu v duschata  } 
      \line {   "   " postojanno sadi}
       \line {   "   " sementsata dragi,}
       \line {   "   " ot koito niknat}
      \line {   "   " dobrinite blagi}
    \line { " " }
       \line { "   " \italic {Pripev ...} }
       \line { " " }
      \line { 4. Taz velika taina }
      \line {   "   " koi dobre razbira, }  
      \line {   "   " svoita duscha mila }
      \line {   "   " sutrina razkriva. } 
     \line {   "   " kakto krinyt beli}
      \line {   "   "na rosa nebesna}
      \line {   "   "i na slyntschevata}
      \line {   "   "svetlina tschudesna.}
       \line { " " }
       \line { "   " \italic {Pripev ...} }
      \line { " " }
      \line { 5. Slyntseto, koeto }
      \line {   "   " oshivotvorjava, }  
      \line {   "   " ovreme tschoveka}
      \line {   "   " toplo ozarjava, } 
      \line {   "   "budi i vyzrastva}
      \line {   "   "v nego sementsata}
      \line {   "   "i mu pylni taino}
      \line {   "   "s dobrini duschata}
      \line { " " }
       \line { "   " \italic {Pripev ...} }
       \line { " " }
      \line { 5. Plodove tyi sladki, }
      \line {   "   " v Ljubovta uzreli, }  
      \line {   "   "nai-blashen shhe byde}
       \line {   "   "toz, koito vi vkusi.}
      \line {   "   "V shilishha nebesni}
       \line {   "   "vetschno shhe shivee,}
      \line {   "   "pred prestola Boshi}
      \line {   "   "pesni shhe da pee.}
    }    
    }
    }

}


} % bookpart
