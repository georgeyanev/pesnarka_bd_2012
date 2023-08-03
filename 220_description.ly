\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"

  \label #'ref220
  \tocItem \markup "Anmerkungen"
  \markup \fontsize  #+4.0 { \fill-line \bold {"ANMERKUNGEN"} }

  \markup \fontsize #+2 \override #'(line-width . 66.5)
  {
    \override #'(baseline-skip . 2.2)
    \column {
      \vspace #0.4
      \line {
        \justify {
          \fontsize  #+0.8 \bold { \fill-line { \bold"Brüderliche Lieder"} }
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"1" . \bold "  Зората на Новия живот – Zorata na Novija život."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov. In der Ausgabe von 1949
          wurde in der ersten Strophe das Wort „Leben“ statt „Bundeslade“ verwendet.
        }
      }

      \vspace #0.5

      \line {
        \justify {
          \concat {"2" . \bold " Излязъл е сеяч – Izljazăl e sejač."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov. Die bulgarische Sprache hat zwei Wörter für \italic "Liebe,"  \italic " ljubov" und \italic "obič." Diesen Wörtern kommt eine unterschiedliche Bedeutung zu, die Danov in seinen Vorträgen darlegt. Wir weisen auf beide Begriffe durch das Hinzufügen des bulgarischen Wortes in eckigen Klammern hin. Dasselbe gilt auch für die Verben \italic "običam" und \italic "ljubja." Auf Deutsch würde man sie mit \italic "lieben" übersetzen, wobei sie auf Bulgarisch eine jeweils andere Konnotation aufweisen.
        }
      }


      \vspace #0.5
      \line {
        \justify {
          \concat {"3" . \bold  "  Братство единство – Bratstvo, edinstvo."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"4" . \bold "  Ще се развеселя – Šte se razveselja."}
          Musik von Petar Danov, Text Jes. 61,10.

        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"5" . \bold "  Изгрява вече ден тържествен – Izgrjava veče den tăržestven."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"6" . \bold "  Благославяй – Blagoslavjaj."}
          Musik und Text von Petar Danov nach dem Psalm 103.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"7" . \bold "  Събуди се братко мили – Săbudi se bratko mili."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"8" . \bold "  Любовта е извор – Ljubovta e izvor."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov. In den Notizen von Bojan Boev wurde das Lied \italic "Lied der Liebe" betitelt.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"9" . \bold "  Стани, стани – Stani, stani."}
          Musik und Text von Petar Danov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"10" . \bold " Страдна душо – Stradna dušo."}
          Musik von Petar Danov, Text von Michalaki Georgiev. In den Notizen von Bojan Boev wurde dieses Lied \italic "Das Lied der Seele" betitelt. Jede Strophe entspricht einer der Kardinaltugenden: dem Guten, der Gerechtigkeit, der Liebe, der Weisheit und der Wahrheit.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"11" . \bold " Изгрей ти, мое Слънце – Izgrej ti, moe Slănce."}
          Musik von Petar Danov, Text Stojan Rusev (Djado Blago).
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"12" . \bold " Шуми – Šumi."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov. Ladanchiza ist ein Mädchen, das rituelle Lieder und Tänze ausführt, die der heidnischen Göttin Lada gewidmet wurden.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"13" . \bold " При източника – Pri iztočnika."}
          Musik von Petar Danov, Text Ivan Tolev.
        }
      }
      \vspace #0.5

      \line {
        \justify {
          \concat {"14" . \bold " Напред да ходим – Napred da hodim."}
          Musik von Petar Danov, Text von einem Schüler nach den Ideen von Petar Danov. In den Notizen von Bojan Boev heißt das Lied \italic"Marsch der Bruderschaft bei Ausflügen."

        }
      }

    }
  }

  \markup \fontsize #+2 \override #'(line-width . 66.5) {
    \override #'(baseline-skip . 2.2)
    \column {

      \justify {
        \concat {"15" .\bold " На Учителя – Na Učitelja."}
        Musik und Text von Boris Hadjiandreev, Jambol, 1915. In den Notizen von Bojan Boev wurde das Lied „Der Schüler Christi“ betitelt und anstatt „Herr, Du mein Meister“ wurde „Oh, mein Herr und Meister“ verwendet. In anderen Versionen der vierten Strophe singt man: „[...]und Dir werde ich folgen“.

      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"16" . \bold " Милосърдието – Milosărdieto."}
          Musik Atanas D. Kovachev, Text Stojan Rusev (Djado Blago).
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"17" . \bold " Сърдечен зов  – Sărdečen zov."}  Musik von Atanas D. Kovachev, die während des Ersten Weltkrieges im Ort \italic"Dobro pole" komponiert wurde, nach dem Motiv von Petar Danov, Text von Ilija Zurkov.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"18" . \bold " Благословен Господ  – Blagosloven Gospod."} Musik und Text von Petar Danov. In den Notizen von Bojan Boev wurde das Lied \italic"Der kleine Lobgesang" betitelt.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"19" . \bold " За Небесния цар – Za Nebesnija car."}  Musik und Text von Petar Danov, 1888, Hotanza. In den Notizen von Bojan Boev wurde das Lied  \italic "Der zionische Marsch" betitelt.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"20" . \bold " Време е да вървим – Vreme e da vărvim."}  Musik von Petar Danov, Text von einem Schüler.
        }
      }


      \vspace #0.4
      \line {
        \justify {
          \concat {"21" . \bold " Поздрав на Учителя – Pozdrav na Učitelja."}  Musik und Text von Elena Kazanlaklieva.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"22" . \bold " Сине мой, пази живота – Sine moj, pazi života."}  Musik von Ivan G. Popov, Text von Stojan Rusev (Djado Blago), aufgeschrieben am 2. Mai 1922.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"23" . \bold " Росна капка – Rosna kapka."}  Musik und Text von Ivan Popov, aufgeschrieben am 1. August 1921.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"24" . \bold " Аз съм бялото кокиче – Az săm bjaloto kokiče."}  Musik Hristo Darsev, Text Pentscho Slaveikov. In manchen populären Versionen wird statt „[...]Böse Stiefmutter hat mich geweckt“ „Die Sonne hat mich geweckt“ gesungen. Der Text der dritten Strophe wurde später von einem Schüler hinzugefügt.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"25" . \bold " Напред, чада, напред  – Napred, čada, napred."}  Musik und Text von einem Schüler.
        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"26" . \bold " Славейчета горски  – Slavejčeta gorski."}  Musik von Atanas D. Kovachev, Text von Stojan Rusev (Djado Blago) Aufgeschrieben am 20. April 1922.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"27" . \bold " Небето се отваря – Nebeto se otvarja."}  Musik Atanas D. Kovachev, Text Stojan Rusev (Djado Blago), aufgeschrieben am 2. Februar 1918.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"28" . \bold " О, Учителю благати – O, Učitelju blagati."}  Musik und Text von Ljuba Iv. Radoslavova.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"29" . \bold " Дързост в Христа – Dărzost v Hrista."} Musik und Text von einem Schüler, aufgeschrieben am 1. August 1921.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"30" . \bold " Слава Божия – Slava Božija."}  Text und Musik Maria Todorova nach dem Psalm 115.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"31" . \bold " Към Сион – Kăm Sion."}  Musik und Text von Ivan G. Popov, aufgeschrieben am 15 Juni 1921.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"32" . \bold " Слънцето на Любовта – Slănceto na Ljubovta."}  Musik und Text von Petko Epitropov.
        }
      }

    }
  }

  \markup \fontsize #+2 \override #'(line-width . 66.5) {
    \override #'(baseline-skip . 2.2)
    \column {



      \line {
        \justify {
          \concat {"33" . \bold " Ти си проявената Любов – Ti si projavenata Ljubov."} Text und Musik von Maria Savova.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"34" . \bold " Идват дни на радост – Idvat dni na radost."}  Text und Musik von Nadežda Kurteva.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"35" . \bold " Към Рила – Kăm Rila."}  Musik von Čudomir Kandardžiev, Text von Margarita Nedjalkova.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"36" . \bold " Псалм 91 – Psalm 91."}  Musik von Christo Darzev, Text Psalm 91.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"37" . \bold " На белия цвят – Na belija cvjat."} Musik von Ivan G. Popov, Text von Stojan Rusev (Djado Blago), aufgeschrieben am 9. April 1922.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"38" . \bold " На Христа запейте – Na Hrista zapejte."}  Musik und Text von Ivan G. Popov, aufgeschrieben am 15. März 1921.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"39" . \bold " Нови дрехи – Novi drehi."} Musik von Ivan Kavaldzhiev, 1. Juni 1922.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"40" . \bold " Дишай дълбоко – Dišaj dălboko."}  Musik und Text Penjo Ganev.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"41" . \bold " Ангел вопияше – Angel vopijaše."} Bulgarischer Kirchengesang, der zu Beginn des 20. Jahrhunderts sehr bekannt war. Text und Musik Konstantin Danovski, der Vater von Petar Danov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"42" . \bold " Тайната вечеря – Tajnata večerja."}  Musik und Text von Vesela Nestorova, gesegnet von Petar Danov. Die erste Strophe bedeutet folgendes: Alles ist licht, alles ist in meinem Licht erleuchtet.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"43" . \bold " Тебе поем – Tebe poem."}  Bulgarischer Kirchengesang, populär in der Weißen Bruderschaft.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"44" . \bold " Песен на гласните букви – Pesen na glasnite bukvi."}  Gesangsübung von Petar Danov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"45" . \bold " Що е същността – Što e săštnostta. "}  Text und Musik Marin Kamburov
        }
      }

      \vspace #1.0
      \line {
        \justify {
          \fontsize  #+0.8 \bold { \fill-line { \bold"Lieder von Petar Danov"} }
        }
      }
      \vspace #0.3

      \line {
        \justify {
          \concat {"46" . \bold " Фир-фюр-фен – Благославай – Fir-fjur-fen – Blagoslavaj."} Segne: Das Lied entstand am 21. August 1922 während der Zusammenkunft in Veliko Tarnovo im Vortrag \italic"Musik, Arbeit, und Fasten." Dieses Lied dient der Harmonisierung und der Heilung. Es reguliert die Ströme und die Kräfte im Menschen und bringt sie in Harmonie mit dem Sein. Die Worte entstammen einer heiligen Sprache und können nicht wortwörtlich übersetzt werden. Petar Danov gibt nur eine ungefähre Übersetzung: Ohne Angst, ohne Finsternis.

          \italic "Fir-fjur"  dasjenige, was den Menschen leitet.

          \italic "Fen"  beseitigt die Hindernisse und reinigt.

          \italic "Tao"  umzäunt und beschützt den Menschen als Umgebung, in die er eingetaucht ist. \italic " Tao" ist außerdem das Absolute, das Nicht-Manifestierte, das Grenzenlose.

          \italic "Bi"  dasjenige, was sich manifestiert.

          \italic "Aoumen"  alle Eigenschaften, die im Göttlichen enthalten sind;  alles, was wachsen und  sich in seiner Fülle manifestieren soll.

          \italic "Fir-fjur-fen" ist ein rhythmischer Satz, es sind
          rhythmische Wörter mit starker Schwingung, deren Wesen im Bewusstsein der Menschen, die im materiellen Leben versunken sind, etwas Neues erwecken kann.




        }
      }


    }
  }


  \markup \fontsize #+2 \override #'(line-width . 66.5) {
    \override #'(baseline-skip . 2.2)
    \column {
      \line {
        \justify {
          \concat {"47" . \bold " Изгрява слънцето – Izgrjava slănceto."}  Das Lied entstand am 22. Oktober 1922 in der Allgemeinen Okkultklasse, II. Jahrgang, vierter Vortrag. An dieser Stelle sagt Petar Danov Folgendes: „Hier wurde mit vollkommener Einfachheit des Tons und des Wortes das herrliche Bild der aufgehenden Sonne geschaffen.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"48" . \bold  " Сила жива, изворна – Sila živa, izvorna."}  Das Lied entstand am 12. Oktober 1922 in der Allgemeinen Okkultklasse, II. Jahrgang, im zweiten Vortrag. An der Stelle sagt Petar Danov Folgendes: „Die Töne dieses Liedes zeigen die Bewegungen, ein Quellen nach oben und ein Erweitern. Das Unterdrückte im Menschen wird befreit; es wird in Gang gesetzt und ihm die richtige Richtung gegeben. Damit der Mensch diese Übung singen kann, muss er in einen harmonischen Kontakt mit der göttlichen Natur treten. Die Worte \italic"Sun me sun" regulieren in der okkulten Musik; sie sind die Gleichgewicht bringende Kraft; sie sind das Maß. \italic"Tu meto" hat einen der schönsten Inhalte.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"49" . \bold  " Сладко медено – Sladko medeno."}  29. Oktober 1922, Allgemeine Okkultklasse, II. Jahrgang, 5. Vortrag. Das ist eine positive Übung; jedes Bild ist aktiv.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"50" . \bold  " Благост – Blagost."}  Die ersten fünf Takte des Liedes entstanden am 19. Dezember 1923, in der Allgemeinen Okkultklasse, III. Jahrgang, im 10. Vortrag. Das Lied wurde am 26. Dezember 1923 vollendet. Petar Danov sagt: „Die Kraft dieses Liedes liegt in seinem Rhythmus. Es hat zum Ziel, den richtigen Rhythmus des menschlichen Herzens wiederherzustellen.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"51" . \bold  " Блага дума – Blaga duma."} 5. November 1922, Allgemeine Okkultklasse, II. Jahrgang, 6. Vortrag.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"52" . \bold   " Аум – Aum."}  2. Dezember 1925. Durch diese Übung soll der Mensch das Heilige in sich aufrechterhalten. Es ist aus einem alten, heiligen Lied entnommen worden. Petar Danov sagt: „Hätte ich euch dieses Lied in seiner urspünglichen Moll-Tonart gegeben, könntet ihr seiner Schwingung nicht standhalten; euer Puls wird sich verändern.“ Petar Danov gab das Lied in Dur. Petar Danov sagt: „Es gibt heilige Wörter. Solch ein Wort ist auch das Wort \italic"Aum," das oft ausgesprochen werden soll, auch dann, wenn man seine Bedeutung nicht versteht. Seid ihr traurig, seid ihr krank, befindet ihr euch geistig nicht in einer guten Verfassung, sprecht ein paar Mal das Wort \italic"Aum" – es ist das Wort des Geistes. Singt ihr das Wort in seiner Sprache, wird er euch verstehen und helfen, denn er versteht und kennt eure Bedürfnisse.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"53" . \bold  " Венир Бенир – Venir Benir."}  5. November 1922. Allgemeine Okkultklasse, II. Jahrgang,
          6. Vortrag. Venir Benir ist ein okkultes, östliches Motiv, das von den westlichen Völkern
          aufgenommen wurde. Die mystische Bedeutung des Liedes ist folgende:

        }
      }
      \vspace #0.3
      \line {
        \justify {
          \italic"Venir Benir"  – Du, der Große, der Du alle und alles segnest.
        }
      }

      \line {
        \justify {
          \italic"Bihar Benum"  – Es sei gesegnet.

        }
      }

      \line {
        \justify {
          \italic"Il Bejut"  – Gott, segne das Große, die Jugend, den Ursprung des
          Lebens.

        }
      }

      \line {
        \justify {

          \italic"Il Bezut " – Herr, segne den jungen Menschen, den Beginnenden, das göttliche Leben, segne das Göttliche, das in der Seele empfangen wird, den Atem Gottes, den wir usprünglich empfangen haben.
        }
      }
      \vspace #0.3

      \line {
        \justify {
          \italic"On Bejut" – Er ist es selbst, der Einzige, der segnet.

        }
      }

    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \vspace #0.2

      \line {
        \justify {
          \italic"Il Bezut, On Bejut" – Er ist alles, Er ist überall. So soll es jetzt sein! Das ist das Verhältnis zwischen dem Großen und dem Kleinen – die Seele. Und das Kleine wird von einem Gedanken über das Große, über Gott erfüllt. Die Seele erinnert sich an die Zeit, als sie den ersten Hauch vom göttlichen Hauch empfangen hat. (Nach Danov: Allgemeine Okkultklasse, 8. Mai. 1940).

        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"54" . \bold  " Сила жива – Sila živa."} 19. November 1922, Allgemeine Okkultklasse, 2. Jahrgang, 8. Vortrag.
        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"55" . \bold  " Скръбта си ти кажи – Skrăbta si ti kaži."}   19. November 1922, Allgemeine Okkultklasse, II. Jahrgang, 8. Vortrag. \italic"Sila živa" und \italic"Skrăbta si ti kaži" sind zwei Teile einer einzigen okkulten Übung. Peter Danov gab dazu folgende Erklärung: „ ‚Sila živa, Sila živa, kaži mi, kaži mi de voda izvira‘ – Hier suchen wir nach der Quelle. Es handelt sich um ein traditionelles bulgarisches Motiv. Es wurde dem Lauf des Wassers einer Quelle aus dem Hochgebirge entliehen, welches über die Steine springend nach und nach hinunterfließt. So habt ihr hier ein sehr angenehmes Bild vor Augen. Im bulgarischen Volkslied sind all diese Reigentanzlieder aus den Orten hervorgegagen, an denen Quellen entspringen. ‚Skrăbta si ti kaži, sărce si ti otvori na slănčevi lăči, [...]‘ – In diesem Ausschnitt haben wir ein negatives Wort, den Gram [skrăb]. Sobald jemand Leid empfindet, ist Dunkelheit in seinem Verstand und seinem Herzen; es gibt kein Licht mehr. Sobald das Licht erscheint, verschwindet das Leid. Die Sonne ist es, die heilt.“
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"56" . \bold  " Грее, грее – Gree, gree."}  Entstanden im Frühjahr 1924.
        }
      }

      \vspace #0.2
      \line {
        \justify {
          \concat {"57" . \bold  " Духът Божий – Duhăt Božij."}  13. November 1922, Allgemeine Okkultklasse, II. Jahrgang, 7. Vortrag. Dieses Lied nennt Petar Danov \italic"okkulten Übergang;" es führt uns in die okkulte Musik ein. Zum \italic"Wer/Er" sagt Danov Folgendes: \italic"„Wer" hat eine doppelte Bedeutung. Es ist Frage und Antwort zugleich. Der Geist Gottes, der erfüllt – die Antwort. Und wer füllt unsere Herzen mit Liebe? – Der Geist Gottes, der ewige Geist usw. Das sind Attribute.“
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"58" . \bold  " Махар Бену Аба – Mahar Benu Aba."} 3. Dezember 1922, Allgemeine Okkultklasse, II. Jahrgang, 10. Vortrag. Peter Danov hat diese Übung \italic"Das Gebet des Schülers" genannt. Es sollte mit Konzentration, Ausdruck und Sanftheit gesungen werden.

          \italic"Mahar" bedeutet der Große, \italic" Benu" der, der segnet und \italic"Aba" – der Vater aller Dinge. Derart hat Petar Danov die Idee von \italic"Mahar Benu Aba" in Bildern entwickelt:

          \italic"Mahar" ist eine natürliche, nach unten gerichtete Bewegung.

          \italic"Benu" ist der Aufstieg nach oben.

          \italic"Aba" bedeutet, den Ort bestiegen zu haben, den du erstrebst. Dort ist es eben; es gibt genügend Raum und du kannst dich bewegen. Das bedeutet, dass es drei Konzepte gibt: den Abstieg, den Aufstieg und eine natürliche Bewegung, bei der die Hindernisse beseitigt werden. Die Hindernisse ergeben sich aus dem Auf- und Abstieg.

          Bei \italic"Aba" wird das Marschieren zu etwas Natürlichem. Dies bedeutet, dass du dich an die Arbeit machst.

          \italic"Mahar" ist der schönste Ort, zu dem du hinabsteigen kannst;

          \italic"Benu" ist der schönste Ort, zu dem du aufsteigen kannst;
          \italic"Aba" ist der schönste ebene Ort, wo du arbeiten und leben kannst. (Kommentar vom 12. Dezember 1941, Allgemeine Okkultklasse, XXI. Jahrgang, 12. Vortrag).
        }
      }

      \vspace #0.4

      \line {
        \justify {
          \concat {"59" . \bold " В мрак тъмнота – V mrak tămnota."} 3. März 1926, Allgemeine Okkultklasse, V. Jahrgang, 16. Vortrag. Dieses Lied ist der zweite Teil von „Mahar Benu Aba“ und seine
        }
      }

    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          Übersetzung zugleich. Bildlich gesprochen, entspricht \italic"v’mrak = Mahar," dem Abstieg. „No slănceto na života“ entpricht „Benou“, dem Aufstieg. „I nij trăgvame v pătja čist i svjat za nas“ entspricht „Aba“, was bedeutet: an die Arbeit gehen.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"60" . \bold  " В зорите на Живота – V zorite na Života."}  3. Dezember 1922. Allgemeine Okkultklasse, II. Jahrgang, 10. Vortrag.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"61" . \bold  " Бог е Любов – Bog e Ljubov."}  Der erste Teil dieses Liedes entstand am 10. Dezember 1922, Allgemeine Okkultklasse, II. Jahrgang, 11. Vortrag; der zweite Teil \italic"Nij ste hodim" am 17. Dezember 1922, d. h. im Laufe des nachfolgenden Vortrages der gleichen Klasse. Diese Übung enthält Bilder und Gestalten. Man beginnt leise zu singen. Die Kraft dieses Liedes liegt im Erleben verborgen. Die menschliche Seele empfängt aus den höheren Regionen die ewige Symphonie, welche aus dem ganzen Kosmos als Lobpreisung des Unendlichen [Gott] kommt. Dieser Gedanke wird im ersten Teil des Liedes \italic"Gott ist Liebe" ausgedrückt. Diese Symphonie erfüllt und verklärt die menschliche Seele, die nun freudig ihren Ruf nach oben sendet. Dies wird im zweiten Teil des Liedes ausgedrückt: „Wir werden auf dem Weg des Lichtes wandeln.“
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"62" . \bold  " Вехади – Vehadi."} 17. Juni 1925, Allgemeine Okkultklasse, IV. Jahrgang, 28. Vortrag. Das Wort \italic"Vehadi" bezeichnet den Beginn einer bestimmten Arbeit. Das Motiv stellt ein kleines Fragment eines heiligen Gesanges dar.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"63" . \bold  " Вечер сутрин – Večer sutrin."} 10. Dezember 1924, Allgemeine Okkultklasse, IV. Jahrgang, 9. Vortrag.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"64" . \bold  " Имаше человек – Imaše čelovek."} 30. November 1927, Allgemeine Okkultklasse, VII Jahrgang. Text Johannes 1,6-13.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"65" . \bold  " Кажи ми ти истината – Kaži mi ti istinata."} 26. November 1924, Allgemeine Okkultklasse, IV Jahrgang, 7. Vortrag.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"66" . \bold " Благата песен – Blagata pesen."} 27. März 1929, Allgemeine Okkultklasse, VIII Jahrgang, 32. Vortrag. Dieses Lied wurde aus einer sehr alten Sprache übersetzt. Das Lied wurde \italic"Hadi henzi" betitelt; Übersetzt bedeuten diese Worte: das gütige Lied. In ihm wurde ein ebener Weg ohne Hinderdnisse gezeichnet.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"67" . \bold  " Мусала – Musala."} 3. Dezember 1922, Allgemeine Okkultklasse, II. Jahrgang, 10. Vortrag.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"68" . \bold  " Ходи, ходи – Hodi, hodi."} 23. April 1924, Allgemeine Okkultklasse, III. Jahrgang, 27. Vortrag. Der Text der zweiten Strophe stammt von Stojanka Ilieva.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"69" . \bold  " Тъги, скърби – Tăgi, skărbi."}  16. April 1924, Allgemeine Okkultklasse, III. Jahrgang, 26. Vortrag. Wenn ihr diese Übung singt, werdet ihr eine Erfrischung spüren.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"70" . \bold  " Светъл ден – Svetăl den."} 16. April 1924, Allgemeine Okkultklasse, III. Jahrgang, 26. Vortrag.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"71" . \bold " Нева Сензу – Neva Senzu."} 1. Mai 1929, Allgemeine Okkultklasse, VIII. Jahrgang, 37. Vortrag. Dieses Lied ist im östlichen Stil geschrieben und die Wörter sind einer alten Sprache entliehen. Wenn man sie übersetzen würde, würden sie ihre Kraft verlieren. Die Silben sind derart angeordnet, dass sie als Mittler von Kräften dienen. Das Lied \italic"Neva Senzu" zeigt den geistigen Weg auf, der nicht glatt verläuft, sondern Hindernisse aufweist. Hier muss der Mensch von den Höhen in das Tal hinabsteigen, um bestimmte
        }
      }

    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          schwierige Fragen des Lebens zu lösen. Es handelt sich um das Lied der Adepten, dessen Musik sehr lange vor unserer Zeit erschaffen wurde.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"72" . \bold  " Киамет Зену – Kiamet Zenu."}  8. Dezember 1926, Allgemeine Okkultklasse, VI. Jahrgang, 12. Vortrag. \italic"Kiamet Zenou" bedeutet, dass du einen Ort betrittst, der so schön, so außergewöhnlich ist, dass du staunst und nicht weißt, worauf du zuerst deinen Blick richten sollst. Das Wort \italic"Kiamet" bedeutet: das Große im Leben, dasjenige, was im Raum und in der Zeit verborgen liegt. Es ist der Beginn aller Dinge, dasjenige, das der schöpferischen Kraft Schwung gibt. Dieses Wort bedeutet auch die Kraft, mit deren Hilfe du kämpfst, um die Einschränkungen zu Beginn der Erneuerung zu besiegen. \italic"Mahar Benu" ist der Große, der die Dinge ordnet und aufbaut. Er ist unveränderlich und beständig.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"73" . \bold  " Давай, Давай – Davaj, Davaj."}  28. Dezember 1926, Allgemeine Okkultklasse, 6. Jahrgang, 4. Vortrag. Dieses Lied ist ein kraftvolles Motiv, welches Bilder und Gemälde im Bewusstsein des Menschen erweckt. Das Lied gibt dem Menschen den Impuls zu geben, auf dem Acker des Lebens zu säen. Mit dem Singen von \italic"Davaj, davaj" sagst du: „Ich muss geben“. Wer reine Weizenkörner gibt, zu dem kommt dasselbe zurück. \italic"Davaj Davaj" beginnt mit dem Ton A, der die Quelle symbolisiert; also du bist eine Quelle, die fließen soll. Du hast dich gedrückt: Stehe auf und verrichte deine Arbeit. Der Begriff \italic"Davaj, davaj" hat eine umfassende Bedeutung.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"74" . \bold  " В начало бе Словото – V načalo be Slovoto."} 5. November 1924, Allgemeine Okkultklasse. IV Jahrgang. Der Text des Liedes stammt aus dem Johannesevangelium 1:1-5. Die ersten beiden Verse stehen für die Aktivität des Geistes, der dritte für die Aktion der Intelligenz, der vierte für die Aktion des Herzens und der fünfte für die materielle Welt. Die Finsternis stellt die materielle Welt dar, die das Licht durchdringt. Aus diesem göttlichen Ursprung aller Dinge ist das Wort in grandioser Schönheit erschienen. \italic"V'načalo be Slovoto, i Slovoto be u Boga" –  dieser Vers ist enorm wichtig. Der Mensch sollte ihn morgens, direkt nach dem Aufstehen, lesen, singen und darüber meditieren, bis das Licht seinen Intellekt erleuchtet und er diese großartige Idee akzeptiert. Dann wird sich sein Herz verwandeln und milder werden, seine Intelligenz wird sich verändern, und er wird beginnen, richtiger zu denken. Dieses Lied repräsentiert die neue Richtung, die in die Musik kommt; das ist die Musik der Liebe!
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"75" . \bold  " Мисли, право мисли – Misli, pravo misli."}  6. Juni 1926, Allgemeine Okkultklasse, V. Jahrgang, 30. Vortrag. Die Kraft des Menschen beruht auf heiligen Ideen, die er in sich selbst für das Leben hegt. Solange er diese heiligen Gedanken bewahrt, schützen sie ihn ebenfalls. Bewahrt er sie jedoch nicht mehr, so ist sein Fall unvermeidlich. Dieses Lied wird von Bewegungen der Arme begleitet.
        }
      }



      \vspace #0.5
      \line {
        \justify {
          \concat {"76" . \bold " Вдъхновение – Vdăhnovenie."}  10. Dezember 1924. Allgemeine Okkultklasse IV Jahr, 9. Vortrag.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"77" . \bold  " Весел ти бъди – Vesel ti bădi."} 21. August 1929, Rila, die Sieben Rila-Seen.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"78" . \bold  " Запали се огънят – Zapali se ogănjat."} 8. August 1933, Vitoscha, El Shaddai.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"79" . \bold  " Бершид ба – Beršid ba."}  Das Lied entstand 1932, Der Titel stammt aus dem 1. Buch Mose und bedeutet den Anfang der Dinge.
        }
      }

    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          \concat {"80" . \bold  " Малкият извор – Malkijat izvorv."}  21. Januar 1925, Allgemeine Okkultklasse, IV Jahrgang, 16. Vortrag. Das Lied erweckt die kindliche Reinheit beim Menschen. Christus sagt: „Wenn ihr nicht werdet wie die Kinder, so werdet ihr nicht in das Reich Gottes eintreten.“
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"81" . \bold " Добър ден – Dobăr den."}  11. September 1933, Vitoscha, El Schadai.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"82" . \bold  " Всичко в живота е постижимо – Vsičko v života e postižimo."}  Das Lied entstand 1933.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"83" . \bold  " Тъги, скърби са богатство – Tăgi, skărbi sa bogatstvo."}  7. Dezember 1927. Seid ihr traurig, so singt dieses Lied. Es ist wichtig, dass der Mensch weiß, wie er dieses Lied singen soll. Beim Singen dieses Liedes sollte man das Gesetz der Kontraste berücksichtigen. Einmal kann man das Lied leise, einmal laut singen. Wenn man es mehrmals auf dieselbe Art und Weise singt, wird es seine Bedeutung verlieren. Mit den Liedern, die im Volksmusikstil komponiert wurden, brachte Petar Danov Erneuerung in der bulgarischen Volksmusik.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"84" . \bold  " Духът ми шепне това – Duhăt mi šepne tova."} 19. Januar 1934 Jugendokkultklasse, XII Jahrgang, 14. Vortrag.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"85" . \bold  " Сила, Живот, здраве – Sila, Život, zdrave."} Das Lied entstand am 7. Januar 1932.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"86" . \bold  " Красив е животът – Krasiv e životăt."}  Das Lied entstand am 19. November 1941.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"87" . \bold  " Песен на зората – Pesen na zorata."}  Das Lied entstand 1930.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"88" . \bold  " При всичките условия – Pri vsičkite uslovija."} Das Lied entstand am 4. November 1934.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"89" . \bold  " Химн на великата Душа – Himn na velikata Duša."}  Das Lied entstand im Sommer 1933. Dieses Lied lässt jene innere Sonne erahnen, die in allen Wesen arbeitet und sie von der Finsternis ins Licht, vom Tod ins Leben, von der Sklaverei in die Freiheit erhebt. Es endet mit einer Freudenhymne für den großen Einen, der allem zugrunde liegt.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"90" . \bold  " Мога да кажа – Moga da kaža."} 20. März 1937. Hier ist nicht von der physischen, sondern von der göttlichen Sonne, die aufgeht, die Rede. Geht die göttliche Sonne auf, wird der Verstand und das Herz erfrischt.
        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"91" . \bold  " Аз смея да кажа – Az smeja da kaža."} 1. September 1935. „Ich wage zu sagen,dass die Sonne licht ist“;  sie ist dort licht, wo Vernünftigkeit vorhanden ist. Unter dem Wort \italic"Licht" verstehen wir die vernünftige Welt, in der alles möglich ist. Alle vernunftbegabten Wesen sind bereit, dir zu helfen, wenn du dich ihnen vorstellst.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"92" . \bold " Да имаш вяра – Da imaš vjara."}  Das Lied entstand 9. Oktober 1936.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"93" . \bold  " В пустинята на живота – V pustinjata na života."} Das Lied entstand 1934.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"94" . \bold " Мога да любя – Moga da ljubja."} Das Lied entstand 1942.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"95" . \bold  " Сила, здраве е богатство – Sila, zdrave e bogatstvo."} Das Lied entstand am 3. Januar 1940.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"96" . \bold  " Зов на планината – Zov na planinata."} Das Lied entstand 1937.
        }
      }



    }
  }



  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {



      \vspace #0.4
      \line {
        \justify {
          \concat {"97" . \bold " Цветята цъфтяха – Cvetjata căftjaha."} 22. Januar 1941. Die Blume, die sich geöffnet hat, kann die Sonnenstrahlen empfangen. Das Herz und der Verstand des Menschen müssen sich für die göttlichen Wohltaten öffnen; nur dann kann er wahre Errungenschaften erlangen.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"98" . \bold  " Той иде – Toj ide."} Begonnen am 7. Januar, beendet am 5. Februar 1939.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"99" . \bold " Песен на светлия път – Pesen na svetlija păt."}  Das Lied entstand 1942.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"100" . \bold  " Доще ден – Došte den."}  Das Lied entstand am 7. Februar 1940.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"101" . \bold  " Там далече – Tam daleče."} Das Lied entstand 1937.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"102" . \bold " Денят иде – Denjat ide."} 18 Februar 1938. Der Text der zweiten und der dritten Strophe sind von Stojanka Ilieva.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"103" . \bold  " Пролет – Prolet."} 8. Januar 1942. Dieses Lied gab Petar Danov einer Schwester, die von Beruf Lehrerin war, damit sie es ihren Schülern beibringen konnte.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"104" . \bold  " Подмладяване – Podmladjavane."} 8. September 1943.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"105" . \bold  " Буря – Burja."} 15. Dezember 1935. Dieses Lied erinnert daran, dass es im Menschen eine Kraft gibt, die ihn stützt. Wenn der Mensch aufmerksam auf die vernünftige Stimme dieser Kraft horcht, wird er den Sinn allen Leides, aller Qualen und Stürme, die uns durchschütteln, verstehen; er wird ihren Stößen widerstehen.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"106" . \bold  " Ранен час – Ranen čas."}
          Zu diesem Lied gibt es keine Angaben.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"107" . \bold  " Радост и скръб – Radost i skrăb."} Begonnen am 9. November, beendet am 16. November 1933. Im Lied wird der Grundidee Ausdruck verliehen, dass Kummer und Freude die zwei Lebenswege darstellen. In der Trauer erlangt der Mensch bestimmte Errungenschaften, andere in der Freude. Deshalb werden im großen Leben der Liebe beide Wege gleichermaßen geschätzt.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"108" . \bold " Пролетна песен – Proletna pesen."}  Komponiert von Schülern nach den Motiven von Petar Danov im Februar 1935.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"109" . \bold " Слънчева песен – пчелна мушичка – Slănčeva pesen – pčelna mušička."} Das Lied entstand im Februar 1935. Dieses Lied wurde von Petar Danov zum Lied \italic"Proletna pessen," hinzugefügt. Dieses Lied wird als sein Ende betrachtet.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"110" . \bold  " Студът всичко дава – Studat vsichko dava."}  Begonnen am 5. Jaunuar und beendet am 16. Januar 1934. Wenn das Bewusstsein des Menschen durch die innere Kälte des Hasses, der Dunkelheit, des Egoismus, der Begrenzung erstarrt ist, gelangt der Mensch durch die äußere Kälte, die ungünstigen Bedingungen, die Widerspüche, die Schwierigkeiten, die Kämpfe und das Leiden zum inneren Licht. Er steigt in eine höhere Welt auf, die durch die Ankunft des Frühlings symbolisiert wird.

        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"111" . \bold  " Езикът на живата природа – Ezikăt na živata priroda."}  Die Arbeit am Lied begann am 18. Oktober und endete am 19. Oktober 1933.  Durch schöne Symbole und Bilder, die aus dem Leben der Natur entnommen wurden, werden die inneren Erlebnisse der Seele beschrieben.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"112" . \bold  " Правда – Pravda."}  Das Lied entstand am 15. April 1943.
        }
      }

    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          \concat {"113" . \bold " Скитах се по гори и планини – Skitah se po gori i planini."}  Das Lied entstand 1933. Ossia stellt die Variante nach Vesela Nestorova dar.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"114" . \bold  " Обетована земя – Obetovana zemja."} 27. Januar 1933. Dieses Lied beschreibt den Weg aller Seelen, die das alte Leben verlassen und sich dem schönen Leben des Lichtes, der Freude und der Wahrheit zuwenden.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"115" . \bold " Аин фаси – Ain fasi."} 7. Oktober 1931. Dieser Text wurde in einer uralten, heiligen Sprache überliefert. Die Grundidee dieses Liedes lautet: Du, der Du der Grund von allem bist, Du, der Du mit Deiner Liebe alles durchdringst und stützt, sei gesegnet! Möge ich in Deinem Licht und Deiner Liebe leben! Wie sehr möchte ich auf Deinen Spuren wandeln! Mein ganzes Leben diene deinem Ruhm!
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"116" . \bold " Духай ветре – Duhaj vetre."} Das Lied besteht aus zwei Teilen, die zu unterschiedlicher Zeit gegeben wurden. Der erste Teil wurde 1944 in Matschaievo, der zweite \italic"Hai-di-di" am 30. Dezember 1942 in Sofia Izgrev gegeben. Die urspüngliche Variante des Liedes wurde unter der Nummer 125 auf Seite 160 gedruckt. Laut den Erinnerungen der Musiker fügte Petar Danov als Ende des Liedes den Text \italic" Za teb bulgarino" (für dich, Bulgare) hinzu.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"117" . \bold  " А бре, синко – A bre, sinko."} Das Lied entstand am 27. November 1934 als bulgarisches Volkslied, dessen ursprüngliche Reinheit wiederhergestellt wurde.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"118" . \bold  " Бащина песен – Угледна мома – Baština pesen – Ugledna moma."} 21. Januar 1935. Dieses Lied ist die Fortsetzung des Liedes \italic"A bre, sinko." Es ist das Vorbild des bulgarischen Volksliedes, dessen ursprüngliche Reinheit und dessen ursprünglicher Geist wiederhergestellt wurden.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"119" . \bold  " Ставай, дъще! – Stavaj, dăšte!"} Das Lied entstand 1934 als bulgarisches Volkslied, dessen ursprüngliche Reinheit wiederhergestellt wurde. Viele bulgarische Volkslieder haben einen okkulten Ursprung.
          Penjo Ganev – ein Schüler von Petar Danov – sang dieses Lied den Frauen im Dorf Aldomirovzi vor, wo er als Lehrer arbeitete. Ihnen gefiel das Lied sehr; sie bemängelten jedoch, dass es nur eine Strophe habe.
          Nachdem Danov davon erfuhr, bat er seine Schülerin Vsela Nestorova, eine zweite Strophe dazuzudichten.
          Nachdem die Frauen wieder mit der Länge des Liedes nicht zufrieden waren, denn es habe ja wieder keine Worte, fügte Danov die dritte Strophe hinzu. So sind die drei Strophen des Liedes entstanden. Inhaltlich lehnt sich der Text stark an die Bibel: „Die Ernte ist groß, der Arbeiter aber sind wenige.“ Lk 10,2.
        }
      }


      \vspace #1.0
      \line {
        \justify {
          \fontsize  #+0.8 \bold { \fill-line { \bold" Nach 1944 veröffentlichte Lieder, Melodien und Themen"} }
        }
      }
      \vspace #0.3

      \line {
        \justify {
          \concat {"120" . \bold  " Българска рапсодия – Bălgarska rapsodija."} Das Lied entstand 1934. Hier wurde das Lied in der Fassung von Penjo Ganev publiziert, die den für die bulgarische Volksmusik typischen 7/8 Rythmus im Andante-Teil beibehält. Bei Maria Todorovas Fassung ist dieser Teil in 3/4 Rythmus erschienen. In diesem Lied stellte Petar Danov die erhabensten Gestalten aus dem bulgarischen Epos dar. Ihnen liegt eine tiefe Symbolik zugrunde: Das ist der mystische Weg der menschlichen Seele, die danach strebt, in Berührung mit der göttlichen Liebe zu kommen.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"121" . \bold " Българска идилия – Bălgarska idilija."}  Notiert von einer Tonbandaufnahme von
        }
      }



    }
  }


  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          Petar Kamburov, redigiert von Georgi Stratev, Ioanna Strateva und Stanka Zeleva. Petar Danov gab dieses Lied Peter Kamburov im Februar 1920 in der Opălčenska Straße 66. Die Idylle beschreibt das Streben der bulgarischen Seele nach dem Ewigen im Leben.
          Sie will die ewige Gerechtigkeit, die ewige Liebe erreichen, die das Sein erfüllen. Sie erahnt die Existenz einer schönen Welt in sich und möchte sie Wirklichkeit werden lassen.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"122" . \bold " Не ли думах – Ne li dumah."}  27. Oktober 1943, Sofia. Izgrev.
        }
      }

      \vspace #0.3

      \line {
        \justify {
          \concat {"123" . \bold " Мирът иде  – Mirăt ide."} Die Melodie wurde 1918 von Petar Danov in der  Opălčenska Straße 66 gegeben, drei Tage danach (29. September 1918) beendet Bulgarien seine Teilnahme am Ersten Weltkrieg. Später ergänzt Petar Danov die Melodie (21. Dezember 1933).
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"124" . \bold " Мирът иде II – Mirăt ide II."} Adaptiert von Irina Kisiova und Liljana Tabakova. Der Text wurde von Stojanka Ilieva nach dem Wunsch von Petar Danov im Juli 1934 geschrieben. Dann sagte Petar Danov: „Der Frieden kommt, aber schwer. Deshalb suchen wir nach ihm und rufen ihn mit einer Melodie.“
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"125" . \bold " Духай ветре II – Duhaj vetre II."} Erster Teil entstand am 25. Dezember 1942; der zweite Teil, \italic"Hai di di ..." wurde am 30. Dezember 1942 gegeben. Dieses Lied wurde uspünglich in dieser Form gegeben. Später wurde der erste Teil des Liedes nach Wunsch einiger Schüler von Petar Danov geändert und so in der Ausgabe von 1944 veröffentlicht.
        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"126" . \bold " Кажи ми, светли Божи лъч – Kaži mi, svetli Boži lăč."}  19. Dezember 1923, Allgemeine Okkultklasse, III Jahr, 10. Vortrag. Petar Danov sagt: „Diese Übung können wir jetzt unvollendet lassen – sie ist für die künftige Kultur. Das zweite Stadium der Musik ist das freie Singen. Bei diesem Singen kann die heutige Musik nicht funktionieren, weil der Takt in einer ganz anderen Weise verändert werden muss; außerdem hat die Betonung der Wörter eine besondere Zusammensetzung. Beim freien Singen kann der Mensch ohne Begeisterung nicht singen.“
        }
      }


      \vspace #0.4
      \line {
        \justify {
          \concat {"127" . \bold " Марш на светлите сили – Marš na svetlite sili – Marsch der lichen Mächte."} 27. Mai. 1936. Siegreicher Marsch der lichten Engelmächte in der lebendigen Natur, die in ihrem charakteristischen Rhythmus schreiten. Mit dieser Musik erhebt sich der Mensch in die Welt der Engel.
        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"128" . \bold " Марш на светлите сили II – Marš na svetlite sili II."} Text Peter Ganev.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"129" . \bold " Берхан Ази – Berhan Azi."} Das Lied entstand 1936.
        }
      }
      \vspace #0.3

      \line {
        \justify {
          \concat {"130" . \bold " Песен на детето  – Pesen na deteto."} Das Lied erzählt die Geschichte eines Kindes, das aus dem Zuber aussteigen will, in dem es badet. Seine Mutter möchte es daran hindern, und es ist unzufrieden.
          Endlich kommt der Sieg! Das Kind steigt aus dem Badezuber und ist glücklich, es geschafft zu haben.
          Es spielt. Schließlich geht das Kind in die Schule, um zu lernen und erhält sein erstes Lesebuch.
          Es spricht zu dem Buch: „Ich habe es geschafft, aus dem Zuber rauszukommen, und auf dieselbe Weise werde ich mit dir fertig werden. Trotz der vielen Schwierigkeiten, die sich mir entgegenstellen, werde ich sie überwinden. Die verschiedenen Gefühle des Kindes sind in jedem der Teile dieses Stückes ausgedrückt.
          Diese schwierige Zeitspanne symbolisiert die Bewusstseinsstufen, die die Menschen auf ihrem Weg der Erweckung durchlaufen.
        }
      }







    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {
      \line {
        \justify {
          \concat {"131" . \bold " Малкият планински извор  – Malkijat planinski izvor."} 27. März 1937, Sofia, Izgrev. Text Stojanka Ilieva.
        }
      }

      \vspace #0.5

      \line {
        \justify {
          \concat {"132" . \bold " Бог е Любов II – Bog e Ljubov II."} 25. Februar 1934, in Sofia, Izgrev.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"133" . \bold " Радост за душата  – Radost za dušata."} In der Niederschrift von Metodi Šivačev wurde das Lied \italic"Seid rein" betitelt. (zu \italic"Sladko medeno)"
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"134" . \bold " „Към Фир-Фюр-Фен“ – „Kăm Fir-Fjur-Fen“."} Das Lied entstand in den ersten Jahren der Okkulten Schule.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"135" . \bold " Кажи ми Ти Истината II – Kaži mi Ti Istinata II."} Schließt das Original von 1924 ein mit einer Fortsetzung, die Petar Danov 1942 komponierte.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"136" . \bold " Кажи ми ти Истината III – Kaži mi ti Istinata III."} Schließt das Original von 1924 ein mit dem Instrumentallsolo von Simeon Simeonov.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          137. \bold"Свобода е потребна за душата – Svoboda e potrebna za dušata." Es gibt keine Angaben zu der Entstehung des Liedes.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"138" . \bold " Вяра светла I – Vjara svetla I."} Das Lied wurde von Petar Danov in den ersten Jahren der Okkulten Schule komponiert.
        }
      }


      \vspace #0.4
      \line {
        \justify {
          \concat {"139" . \bold " Вяра светла II – Vjara svetla II."} Eine andere Melodie, die in der Allgemeinen Okkultklasse gegeben wurde. Das Lied wurde von Penjo Ganev vorgetragen und von seinem Sohn Peter Ganev notiert.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"140" . \bold  " Вяра светла III – Vjara svetla III."} Nicht veröffentlichte Variante des Liedes. Den mittleren Teil des Liedes hat ein Schüler aus Varna komponiert.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"141" . \bold  " Милост, благост – Milost, blagost."} Petar Danov gab dieses Lied einer Schülerin in den ersten Jahren der Schule.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"142" . \bold " Аз мога да дишам – Az moga da dišam."} Musik und Text von Petar Danov. Das Lied entstand 1938.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"143" . \bold  " Играта на поточето – Igrata na potočeto."} Das Lied entstand 1933.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"144" . \bold  " Малката буболечица – Malkata bubolečica."} 27. Mai 1933. Musik von Petar Danov. Text von Olga Slavčeva. In dieser Notation wurde die Originalmelodie nach dem Gesang von Penjo Ganev wiederhergestellt; diese war im Liederbuch von Maria Todorova verändert.
        }
      }
      \vspace #0.6
      \line {
        \justify {
          \concat {"145" . \bold " Да бих Тe слушал – Da bih Te slušal."} 14. März 1940, Sofia, Izgrev.
        }
      }
      \vspace #0.4

      \line {
        \justify {
          \concat {"146" . \bold " Слушам – Slušam."} 17. Mai 1929, Das Lied ist eine musikalische Übung.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"147" . \bold " Радост – Radost."} 27. April 1935, Sofia, Izgrev.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"148" . \bold " Писмото – Pismoto."} Musik und Text von Petar Danov. Das Lied entstand 1926.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"149" . \bold " Me-хейн – Me-hejn."} 29. Januar 1941, Text I Stojanka Ilieva. Text II unbekannt.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"150" . \bold " Житно зърно – Žitno zărno."} 19. Januar 1942, komponiert von Petar Danov, ausgearbeitet von Vsela Nestorova, vollendet am 4. Februar 1942.
        }
      }
      \vspace #0.4
      \line {
        \justify {
          \concat {"151" . \bold " Изворче – Izvorče."} Musik von Vsela Nestorova, Text von Petar Danov.
        }
      }




    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          \concat {"152" . \bold " Молитва – Molitva."} 13. Oktober 1940, Musik und Text von Petar Danov.
        }
      }

      \vspace #0.4

      \line {
        \justify {
          \concat {"153" . \bold " Молитва – Molitva."} Petar Danov komponierte die Melodie am 3. September 1940. Text Ioana Strateva.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"154" . \bold " Песен за двете сестри – Pesen za dvete sestri."} Das Lied entstand während der Evakuation in Мărčaevo 1944.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"155" . \bold " Пролетна песен – Proletna pesen."} Gegeben am 9. März 1933, in Sofia, Izgrev, Text Olga Slavčeva.
        }
      }

      \vspace #0.4

      \line {
        \justify {
          \concat {"156" . \bold  " Десет теми – Deset temi."}

          1). Fröhliches Motiv, das Petar Danov in seinen Studienjahren in Amerika eingefallen ist. In der Ausgabe von 1949 wurde das Lied unter dem Titel \italic"Thema 3." veröffentlicht.


          2). In der Ausgabe von 1942 wurde das Lied mit Titel \italic"Thema 6" veröffentlicht.

          3). 27. Januar 1933.

          4). 5. Juli 1938.

          5). Petar Danov komponierte dieses Thema nach der Phrase \italic"Wir werden uns erneuern."  In der Ausgabe von 1949 wurde das Lied mit dem Titel \italic" Thema 32" veröffentlicht.

          6). und 7). wurden am 28. Mai 1941 komponiert, in der Allgemeinen Okkultklasse nach dem Thema „Ich werde die Wärme bewahren, die in meinem Herzen die göttlichen Gütern bringt“. In der Ausgabe von 1949 wurde das Lied mit dem Titel \italic"Thema 37" und \italic" Thema 38" veröffentlicht.

          8). Das Thema entstand in den ersten Jahren der Schule. In der Ausgabe von 1949 wurde das Thema mit dem Titel \italic"Thema 42" veröffentlicht.

          9). Petar Danov komponierte das Thema in den ersten Jahren der Schule. In der Ausgabe von 1949 wurde das Thema mit dem Titel \italic"Thema 28" veröffentlicht.

          10). Petar Danov komponierte das Thema am 27. und 29. Januar 1933, Sofia, Izgrev. In der Ausgabe von 1949 wurde das Lied mit dem Titel \italic"Variationen" veröffentlicht.

        }
      }


      \vspace #0.4
      \line {
        \justify {
          \concat {"157" . \bold " Мелодия – Красив Живот – Melodija – Krasiv Život."} Das Lied entstand 1933, Text von Stojanka Ilieva. In der Ausgabe von 1949 wurde das Lied mit dem Titel „Melodie 13“ veröffentlicht.
        }
      }

      \vspace #0.4
      \line {
        \justify {
          \concat {"158" . \bold " Мелодия – Озарение – Melodiya – Osarenie."} 17. November 1934. Der Text ist von Kalinka Stančina. In der Ausgabe von 1949 wurde das Lied mit dem Titel „Melodie 15“ und „Melodie 34“ veröffentlicht.
        }
      }

      \vspace #0.4

      \line {
        \justify {
          \concat {"159" . \bold " Мелодия – В радостта на деня–Melodija – V radostta na denja."} 1933. Text von Kalinka Stančina. In der Ausgabe von 1949 wurde das Lied mit dem Titel „Melodie 13“ veröffentlicht.
        }
      }
      \vspace #0.4


      \line {
        \justify {
          \concat {"160" . \bold " Мелодия–Когато се денят пробужда–Melodija–Kogato se denjat probužda."} 5. November 1943. Jugendokkultklasse XXIII, 5. Vortrag. Text Stojanka Ilieva. In der Ausgabe von wurde das Lied mit dem Titel „Melodie 31“ veröffentlicht.
        }
      }

      \vspace #0.4


      \line {
        \justify {
          \concat {"161" . \bold " Гласът  на  Живия  Господ  –  Новото  Възкресение  Glasăt  na  Živija  Gospod  " } \bold " – Novoto  Văzkresenie." Dieses Lied wurde von Boris Nikolov gesungen und von Peter Ganev notiert. Das Lied ist von tiefer Mystik durchdrungen. Im Werk von Petar Danov drücken dieses und alle nachfolgenden Lieder neue melodische Intonationen aus. Letztere sind im Privatunterricht entstanden, die Danov Liljana Tabakova gewährte. Durch das Lehren dieses Liedes deutete Petar Danov eine neue musikalische Form an, die als Beispiel und Basis der Musik der Zukunft dienen wird. Dies deutet Danov mehrmals an (Allgemeine Okkultklasse aus dem Jahr 1923, 3. Jahrgang, 10. Vortrag). Eine solche Andeutung erfolgte auch beim Lehren des Liedes \italic"Kaji mi svetli Boji lach," das
        }
      }




    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {
      \line {
        \justify {
          jedoch unvollendet blieb. Um diese Lieder gut zu singen, bedarf es eines mystischen Element, das heißt sie sollen mit Ehrfurcht, Ehrlichkeit, Einfachheit, Reinheit und Bildhaftigkeit gesungen werden.

        }
      }


      \vspace #0.4
      \line {
        \justify {
          \concat {"162" . \bold " Новото Битие – Novoto Bitie."} Das Erschaffen des neuen Adam. Gegeben von Petar Danov an Liljana Tabakova in der folgenden Reihenfolge: Erster göttlicher Tag am 7. Dezember 1941., Zweiter göttlicher Tag am 28. Juli 1942. Dritter göttlicher Tag  am 1. Oktober 1942. Vierter göttlicher Tag am 12. November 1942, Fünfter göttlicher Tag am 30. Mai 1943, Sechster göttlicher Tag am 21. Juli 1943, Siebter Göttlicher Tag am 15. September 1943. Unter \italic" Neuer Genesis" verstehen wir das neue Leben, welches sich jetzt für die gesamte Menschheit und jedes einzelne Individuum an sich aufzubauen beginnt. Die erste „Genesis“, die in der Bibel beschrieben wurde, symbolisiert das alte Leben. Der alte Adam hat gesündigt. Musikalisch gesprochen, hat er das F nicht sauber genommen, das dem Materiellen in dieser Welt entspricht. Der neue Adam wird diesen Fehler des alten Adam korrigieren. Er wird keine Fehler mehr begehen und nicht mehr sterben. Musikalisch betrachtet bedeutet dies: Er wird die Noten der Tonleiter bis zum A richtig singen. Das A entspricht der 6. Rasse. Es bleibt dann nur noch die Note H, die reife Frucht. Diese Frucht symbolisiert die 7. Rasse. Die sieben Tage Gottes aus der Genesis entsprechen den sieben Noten der Tonleiter. So beginnt der erste Tag Gottes mit der Note C. Das bedeutet, dass die Mächte des Lichts, die die Schöpfung der neuen Welt begonnen haben, die Materie des alten Lebens in eine neue, höhere Tonleiter umformen und in sie das Element der Unsterblichkeit einfügen werden. Nach dieser Analogie werden sich im Blut des neuen Adam neue rote Blutkörperchen formen, die von den Eigenschaften des neuen Lebens durchdrungen sein werden. Der zweite Tag Gottes, der mit dem Ton D beginnt, wird das Nervensystem, die Knochen und den Willen transformieren. So wird jeder göttliche Tag etwas Neues in die Struktur des Kosmos und des Menschen hineinbringen. Jeder Mensch wird seine neue Existenz individuell leben. Das Lied endet mit den magischen Worten des kosmischen Geistes \italic"Aum" und der Universalseele Aumen. \italic"(Deutung nach Ideen von Petar Danov.)" Die bulgarische Sprache hat zwei Wörter für \italic"Licht," \italic"svetlina" und \italic"videlina." Diesen Wörtern kommt eine unterschiedliche Bedeutung zu, die Danov in seinen Vorträgen darlegt.
        }
      }

      \vspace #0.5

      \line {
        \justify {
          \concat {"163" . \bold " Вътрешният глас на Бога – Vătrešnijat glas na Boga."} Petar Danov sagte: „Diese Worte sind in der Sprache Vatan geschrieben. Sie bedeuten: Liebe und sei frei. Höre auf die innere Stimme Gottes. Schreite ohne Zögern auf deinem Wege fort.“
        }
      }
      \vspace #0.5

      \line {
        \justify {
          \concat {"164" . \bold " Една вечна истина – Edna večna istina."} Das Lied wurde am 18. April 1943 im Beisein von Liljana Tabakova komponiert. Der Text ist in einer alten, nicht übersetzbaren Sprache geschrieben. Es geht um die erste große Seele, die Mittlerin der Liebe. Dieses Lied muss als Meditation gesungen werden, mit Konzentration und mystischer Andacht.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"165" . \bold  " Химни на Слънцето – Himni na Slănceto."} Das Lied wurde am 5. Mai 1942 von Petar Danov im Beisein von Liljana Tabakova komponiert. „Mit diesem Lied werdet ihr die aufgehende Sonne begrüßen. Dies ist das Gebet zum Sonnenaufgang. Es ist eine majestätische Hymne an alle Sonnen. Diese Hymnen werden auch von den Engeln gesungen.“ Dieses Lied wird zusammen mit dem nächsten Lied \italic"Molitva" ausgeführt.
        }
      }



    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {

      \line {
        \justify {
          \concat {"166" . \bold  " Молитва – Molitva."}  Petar Danov komponierte im Beisein von Liljana Tabakova. Es wird mit den „Himni na Slănceto“ [Hymnen an die Sonne] zusammengesungen.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"167" . \bold  " Божията Любов ме озари – Božijata Ljubov me ozari."}  Petar Danov komponierte das Lied am 13. März 1942 im Beisein von  Liljana Tabakova.
        }
      }

      \vspace #0.5

      \line {
        \justify {
          \concat {"168" . \bold  " Песента на ангелите – Pesenta na angelite."} Petar Danov komponierte das Lied am 15. April 1943 im Beisein von Liljana Tabakova. Petar Danov sagt: „Durch dieses Liedes könnt ihr euch mit den Engeln verbinden; ihr könnt singen und beten wie sie. Ihr könnt werden wie sie, den Namen Gottes lobpreisen und Seinen Willen hier auf der Erde und oben im Himmel erfüllen.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"169" . \bold  " Господи, колко те обичам! – Gospodi, kolko te običam!"} Petar Danov komponierte das Lied am 22. August 1943 im Beisein von Liljana Tabakova.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {"170" . \bold  " Кажи ми светли Божи лъч II – Kaži mi svetli Boži lăč II."} Petar Danov komponierte das Lied am 26. Mai 1943 im Beisein von Liljana Tabakova. Es enthält den Text eines Liedes mit demselben Titel aus dem Jahr 1923.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"171" . \bold  " Моето слънце днес ще изгрее – Moeto slănce dnes šte izgree."} Begonnen in der Jugendokkultklasse am 29. Oktober 1943, in Sofia, Izgrev, beendet im Dorf Мărčaevo am 17. August 1944. Notiert von Liljana Tabakova.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"172" . \bold   " Ти ще сполучиш в Живота – Ti šte spolučiš v Života."} Petar Danov komponierte das Lied am 24. Januar 1941 im Beisein  Liljana Tabakova. Petar Danov sagt: „Wenn der Mensch singt und an die Engel und an ihr außergewöhnlich schönes Leben denkt, wird er im Leben immer erfolgreich sein.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"173" . \bold   " Зора на Новия живот – Zora na Novija život."} Petar Danov komponierte das Lied am 3. Juni 1941  im Beisein von  Liljana Tabakova.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"174" . \bold  " Отче наш, не ни въвеждай – Otče naš, ne ni văveždaj."} Danov komponierte das Lied am 17. August 1944 im Dorf Мărčaevo, notiert von Liljana Tabakova.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {"175" . \bold  " Странник съм в този свят – Strannik săm v tozi svjat."} Von Petar Danov gesungen im Vitoscha-Gebirge im Camp El Shaddai am 16. Juni 1941. Dieses Lied ist
        }
      }
    }
  }

  \markup \fontsize  #+2  {
    \override #'(baseline-skip . 2.2)
    \column {
      \line {
        \justify {
          das Gebet von Petar Danov, der ein Fremder in dieser Welt war; fremd für alle auf der Erde und allem Irdischen gegenüber. Er verließ sich nur auf Ihn und wandte sich in seinen Gebeten allein an Ihn. Und Gott, der Herr, nahm sein Gebet an und wandelte es in eine Wirklichkeit  für das Leben der Erde um.
        }
      }
    }
  }
} % bookpart


