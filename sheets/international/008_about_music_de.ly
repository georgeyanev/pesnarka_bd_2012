\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref008
  \tocItem \markup "Gedanken über die Musik "
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

  \markup \abs-fontsize #14 { \fill-line \bold {"Gedanken über die Musik"} }

  \markup  \abs-fontsize #10  {
    \vspace #1.5 \override #'(baseline-skip . 3.2)
    \justify {

      Wir verstehen die Musik in einem etwas anderen Sinne. Ich spreche über die bewusste Musik und nicht über die statische. Wir haben den Bereich der statischen Musik schon verlassen und treten in die organische Musik ein, die sich ständig verändert.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      In die neue organische Musik werdet ihr an erster Stelle die Harmonie in eure Gedanken, Gefühle und Taten bringen. Dann werdet ihr als Sänger Widerhall finden – die unsichtbare Welt wird euch helfen.

    }
  }


  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Ihr könnt nicht musikalisch sein, wenn euer Gedanke unmusikalisch ist, wenn eure Gefühle nicht musikalisch sind und wenn ihr nicht alles musikalisch betrachtet, was in der Welt geschieht. Wir leben und bewegen uns in Gott, und in dieser Bewegung liegt Harmonie.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Das Lied soll nicht nur eine Stimme haben, sondern in seine Töne sollen Inhalt und Bedeutung gelegt werden. Damit der Mensch singen oder spielen kann, soll er eine Idee, einen tiefen inneren Impuls haben. Ohne Idee gibt es kein Lied.

    }
  }


  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Die Musik bringt der Seele des Menschen Weite, dem Geiste Kraft und Macht, dem Herzen Milde und Wärme, dem Verstand Licht und Freiheit.


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Jedes Lied soll Licht, Wärme und Kraft bringen. Die Natur schätzt die Töne, die Licht, Wärme und Kraft haben. Sie sind ein göttlicher Segen für die Welt.
    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Die Musik und das Singen haben nur dann einen Sinn, wenn sie der Veredelung des Menschen dienen. Durch die Musik könnt ihr euren Charakter bilden.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Euer Glück in der Welt hängt nur von der Musik ab. Weil das Leben eine ganzheitliche Kunst ist, ist es die größte Musik, die in der Welt existiert. Das Wort Gottes ist die Musik des Lebens.
    }
  }

  \markup \abs-fontsize #10 {
    \vspace #1.0  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Ohne Musik, Weisheit und Wahrheit kann das Wort nicht gesprochen werden.

    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Der Mensch kann nicht musikalisch sprechen, ohne die Wahrheit zu sprechen. Liebe – das ist die erhabenste Musik. Denkt ihr nicht, so könnt ihr nicht gut spielen und singen. Undenkbar ist es, genial ohne Musik zu werden. Ein Genie ist ein Mensch, der in den musikalischen Strom der Natur hineingeraten ist.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Diejenige Musik, die gleichermaßen das Herz, den Verstand und den Körper einstimmt, ist die Musik der Natur. Unter dem Begriff Natur verstehe ich die Welt der Harmonie – an dem Ort, aus dem die ganze Musik hervorgegangen ist.

    }
  }
  \markup \abs-fontsize #10 {
    \vspace #0.9 \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die Musik soll im Menschen ein fröhliches Gefühl aufsteigenden Grades, ein Gefühl, schöpferisch zu sein, hervorrufen.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Die Natur arbeitet in jeder Hinsicht musikalisch. Es gibt keine großartigere Kunst, keine größere Musik als die Kunst der Musik und die Musik der Natur. Wer die Gesetze der Natur beachtet, kann Sänger werden.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Worin unterscheidet sich die okkulte Musik von der gewöhnlichen Musik? In ihrer absoluten Milde, Klarheit, Bildhaftigkeit und in den Naturbildern.


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      In der okkulten Musik möchten wir nicht wie die Menschen, sondern wie die Engel singen. Durch die Musik können wir die Engel anziehen – sie werden sich für uns interessieren. Ihr werdet ihnen sagen: „Wir studieren eure Musik und möchten so singen, wie ihr singt.“ Sie werden sagen: „Sehr gut, wir werden euch unsere Gegenwart und unsere Unterstützung schenken.“


    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Sänger und Musiker haben ein gut entwickeltes Ohr, damit sie die Töne richtig vernehmen und wiedergeben, so, wie sie aus der erhabenen Welt kommen.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Als Orpheus spielte und sang, wurde die Natur lebendig: Die Pflanzen, die Vögel, die Tiere, die Flüsse – alles begann sich zu bewegen und zu spielen. Derart soll der wahre Musiker sein.


    }
  }


  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Wenn ihr in die Natur hinausgeht, hätte ich gerne, dass ihr in sie hineinhört. Wenn ein Musiker ein entwickeltes Ohr hat, wird er selbst das hören, was er niemals in seinem Leben gehört hat.


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Ihr habt nie den fließenden Quellen gelauscht – welch angenehme Musik ertönt unter den kleinen Steinchen. Geht in den Wald, dort werdet ihr solche Symphonien und Arien hören!


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Die Musik ist eine von den Methoden der Natur, durch die sie in euch lebendig wird: Die Steine werden lebendig, die Bäume, die Quellen, alles rund herum wird lebendig.


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Ich möchte, dass ihr die okkulte Musik kennenlernt, damit ihr Kräfte und Inspirationen aus der lebendigen Natur schöpft.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die okkulte Musik ist eine Musik der Gestalten und der Bilder. Wenn wir singen, soll in uns immer ein Bild entstehen; es sollen keine gewöhnlichen oder toten, sondern lebendige Bilder entstehen.


    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
      Ihr alle sollt beim Singen danach streben, dass es in eurem Singen Klarheit und Sanftheit gibt. Wenn ihr leise und sanft singt, dann werdet ihr um euch herum Wesen von einer höheren Kultur anziehen. Strebt danach, leise zu singen, denn das leise Singen veredelt. Das laute Singen geschieht willentlich.


    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Ideelle Lieder gibt es auf der Erde nicht. Ideelle Lieder gibt es nur bei den Engeln.


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Die Natur hat in jedem Menschen eine spezielle Musik angelegt, mit der er sich bei Schwierigkeiten helfen kann.


    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Ich möchte, dass ihr für euch singt – ich meine, nicht persönlich für euch selbst, sondern  für  das  Göttliche in  euch.  Wenn  ihr  ein  Lied  für  euch  singt,  werdet ihr die  gute  Disposition  des  Geistes  spüren.

    }
  }

  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5
  Die Liebe, das ist die höchste Musik. Wenn ihr nicht denken könnt, könnt ihr nicht singen. Denkt recht, empfangt nur reine Gedanken, um gut singen und spielen zu können.

    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Alle okkulten Schulen aus der Vergangenheit sowie diese von heute bedienen sich der Methode der Musik zur Erziehung und Selbsterziehung. Wenn der Mensch eine der musikalischen Methoden zur Transformierung des Bewusstseins anwendet, wird er sich in einer halben oder einer ganzen Stunde in einer anderen Tonleiter des Lebens, fern von seinen Schwierigkeiten befinden. Heutzutage, unter den Bedingungen, unter denen wir leben, müssen wir uns andauernd einstimmen, und die Musik ist eine der göttlichen Methoden zur Einstimmung. Wenn jemand die Übung „Gott ist Liebe“ ausführt, so wie sie gesungen werden soll, wird er sich wandeln; welche Leiden er auch immer hat, sie werden verschwinden; er wird fröhlich und munter sein und sich verjüngen.



    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
      \hspace #1.5

      Jeder soll sich selbst sagen: „Ich soll Musiker werden, ich soll lieben, ich soll recht denken.“ In der Heiligen Schrift wurde gesagt: „Singt und lobpreist den Herrn in eurer Seele.“ Ich aber sage: Singt und lobpreist den Herrn in eurem Geist, in eurem 

    }
  }



  \markup \abs-fontsize #10 {
    \vspace #0.9  \override #'(baseline-skip . 3.2)
    \justify {
     

       Herzen und in eurem Verstand. Alles in euch, von den Füßen bis zu den Haaren auf eurem Kopf, soll singen.

    }
  }



} % bookpart


