\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref060
  \tocItem \markup "На Христа запейте – Na Hrista zapejte "
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
      наш во -- ди -- тел, ис -- тин -- ски -- ят наш Жи -- вот, Не -- го --
      во -- то креп -- ко И -- ме да се сла -- ви в~род и род.
    }

     \addlyrics {
      "1. No" -- vi hi -- mni na I -- su -- sa da za -- pe -- em
      v~to -- ja čas, Bo -- ži Sin e Toj pred -- ve --
      čen na Ne -- be -- to i văv nas.  Naš U -- či -- tel,
      naš vo -- di -- tel, is -- tin -- ski -- jat naš Ži -- vot, Ne -- go --
      vo -- to krep -- ko I -- me da se sla -- vi v~rod i rod.
    }

    \header {
      title = \titleFunc "На Христа запейте" "Na Hrista zapejte"
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

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
   \column {
      \line {   2.  Na Hrista zapejte himni  }

      \line {   "   " novi v toz tăržestven čas, }

      \line {   "   " Toj e Boži Sin, izpraten }

      \line {   "   " na Zemjata zarad nas. }

      \line {   "   " Toj života Si položi }

      \line {   "   " ot greha da ni spasi, }

      \line {   "   " kato smărtnik v groba sleze }

      \line {   "   " mărtvite da văzkresi. }
      \line {   "   "}

      \line {   3.  I kogato se proslavi, }

      \line {   "   " nov zavet ni dade Toj, }

      \line {   "   " naj-velikija ot vsički, }

      \line {   "   " Ljubovta – zakona Svoj. }

      \line {   "   " Blagovestvuva i reče: }

      \line {   "   " „Vij ste Moi, Az Săm vaš, }

      \line {   "   " horata sa vsički bratja, }

      \line {   "   " Bog Otec e tatko naš. }

    } %column
  } % markup

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {


      \line {  4.  Един друг се залюбете, }

      \line {   "   " тъй се служи на Отца; }

      \line {   "   " и Отец ви всички люби, }

      \line {   "   " като Негови деца. }

      \line {   "   " Аз съм жив хляб от Небето, }

      \line {   "   " аз съм истинска лоза, }

      \line {   "   " Словото Ми опазете, }

      \line {   "   " заживейте в Любовта! }
      \line {   "   "}

      \line {   5.  Само в нея е живота, }

      \line {   "   " нейна е радостта, }

      \line {   "   " тя създава всяко благо, }

      \line {   "   " тя едничка, Любовта.“ }

      \line {   "   " Тъй ни учеше тогава,  }

      \line {   "   " тъй ни шепне и сега, }

      \line {   "   " и възкръсват ми в душата }

      \line {   "   " тези Негови слова. }
    }


    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
   \column {


      \line {  4.  Edin drug se zaljubete, }

      \line {   "   " tăj se služi na Otca; }

      \line {   "   " i Otec vi vsički ljubi, }

      \line {   "   " kato Negovi deca. }

      \line {   "   " Az săm živ hljab ot Nebeto, }

      \line {   "   " az săm istinska loza, }

      \line {   "   " Slovoto Mi opazete, }

      \line {   "   " zaživejte v Ljubovta! }
      \line {   "   "}

      \line {   5.  Samo v neja e života, }

      \line {   "   " nejna e radostta, }

      \line {   "   " tja săzdava vsjako blago, }

      \line {   "   " tja ednička, Ljubovta.“ }

      \line {   "   " Tăj ni učeše togava,  }

      \line {   "   " tăj ni šepne i sega, }

      \line {   "   " i văzkrăsvat mi v dušata }

      \line {   "   " tezi Negovi slova. }
    } %column
  } % markup

  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/060_na_Hrista_zapeyte_lyrics_de.ly"

} % bookpart
