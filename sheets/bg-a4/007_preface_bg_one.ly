\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##f


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #9 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #9 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 2.5\cm
    right-margin = 2.5\cm
    top-margin = 1.5\cm
    bottom-margin = 2.5\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 8\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }


  \tocItem \markup "Предговор към първото издание"
  \markup \abs-fontsize #15  { \fill-line {"Предговор към първото издание"} }

  \markup \abs-fontsize #12 {
    \vspace #1.5 \override #'(baseline-skip . 3.4)
    \justify {

      Песните в този сборник са въплъщение на малка част от вниманието, любовта и значението, които Учителя отдава на музиката като средство за пробуждане на Божественото съзнание у хората – у тези, които живеят с Неговото слово. Тяхната поява на
      бял свят е едно естествено явление, тъй като са рожба на свещен проблясък, в който една Божествена идея се превръща в музика.

    }
  }
  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Предлаганото издание е съставено от два раздела. Първият от тях, озаглавен \italic"Братски песни," съдържа произведения,
      които бяха дадени и имаха широка популярност преди още Учителя да открие
      окултната школа, в която по-късно добави и окултните упражнения,
      съставящи втората част от сборника – \italic"Песни" \italic"от" \italic"Учителя." Тези последни упра- жнения са родени по време на лекциите на Учителя,
      когато той опитваше въздействието на една нова, непозната
      дотогава музика върху съзнанието на своите ученици.
    }
  }

  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      И в първия раздел има много песни, също дадени от Учителя,
      и затова в коментара в края на сборника е посочено кои от песните
      са негови и кои са написани от ученици по негови мотиви, и най-накрая – кои са от други автори. Характерно за песните в първата
      част, \italic"Братски" \italic"песни," е, че носят белега на първите стъпки на
      ученичеството, когато човешката душа търси утеха в смирението,
      във всеотдайното и сърдечно отношение на човека към Небесната
      милост, която му е дарил животът. В предаността и вярата, които
      лъхат от тези песни, стъпилите на пътя на възхода намират
      упование и чиста радост.
    }
  }
  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Упражненията във втората част, \italic"Песни" \italic"от" \italic"Учителя," наречени
      окултни музикални упражнения, имат съвсем друг характер. В
      тях е проведено нещо ново, неизвестно на досегашната музика
      – строеж в мелодията и музикалната архитектоника, който носи
      вътрешна сила. Това не са обикновени песни, а мелодии, които
      се свързват със Словото така, че изразяват неговата музикална
      еднозначност. Всички те са дадени от Учителя. Само някои от
      тях, при които това е отбелязано, са създадени в сътрудничество
      с ученици музиканти. Песните имат духовно пре- възпитателно
      значение. Те внасят в съзнанието нов елемент и вграждат в
      човешката душа нова стойност.
    }
  }
  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5


      Който познава дълбокия смисъл на Словото, лесно ще си обясни
      как то може да се превърне в песен и магия – с власт да преобразява човека, като разширява хоризонта на мисълта, дава живителна топлина на чув- ствата и могъщ размах на творческата воля.

    }
  }



  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      В Школата на Бялото Братство музиката е едно от най-могъщите средства за духовна работа.
      Затова всяко от предлаганите упражнения със своята мелодия и ритъм оказва въздействие върху
      слушателя. То докосва определени струни в душата и поощрява
      духовната дейност в определена посока.
    }
  }

  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Както всичко, което Учителя дава в работата си със своите
      ученици, така и тези песни имат характерна окраска на голяма,
      неподдаваща се на анализ самобитност, подходяща за високите
      задачи на Новото учение – кълн от предвечната Истина, което тук,
      у нас, в лицето на Учителя е намерило оригинално превъплъщение.
      Неговият стожер е святата Христова дума \italic"Любов."
    }
  }

  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Песните в този сборник имат и друго интимно и загадъчно
      съдържание, което още по-малко подлежи на обикновена
      музикална преценка, защото предназначението им съществено се
      различава от това на останалите песни.
    }
  }

  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5
      Четците и любителите на тоя вид музика, присъствали при
      раждането на тези песни (а те не са малко, защото Учителя, както
      бе споменато по-горе, пееше или свиреше на своята цигулка
      по време на някоя утринна беседа), са доловили най-добре
      вътрешната психологична причина за тяхното появяване и прякото
      им въздействие върху себе си. Те са свидетели как Словото става
      песен, приобщило всички, които съзнателно вървят по пътя на
      ученичеството към изобилния Живот.
    }
  }

  \markup \abs-fontsize #12 {
    \vspace #0.9 \override #'(baseline-skip . 3.4)
    \justify {
      \hspace #1.5

      Известно е, че хората по различен начин разбират и оценяват
      дадена творба, но онези, които познават кротката радост на Духа,
      са оценили песните на Учителя най-дълбоко и ги носят като скъп
      дар в своите сърца.


    }
  }



  \markup \abs-fontsize #12 \raise #0 \override #'(baseline-skip . 3.4) {
    \column {
      \line {"  "}
      \fill-line { "" ""  \italic {"София, 1949 г.  "} }
    }
  }



} % bookpart



% Più mosso
% „Weiße Bruderschaft“