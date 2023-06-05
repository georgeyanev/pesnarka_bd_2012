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
    \vspace #1.5
    \justify-string "Die Lieder in diesem Sammelband sind eine Verkörperung eines kleinen Teils der Achtung, der Liebe und der Bedeutung, die der Meister der Musik als Mittel zum Erwachen des göttlichen Bewusstseins im Menschen, jenen, die mit seinem Wort leben, schenkte. Die Entstehung der Lieder ist ein natürliches Phänomen, da sie das Kind eines heiligen Schimmers sind, in welchem eine göttliche Idee zur Musik wird. 

Die vorliegende Ausgabe besteht aus zwei Teilen. Der erste Teil wurde Brüderliche Lieder betitelt und enthält Werke, die gegeben wurden und große Popularität genossen, noch bevor der Meister die okkulte Schule eröffnete. In dieser fügte er später noch die okkulten Musikübungen hinzu, die den zweiten Teil des Sammelbands ausmachen. Die letzteren entstanden während der Vorträge des Meisters Beinsa Duno, als er den Einfluss einer neuen, bis zu diesem Zeitpunkt unbekannten Musik auf das Bewusstsein der Schüler prüfte.

Im ersten Teil gibt es viele Lieder, die vom Meister Beinsa Duno gegeben wurden. Deshalb wurde am Ende des Sammelbandes angegeben, welche Lieder von Schülern nach Motiven des Meisters geschrieben wurden und welche von anderen Autoren stammen. Charakteristisch für die ersten Lieder, die Brüderlichen Lieder, ist es, dass sie das Zeichen der ersten Schritte in der Schülerschaft in sich tragen, wenn die menschliche Seele nach Zuversicht in der Demut, also in der hingebungsvollen und herzlichen Beziehung des Menschen zur göttlichen Barmherzigkeit trachtet, die ihm das Leben schenkte. Diejenigen, die den Weg des Aufstiegs eingeschlagen haben, finden Zuversicht und reine Freude in der Hingebung und im Glauben, die aus diesen Liedern strömen. "
  }
  \pageBreak

  \markup \fontsize #+2.5 {
    \justify-string "


 Die Übungen im zweiten Teil, Lieder des Meisters, die okkulte Musikübungen genannt wurden, haben einen ganz anderen Charakter. Sie wurden von etwas, Neuem für die bisherige Musik Unbekanntem hinsichtlich des Aufbaus der Melodie und der musikalischen Architektonik durchdrungen, was innere Kraft in sich trägt. Dies sind keine gewöhnlichen Lieder, sondern Melodien, die derart mit dem Wort verbunden wurden, dass sie seine musikalische Eindeutigkeit zum Ausdruck bringen. Die Lieder haben eine geistig-umerzieherische Bedeutung. Sie bringen in das Bewusstsein ein neues Element hinein und verleihen der Seele einen neuen Wert.

Wer den tieferen Sinn des Wortes kennt, wird sich leicht erklären, wie es sich in Musik und in Magie verwandeln kann, auf dass es mit Macht den Menschen transformiert, indem es seinen Gedankenhorizont erweitert, den Gefühlen lebendige Wärme und seinem schöpferischen Willen einen machtvollen Schwung gibt.

In der Schule der Weißen Bruderschaft ist die Musik eines der mächtigsten Mittel für die geistige Arbeit. Deshalb übt jede der dargebotenen Übungen mit ihrer Melodie und ihrem Rhythmus Einfluss auf den Hörer aus. Sie berührt bestimmte Saiten der Seele und unterstützt die geistige Tätigkeit in einer bestimmten Richtung. Wie alles, was der Meister während der Arbeit mit seinen Schülern weitergab, weisen diese Lieder die charakteristische Färbung einer Einzigartigkeit auf, die für die hohen Aufgaben der Neuen Lehre geeignet ist – ein Keim der vorewigen Wahrheit, die hier bei uns, in Gestalt des Meisters, ihre originelle Verkörperung fand. Seine Stütze ist das heilige Wort Christi –  die Liebe.

Die Lieder in diesem Sammelband haben auch einen anderen, innigen und geheimnisvollen Inhalt, der noch weniger einer gewöhnlichen Musikbewertung"

  }

  \markup \fontsize #+2.5 {
    \justify-string " unterliegen kann, denn ihre Bestimmung unterscheidet sich wesentlich von der Bestimmung anderer Lieder. Die Liebhaber dieser Art von Musik, die bei der Geburt dieser Lieder anwesend waren (und diese sind nicht wenige, weil der Meister – wie oben erwähnt – auf seiner Geige während eines Morgenvortrags sang oder spielte), vernahmen am besten die innere psychologische Ursache für ihre Entstehung und ihren unmittelbaren Einfluss. Sie waren Zeugen, wie das Wort zum Lied wurde, das alle einbezogen hatte, die auf dem Weg der Schülerschaft bewusst nach reichhaltigem Leben streben.

Es ist bekannt, dass die Menschen auf unterschiedliche Weise ein bestimmtes Werk verstehen und bewerten, aber diejenigen, die die sanftmütige Freude des Geistes erkannt haben, bewerteten die Lieder tiefgründiger und tragen sie als ein teures Geschenk in ihren Herzen."
  }

  \markup \fontsize #+2.5 {
    \vspace #1.0
    \hspace #55
    \justify-string " Sofia, 1949 "
  }

  \pageBreak

  \markup \fontsize  #+5.5 {\bold {Vorwort zur zweiten bulgarischen Ausabe} }


  \markup \fontsize #+2.5 {
    \vspace #1.5
    \justify-string " Der gegenwärtige Sammelband enthält Lieder und instrumentelle Werke von Meister Beinsa Duno, dem Gründer der geistigen Bewegung Weiße Bruderschaft in Bulgarien, sowie Lieder seiner Schüler. 

Als Grundlage dieser Ausgabe dient die Ausgabe Lieder des Meisters, die 1949 in Sofia unter der Redaktion von Maria Todorova gedruckt wurde. Genutzt wurden außerdem die Sammelbände Lieder der Weißen Bruderschaft von 1921-22, Liederbücher von 1939 und von 1944 sowie Brüderliche Lieder von 1941. 

Zum ersten Mal werden sechzehn Werke vom Meister und sechs Texte zu seinen Melodien und Themen publiziert. Aufgenommen wurden auch sechs Lieder von seinen Schülern, die in der Ausgabe von 1949 nicht publiziert wurden, die jedoch im musikalischen Leben der Gesellschaft gegenwärtig sind.

Es erfolgten nötige Korrekturen der metrorhythmischen Organisation, die dem Aufbau des musikalischen Gedankens entsprechen. Die Redaktion entspricht dem Prinzip der klassischen Prosodie, so dass die betonte musikalische Zeit der betonten Silbe des Textes entspricht. Die metronomischen Tempoangaben wurden nach Informationen bekannter Musiker aus der Bruderschaft wie Philip Stoizev, Irina Kisiova, Maria Zlateva und Katja Griva gesetzt. Die Kommentare zu den Liedern wurden der Ausgabe 1949 entnommen und mit neuen Informationen ergänzt. "

  }

  \markup \fontsize #+2.5 {
    \vspace #1.0
    \hspace #55
    \justify-string "Blagovest Zhekov "
  }
  \markup \fontsize #+2.5 {
    \vspace #0.5
    \hspace #55
    \justify-string " Sofia, 1999 "
  }


  \pageBreak


  \markup\fontsize  #+5.5 {\bold {Vorwort zur  dritten bulgarischen Ausabe} }

  \markup \fontsize #+2.5 {
    \vspace #1.5
    \justify-string "In diesen einleitenden Worten soll der Vorbereitungsprozess der letzten Ausgabe vorgestellt werden. Es entstand das Bedürfnis nach einer Überarbeitung der Lieder. Anschließend wurden sowohl die Arbeitsmethode als auch die Gruppe bestimmt, die die Reaktionsarbeit realisieren sollten.

Es ist bekannt, dass Meister Beinsa Duno nie eigens seine Lieder aufschrieb. Meist spielte er auf der Geige eine okkulte Übung und unterrichtete sie dann mündlich in den Vorträgen der okkulten Schule. Falls während des Unterrichtens ein Musiker anwesend war, schrieb er die Übung als Notentext auf. Die heutigen Generationen sind allen Musikern verbunden, die diese so verantwortungsvolle Arbeit verrichteten. Zu nennen sind Prof. Asen Arnaudov, Bojan Ikonomov, Liljana-Zvetana Tabakova, Maria Todorova, Matei Kaludov, Hristo Darsev u.a. Leider wurden viele der Melodien nicht aufgezeichnet. 

Im Notensatz der ersten vollständigen Ausgabe der Lieder des Meisters Beinsa Duno, die 1949 von Maria Todorova zusammengestellt und publiziert wurde, existierten nicht wenige Fehler. Maria Todorova selbst teilte mir mit, dass das Liederbuch wegen der ungünstigen politischen Bedingungen viel zu schnell vorbereitet wurde. Sie benutzte auch Notenaufzeichnungen, die während der Vorträge von nicht immer professionellen Musikern erstellt wurden. 

Vergleicht man den Sammelband von Maria Todorova mit der Ausgabe von 1938, so kann man viele Unterschiede entdecken. Praktisch unterlagen manche Lieder einer zweifachen Veränderung: manche wurden weiterentwickelt, andere wurden der Bequemlichkeit halber von nicht ausreichend vorbereiteten Musiken vereinfacht, wodurch sie an energetischer Aufladung eingebüßt haben. In der Praxis behaupteten sie sich als wohlklingender.


 "
  }

  \pageBreak

  \markup \fontsize #+2.5 {
    \justify-string "

 Eine Reihe Veränderungen mancher Tonhöhen sowie mancher rhythmischen Figuren haben ihren natürlicheren Klang gefunden. In dieser Hinsicht gibt es viele Beispiele, aber ihre Analyse ist nicht Gegenstand des gegenwärtigen Vorworts.
In Bezug auf die Notenrechtschreibung hält sich die gegenwärtige Ausgabe an alle Forderungen der heutigen Musikverlage, die sich in der Musiktheorie bestätigt haben. Das gilt im höchsten Maße für die logischen Akzente im poetischen und musikalischen Text, die synchron im gegebenen Takt des Liedes verteilt wurden. Ein anderer wichtiger Faktor ist der harmonische Aufbau der Melodie, deren Richtungen die Musikbilder formen.

Das Ziel der redaktionellen Arbeit war, den musikalischen und poetischen Text aufrechtzuerhalten, indem sie ihn logisch in den entsprechenden Takten gemäß des harmonischen Aufbaus der Melodie verteilten. Die Auswahl der Tonarten ist beim Meister nicht zufällig. Sie bringt die Verbindung zwischen den Farben, den Tönen der Planeten und den Zahlen zum Ausdruck. Jeder Versuch eines bequemeren Transponierens nimmt etwas von der Klangfarbe hinweg.

Vom rein historischen Gesichtspunkt setzte Philip Stoizev den Beginn der redaktionellen Anmerkungen und Besprechungen. Später begann eine größere Gruppe, in der Georgi Stratev, Yoana Strateva, Stanka Zheleva, Penka Kadieva und der Autor dieses Textes teilnahmen, die methodische und lange redaktionelle Arbeit. Trotz der unterschiedlichen Meinungen über bestimmte Probleme kam der Prozess in Harmonie und in Eintracht voran. Blagovest Zhekov publizierte eine eigene Variante der Lieder. Sein Sammelband hat gewisse Vorzüge: Er löst einen Teil der Probleme bei der Notenschreibung und führt zum ersten Mal phonetische Transkriptionen in lateinischer Schrift ein. Der Wert der gegenwärtigen Ausgabe sind die erweiterten Anmerkungen zu jedem Lied sowie das Wörterbuch"
  }

  \pageBreak
  \markup \fontsize #+2.5 {
    \justify-string "
   der Musikbegriffe am Ende des Buches. Der größte Vorzug liegt aber in der gemeinsamen Arbeit, in der mehrere Menschen mit unterschiedlicher Sensibilität und unterschiedlichen Einstellungen professionell diskutierten und objektive Resultate erreichten."
  }

  \markup \fontsize #+2.5 {
    \vspace #1.0
    \hspace #55
    \justify-string "Peter Ganev "
  }
  \markup \fontsize #+2.5 {
    \vspace #0.5
    \hspace #55
    \justify-string " Sofia, 2006 "
  }


  % include foreign translation(s) of the song
  %\include "lyrics_de/000_empty_template_lyrics_de.ly"

} % bookpart

% Più mosso
%
