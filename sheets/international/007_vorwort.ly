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
  \markup \abs-fontsize #14 { \fill-line \bold {"Vorwort"} }



  \markup  \abs-fontsize #10  {
    \vspace #1.5 \override #'(baseline-skip . 3.2)
    \justify {

      Der gegenwärtige Sammelband enthält Lieder und Instrumentalwerke des spirituellen Lehrers Petar Danov – Beinsa Duno, dem Gründer der geistigen Bewegung „Weiße Bruderschaft“ in Bulgarien sowie Lieder seiner Schüler in bulgarischer und deutscher Sprache.

    }
  }
  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Als Grundlage des vorliegenden Sammelbandes diente die Ausgabe von 2024, die unter der Redaktion von Peter Ganev und Maria Kireva in Sofia veröffentlicht wurde. Er enthält neben dem Notentext und dem literarischen Text in bulgarischer Sprache eine latinisierte Transliteration des Kyrillischen sowie eine Übersetzung der Liedertexte in deutscher Sprache. Hierbei war das Ziel, eine möglichst genaue und zugleich wohlklingende deutsche Übersetzung darzubieten, die das Verständnis des geistigen Gehalts der Musik und der ihr zugrunde liegenden Ideen unterstützt. Von einer metrischen, in deutscher Sprache zu singenden Übersetzung der Liedertexte wurde bewusst abgesehen, weil sie das Klangbild der Lieder verfälschen würde. Ferner wurden alle in den Liedern vorkommenden Wiederholungen von Phrasen oder einzelnen Wörtern in der Übersetzung beibehalten. Denn in Verbindung mit der melodischen Bewegung kommt jeder Wiederholung jeweils eine andere Bedeutung zu. Gleichzeitig fungiert sie als Affirmation und ist somit sinnhaft. Die Sprache der Lieder ist symbolish. Es gibt ein Primat des Textes vor Melodien, weil durch ihn die Ideen, die aus häheren Welten kommen, zum Ausdruck gebracht werden.

    }
  }

  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die okkulten Musikübungen, wie Petar Danov seine Musikkompositionen selbst nannte, erscheinen als Musikmethode in der 1922 von ihm eröffneten Okkultschule der Weißen Bruderschaft. Diese Übungen begreift er als Urbilder der okkulten Musik – eine neue Musikgattung, das auf den Prinzipien und Gesetzen einer neuen, polydimensionalen Musiktheorie und Ästhetik basiert. Sie wurden in den zahlreichen Vorträgen, die er bis 1944 vor seinen Schülern hielt, sukzessive entwickelt. Die erste und grundlegendste Bestimmung dieser Übungen ist die individuelle und kollektive geistige Arbeit der Schüler auf ihrem Weg der geistigen Entwicklung und der Kultivierung geistiger Qualitäten und Tugenden. Die Methode ihres Erschaffens war äußerst kreativ und kollektiv. Während des Vortrags spielte Danov auf seiner Geige oder sang eine neue Musikübung, welche seine Schüler auswendig lernten, und die anwesenden Musiker notierten. Ein anderes Mal gab er ein bestimmtes Wort oder einen Satz, zu dem die Schüler ihre eigene Melodie komponieren sollen. Einzelne Lieder, die entwickelt und vervollkommnet wurden, sind in mehreren Varianten erhalten; andere wurden bewusst unvollendet gelassen als Aufgaben für die künftigen Generationen und Epochen. Die Musikformen, die aus dem für die Schule charakteristischen schöpferischen Prinzip resultieren, die Auffassung des Liedes als Prozess sind Bedingung der Möglichkeit der künftigen Kultur.  Einige Kompositionen, darunter der Zyklus „Die neue Genesis“, entstanden während der speziellen Treffen, die Danov mit ausgewählten Schülern hatte; Anlass für die Entstehung anderer Musikübungen sind konkrete Erfahrung des okkulten Schülers gewesen. Viele Melodien und Kompositionen wurden jedoch nicht notiert. Ein Beispiel hierfür ist das Stück für Sologeige „Der verlorene Sohn“, das Danov zum ersten Mal bei einem Studentenkonzert in Amerika spielte und ein paar Mal vor seinen Schülern dreißig Jahre nach der ersten Aufführung wiederholte. Laut den Er-
     

    }
  }
    \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {

    der anwesenden Musiker unterlag diese Komposition keiner Notation. Es erklangen musikalische Naturbilder, meditative Melodien, Mikrointervalle, einen ständigen Wechsel zwischen Tonarten, Rhythmen, Zustände und Stimmungen, die in einer Komposition geordnet wurden, der das Prinzip der absoluten Freiheit als Eigenschaft der okkulten Musik zugrunde liegt.

    }
  }


  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die okkulten Musikübungen, in denen sich die Urbilder als lebendige Musikformen unmittelbar und ununterbrochen manifestieren, gehen zwangsläufig über die Grenzen, die ihnen durch die musikalische Notation auferlegt werden, hinaus. Sie ist eine Bedingtheit, welche die freie, organische, den Sinn und die Bedeutung des Inhalts suchende Aufführung immer frei ist zu verlassen. „Die lebendigen Musikformen“, die die höchsten Regionen des Seins bewohnen, in denen es eine harmonische Verbindung zwischen Wort und Musik gibt, unterliegen nur schwer der Begrenzung, die aus den Rahmen eines fixierten Metrums, sowie fixierter Takte, Notendauer, Tempi und Dynamiken kommt. Dies ist einer der Momente, der ihren sakralen Charakter bedingt. Jede Notation des musikalischen Urbildes erscheint als seine natürliche Grenze. Davon zeugt auch die Tatsache, dass Danov nie selbst seine Musikkompositionen notierte, sondern unmittelbar mit den musikalischen Urbildern arbeitete, die er durch die lebendige Aufführung weitergab, indem er sie direkt in der Seele einpflanzte. Derart erhob er den Schüler in den Bereich des Urbildes, von dem die Seele eine klare Vorstellung hat. Der Fall, bei welchem die Schüler mehrfach die Übung „Vehadi“ singen, indem sie ununterbrochen unter Danovs konkreten Anweisungen die Art und Weise ihres Aufführens bis zum Erreichen eines zufriedenstellenden Ergebnisses, welches sich an das Urbild annähert, variiren, veranschaulicht diesen Sachverhalt. So bildet Danov eine Brücke zu der Welt der Ideen, die diese Musikurbilder bewohnen. Indem sie direkt auf die Seele einwirken, öffnen sie den diesen Musikübungen zugrunde liegenden Raum der lebendigen Musiksubstanz. Aus diesem Grund widerspricht die Notenfixierung und Begrenzung der okkulten Musikübungen ihrem sakralen Wesen und führt gewissermaßen zu ihrer Profanierung. Klares Beispiel hierfür sind all jene Kompositionen wie der Zyklus „Die neue Genesis“. Danov erlaubte es nicht, dass sie sofort notiert zu werden. Die Schüler sollten sie zuerst auswendig lernen, eher sie sie niederschreiben dürften. Ein anderes Beispiel sind die Lieder wie „Šte se razveselja“, für deren Notationen er symbolisch sagte: „Wir haben dem Lied ein Gewand geschneidert, aber es ist etwas zu eng.“ Warum die lebendigen Musikformen nur schwer einer Notation unterliegen, kann mit dem folgenden Beispiel veranschaulicht werden: Als die Schüler Danov darum baten, eine bestimme Musikübung zu wiederholen, damit sie sie genau notieren können, spielte er sie jedes Mal etwas anders. Das liegt laut Danov an den musikalischen Urbildern, die, wenn sie den Bereich der physischen Welt erreichen, gewissen Veränderungen unterliegen, d. h. sie finden jedes Mal einen anderen konkreten Ausdruck. Ihre Fixierung und Begrenzung in der Notation transformiert die lebendige Musiksubstanz, indem sie in einer vollendeten, kommensurablen Form verwandelt, in der sich das schöpferische Prinzip und das Prinzip der absoluten Freiheit nicht manifestieren können. Sie hören auf, begeistet zu sein, weil die lebendige Verbindung mit dem Göttlichen unterbrochen ist. Ein Beispiel hierfür ist das Lied „Sage mir die Wahrheit“, das zu uns in drei Varianten gekommen ist. Es ist ein Vorbild für eine inkommensurable Übung, die Danov bewusst unvollendet lässt.

    }
  }


  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die erste vollständige Ausgabe der Musikkompositionen des spirituellen Lehrers Petar Danov mit dem Titel „Lieder des Meisters“ wurde von Maria Todorova 1949 auf der Basis der von ihm genehmigten Notationen der okkulten Musikübungen veröffentlicht. Ihre Vorbereitung und ihr Druck wurden unter außerordentlich schwierigen politischen und gesellschaftlichen Bedingungen realisiert, die keine ausführliche redaktionelle Arbeit an der vorbereiteten Ausgabe erlaubten. Es gab viele Druckfehler, die sie später in ihrer eigenen Ausgabe korrigierte. Mit dem Druck des Buches wurde aber Petar Danovs Gebot, seine Musikkompositionen für die künftigen Generationen zu bewahren und weiterzugeben, erfüllt. Die von ihm bewilligten Notationen, die er selbst auf die Seite legte und zur Aufbewahrung in einer Mappe weitergab, sowie das Notenheft, in welchem sie im Nachhinein abgeschrieben wurden, sind nicht erhalten. Erhalten wurden auch keine Aufnahmen mit Danovs Stimme und Geige, was eine vollständigere Vorstellung für den Klang der okkulten Musik geben würde. Zu uns sind nur einige Archivaufnahmen von Gruppenaufführungen einzelner Lieder gekommen. Bewahrt wurden auch frühere unvollständige Veröffentlichungen von Danovs Musikkompositionen wie beispielsweise die mehrstimmige Ausgabe von Christo Darzev von 1921/1922 und der Sammelband „Lieder des Meisters“ unter der Redaktion von Kiril Ikonomov, das aus zwei Teilen bestand und 1938 und 1944 veröffentlicht wurde. Die einzigen vorliegenden schriftlichen Originale, die einen Anspruch auf Vollständigkeit erheben können, sind die obengenannte Ausgabe von Maria Todorova sowie eine Fotokopie ihrer eigenen Ausgabe, welche die von ihr eingetragenen Druckfehler enthält. Es fehlt aber das Blatt mit den Fehlern zu derselben Ausgabe.

    }
  }

    \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Der vorliegende Sammelband setzt die Linie der Achtung und heiligen Bezug zu Petar Danovs Musik der früheren Generationen Musiker, indem es ihre Authentizität und Geist bewahrt. Der Sammelband besteht aus drei Teilen:


    }
  }
    \markup \override #'(line-width . 89.5) \abs-fontsize #10  {
    \override #'(baseline-skip . 3.4) \vspace #1.5 \column {
      "    1."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Brüderliche Lieder: Dies sind alle Vokalkompositionen, die vorwiegend vor 1922 geschaffen wurden. Die meisten von ihnen sind aus der Zusammenarbeit zwischen Petar Danov und seinen Schülern entstanden. Deshalb wurden viele der Melodien oder Texte in diesem Teil des Sammelbandes von ihnen nach Ideen von Danov geschaffen. Manche Melodien und Texte wurden Liedern der protestantischen Kirchen entlehnt; im Repertoire gab es auch populäre kirchenslawische Gesänge. In dieser Zeit war der mehrstimmige Gesang der Lieder gängige Praxis. Zu diesem Teil wurden einige Lieder seiner direkten Schüler hinzugefügt, die nach Danovs Dahinscheiden von ihnen komponiert wurden.

      }
    }
  }
  \markup \override #'(line-width . 89.5) \abs-fontsize #10   {
    \override #'(baseline-skip . 3.4) \vspace #0.9 \column {
      "    2."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Lieder von Petar Danov: Das sind alle Kompositionen, die zwischen 1922 und 1944 in der okkulten Schule der Weißen Bruderschaft geschaffen wurden. Autor der Melodie und des Textes hier ist Petar Danov. Viele der Kompositionen sind auf einer heiligen Sprache, die er Vatanisch nannte.


      }
    }
  }

    \markup \override #'(line-width . 89.5) \abs-fontsize #10   {
    \override #'(baseline-skip . 3.4) \vspace #0.9 \column {
      "    3."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {

        Nach 1944 veröffentlichte Lieder: Das sind alle Kompositionen, die nach Danovs Dahinscheiden 1944 publiziert wurden. Dieser Teil enthält neben viele Vokalkompositionen auch viele rein instrumentelle Kompositionen und Melodien. Besondere Beachtung verdient hier der Zyklus von sieben Liedern


      }
    }
  }
  \markup \override #'(line-width . 89.5) \abs-fontsize #10   {
    \override #'(baseline-skip . 3.4) \vspace #0.9 \column {
      "      "
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {

        „Die neue Genesis“ – ein neuer Zyklus in der okkulten Musik, der ihre kosmischen, kosmologischen und kosmogonischen Aspekte darstellt. Dieser Liederzyklus kam zu uns dank der Opernsängerin Liljana Tabakova, die an der École Normale de Musique de Paris Musik studierte, mit der Danov speziell arbeitete. In ihrem Beisein erschuf er einige seiner sakralen Kompositionen.


      }
    }
  }

 \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {

      Dem Sammelband wurde ein Addendum hinzugefügt, welches Beispiele zeitgenössischer Werke enthält als Fortsetzung des schöpferischen Impulses aus der Zeit der okkulten Schule.
    }
  }

  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die redaktionelle Linie dieser Ausgabe baut auf die redaktionelle Arbeit der bisherigen Ausgaben, indem sie aus den folgenden Prinzipien ausgeht:

    }
  }



  \markup \override #'(line-width . 89.5) \abs-fontsize #10   {
    \override #'(baseline-skip . 3.4) \vspace #1.5 \column {
      "    1."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {

        Erhaltung der Originale und der Authentizität der Musikkompositionen;

      }
    }
  }

  \markup \override #'(line-width . 89.5) \abs-fontsize #10  {
    \override #'(baseline-skip . 3.4) \vspace #0.9 \column {
      "    2."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Professionalisierung der Notation durch die Einführung von Konventionen bei der Notenrechtschreibung nach den Regeln der Satzlehre.

      }
    }
  }

  \markup \override #'(line-width . 89.5) \abs-fontsize #10   {
    \override #'(baseline-skip . 3.4) \vspace #0.9 \column {
      "    3."
    }
    \hspace #0.5
    \override #'(baseline-skip . 3.4) \column {
      \justify {
        Sukzessive Anwendung derselben auf den Notentext.

      }
    }
  }
 \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Diese redaktionelle Linie machte das Überdenken der strukturellen Organisation mancher Lieder, die minimale Aktualisierung der lyrischen Texte gemäß der lexikalischen und syntaktischen Normen der modernen bulgarischen Sprache sowie Rechtschreibkorrekturen des Notentextes notwendig. Bei manchen Liedern mit unsymmetrischer Struktur und unterstrichen freiem Rhythmus wurde eine nicht-mensurale Notation eingeführt, die dem Konzept der inkommensurablen Größen in der okkulten Musik korrespondiert. Im redaktionellen Prozess wurden alle Quellen benützt. Dadurch wurden eine Reihe von Fehlern aus vorhergegangenen Redaktionen sowie einige inadäquate redaktionelle Entscheidungen entfernt, die ganze Lieder oder Teile von Liedern betreffen. Dieser Prozess wurde durch die Anmerkungen mancher Musiker unterstützt, die die Objektivität und die Authentizität des Notentextes verbessert haben. Zum ersten Mal wurden auch Anmerkungen der Herausgeber eingeführt, die die vollzogenen redaktionellen Veränderungen im Notentext dokumentieren und argumentieren. Durch die breite Verwendung von ossia wurden die Varianten der Lieder gekennzeichnet, die die Anmerkungen der direkten Musiker-Schüler von Danov entsprechen; diese wurden auch in den jeweiligen Anmerkungen festgehalten. In derselben Weise wurde auch mit den Varianten der lyrischen Texte verfahren. Alle Anmerkungen wurden überarbeitet und ergänzt. Entfernt wurden einige faktologischen Fehler. Die nicht klare Trennung zwischen authentischen Melodien und zeitgenössischen Texte als Praxis der bisherigen Ausgaben wurden vermieden, indem die authentischen Melodien im Hauptteil des Sammelbandes und die zeitgenössischen Texte oder Melodien im Addendum platziert wurden. Die Tempobezeichnungen sollten als bedingt betrachtet werden, denn sie wurden nicht ursprünglich von Petar Danov angegeben, sondern stellen die Sicht der zeitgenössischen Musiker auf sie.

    }
  }

  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Das Ziel des vorliegenden Sammelbandes ist es, die Musikkompositionen des spirituellen Lehrers Petar Danov in einer professionellen Weise vorzustellen. Sie ist sowohl an den professionellen Musikern als auch an den Laien gerichtet, d. h. an allen, die von der Schönheit und die Einzigartigkeit dieser Musik berührt werden möchten. Die große Vielfalt an Tonarten, von den einfacheren bis zu diesen mit
    }
  }

  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {




     sechs Vorzeichen, die mit ihnen verbundenen Farben, die Entsprechung zwischen Musik und Text, der oft freie Rhythmus der Melodie, die dominierenden inkommensurablen Größen – Aspekte der okkulten Musik, über die Danov in seinen Vorträgen sprach – bedingen ihren vielschichtigen Einfluss auf die Zuhörer und den Interpreten. Sie ist ein klanglicher Abbild der Freiheit und der Asymmetrie der Naturlinien, die durch die strukturellen Merkmale des melodischen Aufbaus und durch die Abwesenheit eines symmetrischen Schemas der Phrasierung. Ihre Bestandteile sind sowohl die kleinen Intervalle wie beispielsweise in den Liedern „Vehadi“ und „Neva sanzu“ sowie auch die großen Intervalle, die bis zur Oktave gehen, wie im Lied „Vătrešnijat glas na Boga“. Vorhanden sind auch Intervalle, die für die östliche Musik eigentümlich sind, wie Hiatus oder das Intervall vergrößerte Quarte, das im Lied „Berhan-Azi“ verwendet wurde. Die Lieder ohne Mensur, für die Danov selbst die Empfehlung ausspricht, ohne Taktstriche notiert zu werden, ist ein zusätzliches Merkmal der absoluten Freiheit in der okkulten Musik. Das Inkommensurable als Maßstab für das Göttliche ist ihre strukturelle Grundeigenschaft, welche sie von der äußersten Bestimmtheit und Abgeschlossenheit befreit. Deshalb kann sie ihren adäquaten Ausdruck nur in den inkommensurablen Takten finden, die zu ihrem inneren inkommensurablen Maßstab werden. Die bestimmten Taktangaben im Allgemeinen, in welche sich die klassischen Musiker gewöhnlich gezwungen sehen, jede Melodie zu bringen, ist ein ihr fremdes Phänomen. Es gibt aber Kompositionen mit klassischem Aufbau der Melodie wie „Bog e Ljubov“, „Fir-fjur-fen“, „Me-hein“, „Venir Benir“, deren natürlicher harmonischer Klang Choräle von J. S. Bach ähnelt. Sie würden eine Harmonisierung im Stil des Barocks vermuten. Ein spezieller Platz in der okkulten Musik wurde den typisch bulgarischen unregelmäßigen Rhythmen wie beispielsweise 7/8, 5/8, 8/8 und melodischen Intonationen zugewiesen. Zu ihrer ursprünglichen Reinheit geführt, würden sie zu Archetypen des neuen Musikgenres erhoben. So öffnete Danov nicht nur der geschlossene Kreis der bulgarischen Musik, sondern gab ihr eine neue aufsteigenden spiralförmige Richtung. Das natürliche Resultat dieser Öffnung und Befreiung war die Transformation des Bulgaren. Man kann noch viele weitere Beispiele, die die Mannigfaltigkeit der melodischen, harmonischen, der rhythmische Struktur der okkulten Musikübungen geben, anführen. Man kann auch viele weitere Fragen stellen, die ihre spezifischen Eigenschaften betreffen. Dies wäre eine geeignete Aufgabe für eine weiterreichende Untersuchung über die okkulte Musik, welche die in ihr verborgen liegende Schlüssel und Codes entdecken und erforschen würde. Bedingung der Möglichkeit für das wahre Verständnis und die adäquate Interpretation der okkulten Musik bleibt aber die genaue Kenntnis der Vorträge sowie der Prinzipien, auf die sie gründet. Die Vorträge und die okkulten Erfahrungen zeigen ihren Kontext und sie kann nicht von der Gesamtheit und Einheit der Lehre getrennt werden. Sie sind ihr Koordinatensystem, indem sie die Bereicherung der okkulten Musik mit Sinn und Inhalt ermöglichen. Sie ermöglichen auch die Bereicherung ihres Erlebens und ihre möglichen Interpretationen. Wichtig für alle Harmonisierungen und Orchestrierungen ist es, dass sie das Wichtigste in ihr – ihren Geist – bewahren. Sie ist kein Vergnügen, sondern der Ausdruck unserer heiligen Verbindung mir dem Schöpfer. Nur dann kann die okkulte Musik ihre Schätze in Fülle zeigen.

    }
  }


  \markup  \abs-fontsize #10  {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {

      Im Namen des gesamten Redaktion-Teams wünschen wir angenehme individuelle und kollektive Beschäftigungen mit dieser nichtirdischen kosmischen Musik! Gott ist Liebe.

    }
  }


  \markup \abs-fontsize #10  \raise #0 \override #'(baseline-skip . 3.4) {
    \column {
      \line {"  "}
      \line {"  "}
      %\fill-line { "" ""  \italic {"Петър Ганев, София    "} }
      \fill-line { "" ""  {"Mariya Kireva   "} }
      \fill-line { "" ""  {"München, 2024 г."} }
    }
  }

} % bookpart

% Più mosso
% „Weiße Bruderschaft“