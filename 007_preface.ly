\version "2.24.1"

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
  \markup \fontsize  #+3.0 { \fill-line \bold {"VORWORT"} }


  \markup \fontsize #+2.5 {
    \vspace #1.5 \override #'(baseline-skip . 2.7)
    \justify-string "
    
    Der gegenwärtige Sammelband enthält Lieder und Instrumentalwerke des spirituellen Lehrers Petar Danov – Beinsa Duno, dem Gründer der geistigen Bewegung „Weiße Bruderschaft“ in Bulgarien sowie Lieder seiner Schüler in bulgarischer und deutscher Sprache. 

    Als Grundlage des vorliegenden Sammelbandes diente die Ausgabe von 2012, die unter der Redaktion von Peter Ganev in Sofia veröffentlicht wurde. Er enthält neben dem Notentext und dem literarischen Text in bulgarischer Sprache eine latinisierte Transliteration der kyrillischen Buchstaben sowie eine Übersetzung der Liedertexte in deutscher Sprache. Hierbei war das Ziel, eine möglichst genaue und zugleich wohlklingende deutsche Übersetzung darzubieren, die das Verständnis des geistigen Gehalts der Musik und der ihr zugrundeliegenden Ideen unterstützt. Von einer metischen, in deutscher Sprache zu singenden Übersetzung der Liedertexte haben wir bewusst abgesehen, weil sie das Klangbild der Lieder verfälschen würde. Ferner haben wir alle in den Liedern vorkommenden Wiederholungen von Phrasen oder einzelnen Wörtern in der Übersetzung beibehalten. Denn in Verbindung mit der melodischen Bewegung kommt jeder Wiederholung jeweils eine andere Bedeutung zu. Gleichzeitig fungiert sie als Affirmation und ist somit sinnhaft. 
    
    Das musikalische Werk Danovs entstand als musikalische Methode innerhalb der okkulten Schule der Weißen Bruderschaft, die Danov 1922  eröffnete. Der Unterricht dauerte bis 1944 an. Damit bereitete er eine neue Musikgattung, die er „okkulte Musik“ nannte, vor. Dieser legte Danov einer neuen Musiktheroie und Ästhetik zugrunde, die er in vielen Vorträgen sukkzessive entwickelt. Danov nannte seine Musikkompositionen „okkulte Musikübungen“, die er während der Vorträge auf seiner Geige vorspielte und seinen Schülern unterrichtete. Die Aufzeichnung des Notentextes der Lieder war Aufgaben der bei den Vorträgen anwesenden Musiker. Besonders hervorzuheben sind Prof. Asen Arnaudov, Bojan Ikonomov, Liljana-Zvetana Tabakova, Maria Todorova, Matei Kaludov, Hristo Darsev u. a. Manche Kompositionen unter anderem „Die Neue Genesis“ entstanden im Privatunterricht, dem Danov bestimmten Schülern gewährte; andere wurden aus einem konkreten Anlass im Leben des okkulten Schülers geboren. Viele der Melodien wurden jedoch nicht aufgezeichnet. Ein Beispiel hierfür ist das Lied „Der verlorene Sohn“ – ein musikalisches Motiv, das Danov als Student in Amerika bei einem Konzert und nach 30 Jahren seinen Schülern im Unterricht als Konzert wieder vorspielte. Die vorgespielte Komposition  unterlag"
  }
  \pageBreak



  \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7){
    \justify-string " 
   laut Erinnerungen der anwesenden Musiker keiner musikalischen Aufzeichnung. Danov habe 30 Jahre auf die Rückkehr des teueren Gastes [auf dem verlorenen Sohn] gewartet. Ein anderes Beispiel sind Melodien, in denen Danov Mikrointervale einsetzte und so Viertelton-Musik komponierte. Die Mikrointervale, die viertel und die achtel Töne in der Musik thematisierte Danov in vielen Vorträgen. Sie können nach Danov in besonderem Maßen die Gefühle musikalisch zum Ausdruck bringen.

    Die erste vollständige Ausgabe von Danovs musikalischem Werk wurde 1949 unter dem Titel „Pesni ot Učitelja“ von Maria Todorova in Sofia veröffentlicht. Diese wurde jedoch wegen der ungünstigen politischen Bedingungen viel zu schnell vorbereitet, weshalb in ihr nicht wenige Fehler zu finden sind; es wurden unter anderem Notenaufzeichnungen verwendet, die während der Vorträge von nicht immer professionellen Musikern erstellt wurden. 

    2012 entstand eine überarbeitete Auflage von Danovs musikalischem Werk unter der Redaktion von Peter Ganev. Während ihrer Vorbereitung wurden folgende Aspekte im Hinblick der Entstehungsgeschichte der einzelnen Lieder ersichtlich: Manche Lieder unterlagen einer zweifachen Veränderung. Einige wurden weiterentwickelt, andere der Bequemlichkeit halber von nicht ausreichend vorbereiteten Musiken vereinfacht, wodurch sie an energetischer Aufladung eingebüßt haben. In der Praxis behaupteten sich diese jedoch als wohlklingender. Eine Reihe Veränderungen mancher Tonhöhen sowie mancher rhythmischen Figuren haben einen natürlicheren Klang gefunden. 

    Die redaktionelle Arbeit, die der Ausgabe von 2012 zugrunde gelegt wurde, umfasstе laut Peter Ganev folgende Punke:

    1. Zum ersten Mal wurden in ihr sechszehn Werke von Danov und sechs Texte zu seinen Melodien und Themen publiziert. Aufgenommen wurden auch sechs Lieder von seinen Schülern, die in der Ausgabe von 1949 nicht publiziert worden waren, aber im musikalischen Leben der Gemeinschaft gegenwärtig.

    2. Es erfolgten nötige Korrekturen der metrorhythmischen Organisation, die dem Aufbau des musikalischen Gedankens entsprechen. Bei der Redaktion wurde das Prinzip der klassischen Prosodie berücksichtigt, so dass die betonte musikalische Zeit der betonten Silbe des Textes entspricht. Die metronomischen Tempoangaben wurden nach Informationen bekannter Musiker aus der Bruderschaft wie Philip Stoizev, Irina Kisiova, Maria Zlateva und Katja Griva gesetzt. Die Kommentare zu den Liedern wurden der Ausgabe 1949 entnommen und mit neuen Informationen ergänzt. 
    
    3. In Bezug auf die Notenrechtschreibung halte sie sich an alle Forderungen der "
  }


  \markup \fontsize #+2.5 \override #'(baseline-skip . 2.7) {
    \justify-string "
   

    heutigen Musikverlage, die sich in der Musiktheorie bestätigt haben. Das gelte im höchsten Maße für die logischen Akzente im poetischen und musikalischen Text, die synchron im gegebenen Takt des Liedes verteilt wurden. Ein anderer wichtiger Faktor sei der harmonische Aufbau der Melodie, deren Richtungen die Musikbilder formen.

    4. Das Ergebis der redaktionellen Arbeit bestand laut Ganev darin, den musikalischen und poetischen Text optimal aufrechterzuerhalten, indem sie ihn logisch in den entsprechenden Takten gemäß des harmonischen Aufbaus der Melodie verteilte. Denn die Auswahl der Tonarten sei bei Danov nicht zufällig. Sie bringe die Verbindung
    zwischen den Farben, den Tönen der Planeten und den Zahlen zum Ausdruck. Jeder Versuch eines bequemeren Transponierens nehme etwas von der Klangfarbe weg.

    Der Vollständigkeit halber möchten wir noch die Ausgabe von 1999 erwähnen, die von Blagovest Zhekov veröffentlich wurde. Dieses Sammelband hat folgende Vorzüge: Er löst einen Teil der Probleme bei der Notenschreibung und führt zum ersten Mal phonetische Transkriptionen in lateinischer Schrift ein.

    Danovs musikalische Werk lässt sich in drei Teilen gliedern: 

    1. Brüderliche Lieder, das sind alle Kompositionen, die von 1922 enstanden waren und  


    



    
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
