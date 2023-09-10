\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##f
    print-page-number = ##t
    print-first-page-number = ##f

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


  }

  \tocItem \markup "Vorwort"
  \markup \fontsize  #+3.0 { \fill-line \bold {"ПЕДГОВОР"} }


  \markup \fontsize #+2.5 {
    \vspace #1.5 \override #'(baseline-skip . 2.7)
    \justify-string "
   
   Настоящият сборник съдържа песни и инструментални творби от духовния учител Петър Константинов Дънов – Беинса Дуно (1864 – 1944), основоположник на Духовно общество Бяло Братство в България, и от негови ученици.
    
  Музикалното творчество на Учителя Петър Данов се заражда като музикален метод в окултната школа на Бялото братство, която  той открива през 1922 г. Обучението продължава до 1944 г. По този начин той подготвя нов музикален жанр, който нарича  „окултна музика“. Данов го основава на нов музикален героизъм и естетика, които последователно развива в много лекции. Данов нарича музикалните си композиции „упражнения по окултна музика“, които свири на цигулката си по време на лекциите и преподава на студентите си. Записването на музикалния текст на песните е било задача на музикантите, присъстващи на лекциите. Особено внимание заслужават професор Асен Арнаудов, Боян Икономов, Лиляна-Цветана Табакова, Мария Тодорова, Матей Калудов, Христо Дарсев и т.н. Някои композиции, сред които и „Новото битие“, са написани по време на частните уроци, които Данов дава на определени студенти; други са родени от конкретен повод в живота на окултния студент. Много от мелодиите обаче не са записани. Пример за това е песента „Блудният син“ - музикален мотив, който Данов изпълнява като концерт пред свои ученици в Америка още като студент и отново като концерт пред свои ученици в клас 30 години по-късно. Според спомените на присъстващите музиканти изсвирената композиция не е била обект на никакъв музикален запис. Данов е прекарал 30 години в
  завръщането на скъпия гост [на блудния син] се чакаше. Друг пример са мелодиите, в които Данов използва микроинтервали и по този начин композира четвърттонова музика. Микроинтервалите, четвърттоновете и осмините в музиката са били тема на многобройните лекции на Данов. Според Данов те могат да изразяват чувствата по музикален път в особена степен.
  "
  }
  \pageBreak



  \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7){
    \justify-string " 
    die Rückkehr des teueren Gastes [auf dem verlorenen Sohn] gewartet. Ein anderes Beispiel sind Melodien, in denen Danov Mikrointervale einsetzte und so Viertelton-Musik komponierte. Die Mikrointervale, die viertel und die achtel Töne in der Musik thematisierte Danov in vielen Vorträgen. Sie können nach Danov in besonderem Maßen die Gefühle musikalisch zum Ausdruck bringen.

    Die erste vollständige Ausgabe von Danovs musikalischem Werk wurde 1949 unter dem Titel „Pesni ot Učitelja“ [Lieder des Meisters] von Maria Todorova in Sofia veröffentlicht. Diese wurde jedoch wegen der ungünstigen politischen Bedingungen viel zu schnell vorbereitet, weshalb in ihr nicht wenige Fehler zu finden sind; es wurden unter anderem Notenaufzeichnungen verwendet, die während der Vorträge von nicht immer professionellen Musikern erstellt wurden. 

    2012 entstand eine überarbeitete Auflage von Danovs musikalischem Werk unter der Redaktion von Peter Ganev. Während ihrer Vorbereitung wurden folgende Aspekte im Hinblick der Entstehungsgeschichte der einzelnen Lieder ersichtlich: Manche Lieder unterlagen einer zweifachen Veränderung. Einige wurden weiterentwickelt, andere der Bequemlichkeit halber von nicht ausreichend vorbereiteten Musiken vereinfacht, wodurch sie an energetischer Aufladung eingebüßt haben. In der Praxis behaupteten sich diese jedoch als wohlklingender. Eine Reihe Veränderungen mancher Tonhöhen sowie mancher rhythmischen Figuren haben einen natürlicheren Klang gefunden. 

    Die redaktionelle Arbeit, die der Ausgabe von 2012 zugrunde gelegt wurde, umfasstе laut Peter Ganev folgende Punke:

    1. Zum ersten Mal wurden in ihr sechszehn Werke von Danov und sechs Texte zu seinen Melodien und Themen veröffentlicht. Aufgenommen wurden auch sechs Lieder von seinen Schülern, die in der Ausgabe von 1949 nicht veröffentlicht worden waren, aber im musikalischen Leben der Gemeinschaft gegenwärtig.

    2. Es erfolgten nötige Korrekturen der metrorhythmischen Organisation, die dem Aufbau des musikalischen Gedankens entsprechen. Bei der Redaktion wurde das Prinzip der klassischen Prosodie berücksichtigt, so dass die betonte musikalische Zeit der betonten Silbe des Textes entspricht. Die metronomischen Tempoangaben wurden nach Informationen bekannter Musiker aus der Bruderschaft wie Philip Stoizev, Irina Kisiova, Maria Zlateva und Katja Griva gesetzt. Die Kommentare zu den Liedern wurden der Ausgabe 1949 entnommen und mit neuen Informationen ergänzt. 
    
    3. In Bezug auf die Notenrechtschreibung halte sie sich an alle Forderungen der heutigen Musikverlage, die sich in der Musiktheorie bestätigt haben. Das gelte im höchsten Maße für die logischen Akzente im poetischen und musikalischen Text,"
  }


  \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7) {
    \justify-string "
   

    die synchron im gegebenen Takt des Liedes verteilt wurden. Ein anderer wichtiger Faktor sei der harmonische Aufbau der Melodie, deren Richtungen die Musikbilder formen.

    4. Das Ergebis der redaktionellen Arbeit bestand laut Ganev darin, den musikalischen und poetischen Text optimal aufrechterzuerhalten, indem sie ihn logisch in den entsprechenden Takten gemäß des harmonischen Aufbaus der Melodie verteilte. Denn die Auswahl der Tonarten sei bei Danov nicht zufällig. Sie bringe die Verbindung
    zwischen den Farben, den Tönen der Planeten und den Zahlen zum Ausdruck. Jeder Versuch eines bequemeren Transponierens nehme etwas von der Klangfarbe weg.

    Der Vollständigkeit halber ist hier noch die Ausgabe von 1999 zu erwähnen, die von Blagovest Zhekov veröffentlich wurde. Dieses Sammelband hat folgende Vorzüge: Er löst einen Teil der Probleme bei der Notenschreibung und führt zum ersten Mal phonetische Transkriptionen in lateinischer Schrift ein.

   Das vorliegende Sammelband enthält drei Teile: 

    1. Brüderliche Lieder: Das sind alle Kompositionen, die vor 1922 enstanden waren und größtenteils von Schülern nach Ideen von Danov komponiert wurden.
    
    2. Lieder von Peter Danov: Das sind alle Kompositionen, die von 1922 bis 1944 innerhalb der von Danov eröffneten okkulten Schule der Weißen Bruderschaft entstanden waren. Der Autor von Melodie und Text ist Danov selbst. 

    3. Lieder, die nach 1944 veröffentlicht wurden: Das sind alle Lieder, die nach Danovs Tod 1944 veröffentlicht wurden. In diesem Teil sind viele Lieder enthalten, die im Privatunterricht entstanden waren. Besonders ist hier der Zyklus von sieben Liedern Die Neue Genesis hervorzuheben, die eine neue Strömung innerhalb von Danovs musikalischen Werk darstellt. Dieser Teil enthält viele reine Instrumeltalkompositionen und Melodien. 


    



    
    "
  }



  \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7) {
    \justify-string "
  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

   "
  }

    \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7) {
    \justify-string "
  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

 Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

 Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

   "
  }




} % bookpart

% Più mosso
% „Weiße Bruderschaft“
