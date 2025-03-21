\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t


    % put page numbers on the top and change the font style.
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }


  \tocItem \markup "Vorwort"
  \markup \abs-fontsize #12 { \fill-line \bold {"VORWORT"} }


  \markup \abs-fontsize #11 {
    \vspace #1.5 \override #'(baseline-skip . 3.6)
    \justify-string "
    
    Der gegenwärtige Sammelband enthält Lieder und Instrumentalwerke des spirituellen Lehrers Petar Danov – Beinsa Duno, dem Gründer der geistigen Bewegung „Weiße Bruderschaft“ in Bulgarien sowie Lieder seiner Schüler in bulgarischer und deutscher Sprache. 

    Als Grundlage des vorliegenden Sammelbandes diente die Ausgabe von 2012, die unter der Redaktion von Peter Ganev in Sofia veröffentlicht wurde. Er enthält neben dem Notentext und dem literarischen Text in bulgarischer Sprache eine latinisierte Transliteration der kyrillischen Buchstaben sowie eine Übersetzung der Liedertexte in deutscher Sprache. Hierbei war das Ziel, eine möglichst genaue und zugleich wohlklingende deutsche Übersetzung darzubieren, die das Verständnis des geistigen Gehalts der Musik und der ihr zugrundeliegenden Ideen unterstützt. Von einer metischen, in deutscher Sprache zu singenden Übersetzung der Liedertexte wurde bewusst abgesehen, weil sie das Klangbild der Lieder verfälschen würde. Ferner wurden alle in den Liedern vorkommenden Wiederholungen von Phrasen oder einzelnen Wörtern in der Übersetzung beibehalten. Denn in Verbindung mit der melodischen Bewegung kommt jeder Wiederholung jeweils eine andere Bedeutung zu. Gleichzeitig fungiert sie als Affirmation und ist somit sinnhaft. 
    
    Das musikalische Werk Danovs entstand als musikalische Methode innerhalb der okkulten Schule der Weißen Bruderschaft, die Danov 1922  eröffnete. Der Unterricht dauerte bis 1944 an. Damit bereitete er eine neue Musikgattung, die er „okkulte Musik“ nannte, vor. Dieser legte Danov einer neuen Musiktheroie und Ästhetik zugrunde, die er in vielen Vorträgen sukkzessive entwickelt. Danov nannte seine Musikkompositionen „okkulte Musikübungen“, die er während der Vorträge auf seiner Geige vorspielte und seinen Schülern unterrichtete. Die Aufzeichnung des Notentextes der Lieder war Aufgaben der bei den Vorträgen anwesenden Musiker. Besonders hervorzuheben sind Prof. Asen Arnaudov, Bojan Ikonomov, Liljana-Zvetana Tabakova, Maria Todorova, Matei Kaludov, Hristo Darsev u. a. Manche Kompositionen unter anderem „Die Neue Genesis“ entstanden im Privatunterricht, dem Danov bestimmten Schülern gewährte; andere wurden aus einem konkreten Anlass im Leben des okkulten Schülers geboren. Viele der Melodien wurden jedoch nicht aufgezeichnet. Ein Beispiel hierfür ist das Lied „Der verlorene Sohn“ – ein musikalisches Motiv, das Danov als Student in Amerika bei einem Konzert und nach 30 Jahren seinen Schülern im Unterricht als Konzert wieder vorspielte. Die vorgespielte Komposition  unterlag  laut Erinnerungen der anwesenden Musiker keiner musikalischen Aufzeichnung. Danov habe 30 Jahre auf"
  }
  \pageBreak



  \markup \abs-fontsize #11 \override #'(baseline-skip . 3.6){
    \justify-string " 
    die Rückkehr des teueren Gastes [auf dem verlorenen Sohn] gewartet. Ein anderes Beispiel sind Melodien, in denen Danov Mikrointervale einsetzte und so Viertelton-Musik komponierte. Die Mikrointervale, die viertel und die achtel Töne in der Musik thematisierte Danov in vielen Vorträgen. Sie können nach Danov in besonderem Maßen die Gefühle musikalisch zum Ausdruck bringen.

    Die erste vollständige Ausgabe von Danovs musikalischem Werk wurde 1949 unter dem Titel „Pesni ot Učitelja“ [Lieder des Meisters] von Maria Todorova in Sofia veröffentlicht. Diese wurde jedoch wegen der ungünstigen politischen Bedingungen viel zu schnell vorbereitet, weshalb in ihr nicht wenige Fehler zu finden sind; es wurden unter anderem Notenaufzeichnungen verwendet, die während der Vorträge von nicht immer professionellen Musikern erstellt wurden. 

    2012 entstand eine überarbeitete Auflage von Danovs musikalischem Werk unter der Redaktion von Peter Ganev. Während ihrer Vorbereitung wurden folgende Aspekte im Hinblick der Entstehungsgeschichte der einzelnen Lieder ersichtlich: Manche Lieder unterlagen einer zweifachen Veränderung. Einige wurden weiterentwickelt, andere der Bequemlichkeit halber von nicht ausreichend vorbereiteten Musiken vereinfacht, wodurch sie an energetischer Aufladung eingebüßt haben. In der Praxis behaupteten sich diese jedoch als wohlklingender. Eine Reihe Veränderungen mancher Tonhöhen sowie mancher rhythmischen Figuren haben einen natürlicheren Klang gefunden. 

    Die redaktionelle Arbeit, die der Ausgabe von 2012 zugrunde gelegt wurde, umfasstе laut Peter Ganev folgende Punke:

    1. Zum ersten Mal wurden in ihr sechszehn Werke von Danov und sechs Texte zu seinen Melodien und Themen veröffentlicht. Aufgenommen wurden auch sechs Lieder von seinen Schülern, die in der Ausgabe von 1949 nicht veröffentlicht worden waren, aber im musikalischen Leben der Gemeinschaft gegenwärtig.

    2. Es erfolgten nötige Korrekturen der metrorhythmischen Organisation, die dem Aufbau des musikalischen Gedankens entsprechen. Bei der Redaktion wurde das Prinzip der klassischen Prosodie berücksichtigt, so dass die betonte musikalische Zeit der betonten Silbe des Textes entspricht. Die metronomischen Tempoangaben wurden nach Informationen bekannter Musiker aus der Bruderschaft wie Philip Stoizev, Irina Kisiova, Maria Zlateva und Katja Griva gesetzt. Die Kommentare zu den Liedern wurden der Ausgabe 1949 entnommen und mit neuen Informationen ergänzt. 
    
    3. In Bezug auf die Notenrechtschreibung halte sie sich an alle Forderungen der heutigen Musikverlage, die sich in der Musiktheorie bestätigt haben. Das gelte im höchsten Maße für die logischen Akzente im poetischen und musikalischen Text,"
  }


  \markup \abs-fontsize #11 \override #'(baseline-skip . 3.6) {
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



  \markup \abs-fontsize #11 \override #'(baseline-skip . 3.6) {
    \justify-string "
  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

   "
  }

  \markup \abs-fontsize #11 \override #'(baseline-skip . 3.6) {
    \justify-string "
  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

 Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

 Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

   "
  }




} % bookpart

% Più mosso
% „Weiße Bruderschaft“
