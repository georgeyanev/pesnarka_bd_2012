\version "2.24.3"

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
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space


  }

  \tocItem \markup "Vorwort"
  \markup \abs-fontsize #12 { \fill-line \bold {"VORWORT"} }



  \markup  \abs-fontsize #10  {
    \vspace #1.5 \override #'(baseline-skip . 3.2)
    \justify {
    
    Der gegenwärtige Sammelband enthält Lieder und Instrumentalwerke des spirituellen Lehrers Petar Danov – Beinsa Duno, dem Gründer der geistigen Bewegung „Weiße Bruderschaft“ in Bulgarien sowie Lieder seiner Schüler in bulgarischer und deutscher Sprache. 

    Als Grundlage des vorliegenden Sammelbandes diente die Ausgabe von 2024, die unter der Redaktion von Peter Ganev und Maria Kireva in Sofia veröffentlicht wurde. Er enthält neben dem Notentext und dem literarischen Text in bulgarischer Sprache eine latinisierte Transliteration der kyrillischen Buchstaben sowie eine Übersetzung der Liedertexte in deutscher Sprache. Hierbei war das Ziel, eine möglichst genaue und zugleich wohlklingende deutsche Übersetzung darzubieren, die das Verständnis des geistigen Gehalts der Musik und der ihr zugrundeliegenden Ideen unterstützt. Von einer metrischen, in deutscher Sprache zu singenden Übersetzung der Liedertexte wurde bewusst abgesehen, weil sie das Klangbild der Lieder verfälschen würde. Ferner wurden alle in den Liedern vorkommenden Wiederholungen von Phrasen oder einzelnen Wörtern in der Übersetzung beibehalten. Denn in Verbindung mit der melodischen Bewegung kommt jeder Wiederholung jeweils eine andere Bedeutung zu. Gleichzeitig fungiert sie als Affirmation und ist somit sinnhaft.
    
  } }
 
  \markup  \abs-fontsize #10  {
    \vspace #1.5 \override #'(baseline-skip . 3.2)
    \justify {

Die \italic"okkulten Musikübungen," wie der Petar Danov seine Musikkompositionen selbst nennt, entstanden als Musikmethode in der 1922 von ihm eröffneten Okkulten Schule der Weißen Bruderschaft in Bulgarien. Diese Übungen begreift er als Urbilder der \italic"okkulten Musik" – eine neue Musikgattung, die auf die Prinzipien einer polydimensionalen Musiktheorie und Ästhetik gründen. Sie wurden sukzessive in den zahlreichen Vorträgen entwickelt, die er vor seinen Schülern bis 1944 hielt. Die erste und grundlegendste Bestimmung dieser Übungen war die individuelle und gemeinsame geistige Arbeit der Schüler auf ihrem Weg der geistigen Entwicklung und Kultivierung geistiger Qualitäten und Tugenden. Die Methode ihres Gebens war äußerst schöpferisch und kollektiv. Während des Vortrags spielte Danov auf seiner Geige oder sang die neue Musikübung, welche seine Schüler auswendig lernten und die anwesenden Musiker notierten. Ein anderes Mal gab er ein konkretes Wort oder einen Satz, zu dem die Schüler eigens Melodien komponieren sollten. Einzelne Lieder, welche entwickelt und vervollkommnet wurden, sind in mehren Varianten enthalten; andere wurden bewusst unvollendet gelassen als Aufgaben für die künftigen Generationen und Epochen. Die Musikformen, die aus dem für die Schule charakteristischen schöpferischen Prinzip resultieren, die Auffassung des Liedes als \italic"Prozess" sind Bedingung der Möglichkeit der künftigen Kultur. Manche der Kompositionen, unter anderem die \italic"Neue Genesis," entstanden während der speziellen Treffen, die Danov mit ausgewählten Schülern hatte; andere sind aus einer konkreten Erfahrung des okkulten Schülers hervorgebracht worden. Viele der Melodien und Kompositionen wurden jedoch nicht notiert. Ein Beispiel hierfür ist das Stück für Sologeige „Der verlorene Sohn“, das Danov zum ersten Mal bei einem Studentenkonzert in Amerika spielte und ein paar Mal vor seinen Schülern dreißig Jahre nach der ersten Aufführung wiederholte. Nach den Erinnerungen der anwesenden Musiker unterlag dieser Komposition keiner Notation. Es erklangen musikalische Naturbilder, meditative Melodien, Mikrointervalle, einen ständigen Wechsel zwischen Tonarten, Rhythmen, Zustände und Stimmungen, die in einer Komposition geordnet wurden, der das Prinzip der absoluten Freiheit als Eigenschaft der \italic"okkulten Musik" zugrunde liegt.

    }}
  \markup  \abs-fontsize #10  {
    \vspace #1.5 \override #'(baseline-skip . 3.2)
    \justify {
Die okkluten Musikübungen, in denen sich die Urbilder als lebendige Musikformen unmittelbar und ununterbrochen manifestieren, gehen notwendig über die Grenzen, die ihnen die musikalische Notation auferlegt, hinaus. Sie ist eine Bedingtheit, welche die freie, organische den Sinn und die Bedeutung des Inhalts suchenden Aufführung immer frei ist zu verlassen. \italic "Die lebendigen Musikformen," die die höchsten Regionen des Seins bewohnen, in denen es eine harmonische Verbindung zwischen Wort und Musik gibt, unterliegen nur schwer der Begrenzung, die aus den Rahmen des fixierten Metrums, der fixierten Takte, Notendauer, Tempi und Dynamiken kommt. Dies ist eines der Momente, die ihren sakralen Charakter bedingen. Jede Notierung des musikalischen Urbildes erscheint als seine natürliche Grenze. Davon zeugt auch die Tatsache, dass Danov nie selbst seine Musikkompositionen notierte, sondern unmittelbar mit den musikalischen Urbildern arbeitete, die er durch die lebendige Aufführung weitergab, indem er sie direkt in der Seele einpflanzte. Derart erhob er den Schuler in den Bereich des Urbildes, von dem die Seele eine klare Vorstellung hat. Der Fall, bei welchem Danovs Schuler mehrfach die Übung \italic"Vehadi" singen, indem sie ununterbrochen unter seiner konkreten Anweisungen die Art und Weise ihres Aufführens bis zum Erreichen eines zufrieden stellendes Ergebnis, welches sich an das Urbild annähert, variiren, veranschaulicht diesen Sachverhalt. So bildet Danov eine Brücke zu der Welt der Ideen, die diese Musikurbilder bewohnen. Indem sie direkt auf die Seele einwirken, öffnen sie den Raum, in welchem sich die lebendige Musiksubstanz, die diesen Musikübungen zugrundeliegt, manifestieren kann. Die Notenfixierung und Begrenzung der \italic"okkulten Musikübungen" widerspricht der Sakralität als ihr Wesen und führt gewißermaßen zu ihrer Profanierung. Klares Beispiel hierfür sind all jene Kompositionen wie der Zyklus „Die Neue Genesis“, die Danov nicht sofort erlaubte, notiert zu werden, sondern darauf bestand, zuerst auswendig gelernt zu werden, bevor die Schüler sie niederschreiben dürfen. Ein anderes Beispiel sind die Lieder wie „Šte se razveselja“, für deren Notationen er symbolisch sagte: „Wir haben ihr ein Gewand geschneidert, aber es ist etwas zu eng.“ Warum die lebendigen Musikformen nur schwer einer Notation unterliegen, kann mit dem folgenden Beispiel veranschaulicht werden: Als die Schüler Danov darum baten, eine bestimme Musikübung zu wiederholen, damit sie sie genau notieren können, spielt er sie jedes Mal etwas anders. Das liegt laut ihm an den musikalischen Urbildern, die, wenn sie den Bereich der physischen Welt erreichen, gewissen Veränderungen unterliegen, d. h. sie finden jedes Mal einen anderen konkreten Ausdruck. Ihre Fixierung und Begrenzung in der Notation transformiert die lebendige Musiksubstanz, indem sie in einer vollendeten, kommensurablen Form verwandelt, in der sich das schöpferische Prinzip und das Prinzip der absoluten Freiheit nicht manifestieren können. Sie hören auf, begeistet zu sein, weil die lebendige Verbindung mit dem Göttlichen unterbrochen ist. Ein Beispiel hierfür ist das Lied „Sage mit die Wahrheit“, das zu uns in drei Varianten gekommen ist. Es ist ein Vorbild für eine inkommensurable Übung, die Danov bewusst unvollendet lässt. }}

} % bookpart

% Più mosso
% „Weiße Bruderschaft“
