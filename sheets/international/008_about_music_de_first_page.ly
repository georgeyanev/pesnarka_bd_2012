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


  \markup \abs-fontsize #15 { \fill-line {"Gedanken über die Musik"} }

  \markup  \abs-fontsize #11  {
    \vspace #1.5 \override #'(baseline-skip . 3.8)
    \justify {

      Wir verstehen die Musik in einem etwas anderen Sinne. Ich spreche über die bewusste Musik und nicht über die statische. Wir haben den Bereich der statischen Musik schon verlassen und treten in die organische Musik ein, die sich ständig verändert.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      In die neue organische Musik werdet ihr an erster Stelle die Harmonie in eure Gedanken, Gefühle und Taten bringen. Dann werdet ihr als Sänger Widerhall finden – die unsichtbare Welt wird euch helfen.

    }
  }


  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Ihr könnt nicht musikalisch sein, wenn euer Gedanke unmusikalisch ist, wenn eure Gefühle nicht musikalisch sind und wenn ihr nicht alles musikalisch betrachtet, was in der Welt geschieht. Wir leben und bewegen uns in Gott, und in dieser Bewegung liegt Harmonie.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Das Lied soll nicht nur eine Stimme haben, sondern in seine Töne sollen Inhalt und Bedeutung gelegt werden. Damit der Mensch singen oder spielen kann, soll er eine Idee, einen tiefen inneren Impuls haben. Ohne Idee gibt es kein Lied.

    }
  }


  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Die Musik bringt der Seele des Menschen Weite, dem Geiste Kraft und Macht, dem Herzen Milde und Wärme, dem Verstand Licht und Freiheit.


    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Jedes Lied soll Licht, Wärme und Kraft bringen. Die Natur schätzt die Töne, die Licht, Wärme und Kraft haben. Sie sind ein göttlicher Segen für die Welt.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Die Musik und das Singen haben nur dann einen Sinn, wenn sie der Veredelung des Menschen dienen. Durch die Musik könnt ihr euren Charakter bilden.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Euer Glück in der Welt hängt nur von der Musik ab. Weil das Leben eine ganzheitliche Kunst ist, ist es die größte Musik, die in der Welt existiert. Das Wort Gottes ist die Musik des Lebens.
    }
  }

  \markup \abs-fontsize #11 {
    \vspace #1.0  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Ohne Musik, Weisheit und Wahrheit kann das Wort nicht gesprochen werden.

    }
  }



  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Der Mensch kann nicht musikalisch sprechen, ohne die Wahrheit zu sprechen. Liebe – das ist die erhabenste Musik. Denkt ihr nicht, so könnt ihr nicht gut spielen und singen. Undenkbar ist es, genial ohne Musik zu werden. Ein Genie ist ein Mensch, der in den musikalischen Strom der Natur hineingeraten ist.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Diejenige Musik, die gleichermaßen das Herz, den Verstand und den Körper einstimmt, ist die Musik der Natur. Unter dem Begriff Natur verstehe ich die Welt der Harmonie – an dem Ort, aus dem die ganze Musik hervorgegangen ist.

    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9 \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Die Musik soll im Menschen ein fröhliches Gefühl aufsteigenden Grades, ein Gefühl, schöpferisch zu sein, hervorrufen.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Die Natur arbeitet in jeder Hinsicht musikalisch. Es gibt keine großartigere Kunst, keine größere Musik als die Kunst der Musik und die Musik der Natur. Wer die Gesetze der Natur beachtet, kann Sänger werden.

    }
  }

  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5

      Worin unterscheidet sich die okkulte Musik von der gewöhnlichen Musik? In ihrer absoluten Milde, Klarheit, Bildhaftigkeit und in den Naturbildern.


    }
  }
  \markup \abs-fontsize #11 {
    \vspace #0.9  \override #'(baseline-skip . 3.8)
    \justify {
      \hspace #1.5
      Ihr alle sollt beim Singen danach streben, dass es in eurem Singen Klarheit und Sanftheit gibt. Wenn ihr leise und sanft singt, dann werdet ihr um euch herum Wesen von einer höheren Kultur anziehen. Strebt danach, leise zu singen, denn das leise Singen veredelt. Das laute Singen geschieht willentlich.


    }
  }

} % bookpart


