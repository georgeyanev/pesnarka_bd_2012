\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Singt an Christus" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Mögen wir neue Hymnen an Jesus"
          "in dieser Stunde singen;"
          "Er ist der zeitlose Sohn Gottes"
          "im Himmel und in uns."
          "Unser Meister, unser Führer,"
          "unser wahres Leben,"
          "sein großer Name sei gepriesen"
          "von Geschlecht zu Geschlecht."
        }
      }

      \vspace #1
      \line {
        \bold "3."
        \column {
          "Und als er gepriesen worden war,"
          "gab er uns ein neues Testament,"
          "das größte von allen:"
          "die Liebe – sein Gesetz."
          "Er verkündete die frohe Botschaft"
          "und sagte: „Ihr seid mein,"
          "ich bin euer,"
          "alle Menschen sind Brüder,"
          "Gottvater ist unser Vater."
        }
      }

    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold "2."
        \column {
          "Singt an Christus neue Hymnen"
          "in dieser festlichen Stunde,"
          "Er ist der Sohn Gottes, der gesandt"
          "wurde auf die Erde um unseretwillen."
          "Er gab sein Leben,"
          "um uns von der Sünde zu erlösen,"
          "wie ein Sterbender stieg er in das Grab"
          "hinab, um die Toten auferstehen zu lassen."
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Liebet einander,"
          "so dienen wir unserem Vater,"
          "und der Vater liebt euch alle"
          "wie Seine eigenen Kinder."
          "Ich bin das lebendige Brot"
          "vom Himmel,"
          "ich bin der wahre Weinstock;"
          "bewahrt mein Wort und"
          "lebt in Liebe!"
        }
      }
    }
    \hspace #0.1
  }
}

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \vspace #1
      \line {
        \bold "5."
        \column {
          "Nur in ihr ist das Leben;"
          "in ihr ist auch die Freude,"
          "sie erschafft alles Gute  –"
          "einzig sie  – die Liebe.“"
          "So lehrte er uns damals,"
          "so flüstert er uns jetzt auch zu,"
          "und es erwachen in meiner Seele"
          "diese seine Worte zum Leben."
        }
      }
    }\hspace #0.1
  }
}

