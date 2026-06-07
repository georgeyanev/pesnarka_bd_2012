\version "2.26.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref008
  \tocItem \markup "Gedanken über die Musik "
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
    top-markup-spacing.basic-distance = 8\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      In der okkulten Musik möchten wir nicht wie die Menschen, sondern wie die Engel singen. Durch die Musik können wir die Engel anziehen – sie werden sich für uns interessieren. Ihr werdet ihnen sagen: „Wir studieren eure Musik und möchten so singen, wie ihr singt.“ Sie werden sagen: „Sehr gut, wir werden euch unsere Gegenwart und unsere Unterstützung schenken.“


    }
  }



  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Sänger und Musiker haben ein gut entwickeltes Ohr, damit sie die Töne richtig vernehmen und wiedergeben, so, wie sie aus der erhabenen Welt kommen.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Als Orpheus spielte und sang, wurde die Natur lebendig: Die Pflanzen, die Vögel, die Tiere, die Flüsse – alles begann sich zu bewegen und zu spielen. Derart soll der wahre Musiker sein.

    }
  }


  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Wenn ihr in die Natur hinausgeht, hätte ich gerne, dass ihr in sie hineinhört. Wenn ein Musiker ein entwickeltes Ohr hat, wird er selbst das hören, was er niemals in seinem Leben gehört hat.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Ihr habt nie den fließenden Quellen gelauscht – welch angenehme Musik ertönt unter den kleinen Steinchen. Geht in den Wald, dort werdet ihr solche Symphonien und Arien hören!


    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Die Musik ist eine von den Methoden der Natur, durch die sie in euch lebendig wird: Die Steine werden lebendig, die Bäume, die Quellen, alles rund herum wird lebendig.


    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Ich möchte, dass ihr die okkulte Musik kennenlernt, damit ihr Kräfte und Inspirationen aus der lebendigen Natur schöpft.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Die okkulte Musik ist eine Musik der Gestalten und der Bilder. Wenn wir singen, soll in uns immer ein Bild entstehen; es sollen keine gewöhnlichen oder toten, sondern lebendige Bilder entstehen.


    }
  }







  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Ideelle Lieder gibt es auf der Erde nicht. Ideelle Lieder gibt es nur bei den Engeln.


    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Die Natur hat in jedem Menschen eine spezielle Musik angelegt, mit der er sich bei Schwierigkeiten helfen kann.


    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Ich möchte, dass ihr für euch singt – ich meine, nicht persönlich für euch selbst, sondern  für  das  Göttliche in  euch.  Wenn  ihr  ein  Lied  für  euch  singt,  werdet ihr die  gute  Disposition  des  Geistes  spüren.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Die Liebe, das ist die höchste Musik. Wenn ihr nicht denken könnt, könnt ihr nicht singen. Denkt recht, empfangt nur reine Gedanken, um gut singen und spielen zu können.

    }
  }



  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Alle okkulten Schulen aus der Vergangenheit sowie diese von heute bedienen sich der Methode der Musik zur Erziehung und Selbsterziehung. Wenn der Mensch eine der musikalischen Methoden zur Transformierung des Bewusstseins anwendet, wird er sich in einer halben oder einer ganzen Stunde in einer anderen Tonleiter des Lebens, fern von seinen Schwierigkeiten befinden. Heutzutage, unter den Bedingungen, unter denen wir leben, müssen wir uns andauernd einstimmen, und die Musik ist eine der göttlichen Methoden zur Einstimmung. Wenn jemand die Übung „Gott ist Liebe“ ausführt, so wie sie gesungen werden soll, wird er sich wandeln; welche Leiden er auch immer hat, sie werden verschwinden; er wird fröhlich und munter sein und sich verjüngen.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      In der Musik gibt es inkommensurable Töne und ein Überfließen der Tönen in den Takten. Aber all jene Prozesse, die bewusst sind, sind inkommensurabel, sie unterliegen

    }
  }


  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
    
    unserer Macht, wir gehen mit ihnen um. Also  alle unsere Ideen müssen inkommensurabel sein!

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Wenn wir also zu den inkommensurablen und den kommensurablen Dingen kommen, müssen wir wissen, dass sie zwei Ideen im Leben sind, die sich grundlegend voneinander unterscheiden. Die Weisheit, die Wahrheit, alle Tugenden sind inkommensurable Größen.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Die gute Musik sollte auch inkommensurabel sein. Ihr könnt ohne Takte noch nicht singen. Wisst ihr, was es bedeutet, ohne Takte zu singen? Nehmen wir an, ihr singt einen Ton – einen Viertelton oder einen Halbton oder einen Ganzton. Glaubt ihr, dass er aufhört zu tönen, nachdem ihr diesen Ton entsprechend seiner Dauer gesungen habt? Nein, es gibt gewisse Töne in der Natur, die ständig tönen. Es gibt Planeten, die speziell auf den Ton \italic"C" gestimmt wurden. Es gibt Sonnen, die mit dem Ton \italic"G" tönen. Diese Musik wird in der Natur ständig gespielt. Manchmal stimmen wir einen Ton an und unterbrechen ihn dann. Hat er dann aufgehört zu tönen? Nein, der Planet, zu dem dieser Ton gehört, zum Beispiel der Ton \italic"C," bewegt sich ständig auf und ab in diesen Kreisen vom oberen \italic"C" zum unteren \italic"C." In diesem Ton gibt es aber eine große Vielfalt. Was sind die besten Lieder in der Musik? Diejenigen Sänger, die Musik studieren, beginnen am Anfang, die Töne mechanisch zu reproduzieren; gelangen sie jedoch zu der okkulten Musik, müssen sie jeden Ton als lebendig betrachten und wissen, dass jeder Ton, nachdem sie aufgehört haben zu singen, weiter tönt. Nachdem ihr einem Musiker, einem hervorragenden Geiger, zugehört habt, werdet ihr, wenn ihr nach Hause zurückkehrt, weiterhin seinem Spiel zuhören. Auf der Bühne hat das Spiel aufgehört, aber es ist in dir am Abend, am Morgen – eine ganze Woche lang – gegenwärtig. Das heißt, diese Stimmen werden ununterbrochen gepredigt, bis sie sich irgendwo verlieren. Denn in der okkulten Musik müssen die Töne weitertönen. Und jeder von euch muss innerlich singen. Wenn ihr nicht lernt, innerlich, in euren Seelen zu singen, könnt ihr nicht singen lernen. Folglich sind einige von euch bessere Musiker; sie haben in der Vergangenheit mehr gelernt, so dass es leichter ist, sich zu manifestieren; andere hingegen haben nicht gelernt, sie  müssen es jetzt lernen. Musik wird für einen inneren Impuls benötigt. Sie ist ein Ruhepol. Nur durch Musik könnt ihr eurer Seele Ruhe verschaffen.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Wie können wir nun diese Melodie [Imaše čelovek] übersetzen? Sie gehört zu den inkommensurablen Größen. Würde man es anders singen, in Takten, käme etwas anderes dabei heraus. Nicht dass es in den okkulten Liedern keine Takte gäbe, aber wann immer ihr einem okkulten Lied Ausdruck verleihen möchtet, müsst ihr notwendigerweise in das Lied die inkommensurablen Takte bringen, das heißt, solche Takte, die in eurem Verstand nicht genau definiert sind. In diesem Lied werde ich nicht auf die Takte schauen, sondern auf die Bedeutung. Wenn die Takte in einem Lied die Oberhand gewinnen, verliert das Lied seinen Sinn. Der Takt muss innen sein. Er ist ein inkommensurabler Maßstab.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Jeder soll sich selbst sagen: „Ich soll Musiker werden, ich soll lieben, ich soll recht denken.“ In der Heiligen Schrift wurde gesagt: „Singt und lobpreist den Herrn in eurer Seele.“ Ich aber sage: Singt und lobpreist den Herrn in eurem Geist, in eurem Herzen und in eurem Verstand. Alles in euch, von den Füßen bis zu den Haaren auf eurem Kopf, soll singen.

    }
  }



} % bookpart


