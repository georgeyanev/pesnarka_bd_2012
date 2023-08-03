\version "2.24.1"

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

 \addlyrics {
      Lju -- bov -- ta e iz -- vor: tja Ži -- vo -- ta raž -- da
      i pre -- svja -- ta dlăž -- nost v~ne -- go krot -- ko vsaž -- da
      vse na -- pred da ho -- di v~stre -- mež kăm Do -- bro -- to,
      što e să -- văr -- še -- no go -- re na Ne -- be -- to.
      Ra -- bo -- ti săs ne -- ja v~mi -- los -- ti že -- la -- ni,
      po -- mošt -- ta no -- si i za du -- ši stra -- dal -- ni.
    }

    \header {
      title = \titleFunc "Любовта е извор" "Ljubovta e izvor"
    }

    \midi{}

  } % score

  \markup \fontsize #+1.9 {
    \hspace #10
    \override #'(baseline-skip . 1.8)
    \column {

      \line { 2. И туй непрестанно  }
      \line {   "   " върши тя самата }
      \line {   "   " като нежна майка }
      \line {   "   " всекиму в душата  }
      \line {   "   " постоянно сади}
      \line {   "   " семенцата драги,}
      \line {   "   " от които никнат}
      \line {   "   " Добрините благи.}
      \line { " " }
      \line { "   " \italic {Припев ...} }

     
    }

    \hspace #6
    \override #'(baseline-skip . 1.8)
     \column {

      \line { 2. I tuj neprestanno  }
      \line {   "   " vărši tja samata }
      \line {   "   " kato nežna majka }
      \line {   "   " vsekimu v dušata  }
      \line {   "   " postojanno sadi}
      \line {   "   " semencata dragi,}
      \line {   "   " ot koito niknat}
      \line {   "   " Dobrinite blagi.}
      \line { " " }
      \line { "   " \italic {Pripev ...} }

     
    } %column
  } % markup
  
 \pageBreak
  \markup \fontsize #+1.9 {
    \hspace #10
    \override #'(baseline-skip . 1.8)
    \column {
      \line { 3. Таз велика тайна }
      \line {   "   " кой добре разбира, }
      \line {   "   " свойта душа мила }
      \line {   "   " сутрина разкрива, }
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
      \line {   "   "с Добрини душата.}
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

    \hspace #6
    \override #'(baseline-skip . 1.8)
     \column {
      \line { 3. Taz velika tajna }
      \line {   "   " koj dobre razbira, }
      \line {   "   " svojta duša mila }
      \line {   "   " sutrina razkriva, }
      \line {   "   " kakto krinăt beli}
      \line {   "   "na rosa nebesna}
      \line {   "   "i na slănčevata}
      \line {   "   "svetlina čudesna.}
      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }
      \line { 4. Slănceto, koeto }
      \line {   "   " oživotvorjava, }
      \line {   "   " ovreme čoveka}
      \line {   "   " toplo ozarjava, }
      \line {   "   "budi i văzrastva}
      \line {   "   "v nego semencata}
      \line {   "   "i mu pălni tajno}
      \line {   "   "s Dobrini dušata.}
      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }
      \line { 5. Plodove tăj sladki, }
      \line {   "   " v Ljubovta uzreli, }
      \line {   "   "naj-blažen šte băde}
      \line {   "   "toz, kojto vi vkusi.}
      \line {   "   "V žilišta nebesni}
      \line {   "   "večno šte živee,}
      \line {   "   "pred prestola Boži}
      \line {   "   "pesni šte da pee.}
    } %column
    
  } % markup

   \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/026_lyubovta_e_izvor_lyrics_de.ly"

} % bookpart
