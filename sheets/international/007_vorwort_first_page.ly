\version "2.26.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##f
    print-first-page-number = ##f
    % page-number-type = #'roman-upper


    % put page numbers on the bottom
    oddHeaderMarkup = \markup {

      \fill-line {
        """"
        \if \should-print-page-number  \abs-fontsize #9 {
          \fromproperty #'page:page-number-string

        }
      }
    }
    evenHeaderMarkup = \markup {

      \fill-line {
        \if \should-print-page-number \abs-fontsize #9 {
          \fromproperty #'page:page-number-string
          ""
        }
      }
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 8\mm
    top-system-spacing.basic-distance = 10\mm

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }


  \tocItem \markup "Vorwort"
  \markup \abs-fontsize #15  { \fill-line {"Vorwort"} }



  \markup  \abs-fontsize #11  {
    \vspace #1.5 \override #'(baseline-skip . 3.8)
    \justify {

      Der gegenwärtige Sammelband enthält Lieder und Instrumentalwerke des spirituellen Lehrers Petar Danov – Beinsa Duno, dem Gründer der geistigen Bewegung „Weiße Bruderschaft“ in Bulgarien, sowie Lieder seiner Schüler in bulgarischer und deutscher Sprache.

    }
  }
  \markup  \abs-fontsize #11  {
    \vspace #0.9 \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Als Grundlage des vorliegenden Sammelbandes diente die Ausgabe von 2024, die unter der Redaktion von Peter Ganev und Maria Kireva in Sofia veröffentlicht wurde. Diese hatte sich zum Ziel gesetzt, eine adäquate Vorstellung der vokalen und instrumentalen Kompositionen von Petar Danov darzubieten, d. h. eine solche, die sowohl die professionellen musikalischen Ansprüche als auch die Prinzipien und Gesetze, die Danov als ihre theoretische Grundlage festlegte, berücksichtigt. Aus diesem editorischen Anspruch heraus sind manche neuen redaktionellen Lösungen auf die Fragen entstanden, die diese Musik mit sich bringt. Der vorliegende Sammelband baut darauf auf und enthält neben dem Notentext und dem literarischen Text in bulgarischer Sprache eine latinisierte Transliteration des Kyrillischen sowie eine Übersetzung der Liedtexte in deutscher Sprache. Hierbei war das Ziel, eine möglichst genaue und zugleich wohlklingende deutsche Übersetzung darzubieten, die das Verständnis des geistigen Gehalts der Musik und der ihr zugrunde liegenden Ideen unterstützt. Von einer metrischen, in deutscher Sprache zu singenden Übersetzung der Liedtexte wurde bewusst abgesehen, weil sie das Klangbild der Lieder verfälschen würde. Ferner wurden alle in den Liedern vorkommenden Wiederholungen von Phrasen oder einzelnen Wörtern in der Übersetzung beibehalten. Denn in Verbindung mit der melodischen Bewegung kommt jeder Wiederholung jeweils eine andere Bedeutung zu. Gleichzeitig fungiert sie als Affirmation und ist somit sinnhaft. Die Sprache der Lieder ist symbolisch. Es gibt ein Primat des Textes vor der Melodie, weil durch ihn die Ideen und geistigen Gehalten zum Ausdruck gebracht werden. Die okkulten Musik ist die Musik des absoluten Inhalts, der durch die in ihr manifest gewordenen Ideen getragen wird.

    }
  }

  \markup  \abs-fontsize #11  {
    \vspace #0.9 \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      \italic"Die okkulten Musikübungen," wie Petar Danov seine Musikkompositionen selbst nannte, erscheinen als Musikmethode in der 1922 von ihm eröffneten okkulten Schule der Weißen Bruderschaft. Diese Übungen begreift er als \italic"Urbilder" der \italic"okkulten Musik" – eine neue Musikgattung, die auf den Prinzipien und Gesetzen einer neuen, polydimensionalen Musiktheorie und Ästhetik basiert. Sie wurden in den zahlreichen Vorträgen, die er bis 1944 vor seinen Schülern hielt, sukzessive entwickelt. Die erste und grundlegendste Bestimmung dieser Übungen ist die individuelle und kollektive geistige Arbeit der Schüler auf ihrem Weg der geistigen Entwicklung und der Kultivierung geistiger Qualitäten und Tugenden. Die Methode ihres Erschaffens war äußerst kreativ und kollektiv. Während des Vortrags spielte Danov auf seiner Geige oder sang eine \italic"neue Musikübung," welche seine Schüler auswendig lernten und die anwesenden Musiker notierten. Ein anderes Mal gab er ein bestimmtes Wort oder einen Satz, zu dem die Schüler ihre eigene Melodie komponieren sollten. Einzelne Lieder, die entwickelt und vervollkommnet wurden, sind in mehreren Varianten erhalten; andere wurden bewusst unvollendet gelassen als Aufgaben

    }
  }

 
} % bookpart

% Più mosso
% „Weiße Bruderschaft“
