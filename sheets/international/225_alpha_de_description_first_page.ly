\version "2.26.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
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


  \label #'ref220
  \tocItem \markup "Anmerkungen"
  \markup \abs-fontsize #14 { \fill-line \bold {"Anmerkungen"} }

  \label #'ref_desc_1
  \markup \abs-fontsize #11
  {
    \override #'(baseline-skip . 3.4)
    \column {
      \vspace #2

      \line {
        \justify {
          \concat {
            \with-link #'ref109 \bold"A bre, sinko – А бре, синко."
          } 28. November 1934, Sofia, Allgemeine Okkultklasse, XIV. Jahrgang, 10. Vortrag „Prinzipien und Bedingungen – Berg und Tal“. Das Lied wurde einem bulgarisches Volkslied entlehnt, dessen ursprüngliche Reinheit wiederhergestellt wurde.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref135 \bold"Ain fasi – Аин фаси."}
          7. Oktober 1931, Sofia, Allgemeine Okkultklasse, XI. Jahrgang, 2. Vortrag „Lasst den Beutel“. Dieser Text wurde in einer uralten, heiligen Sprache überliefert. Die Grundidee dieses Liedes lautet: Du, der Du der Grund von allem bist, Du, der Du mit Deiner Liebe alles durchdringst und stützt, sei gesegnet! Möge ich in Deinem Licht und Deiner Liebe leben! Wie sehr möchte ich auf Deinen Spuren wandeln! Mein ganzes Leben diene deinem Ruhm! „Wer die Elemente der Worte von \italic"Ain fasi" versteht, kann zum Sinn des Lebens gelangen und davon profitieren.“
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref064 \bold "Angel vopijaše – Ангел вопияше."}
          Bulgarischer Kirchengesang, der zu Beginn des 20. Jahrhunderts sehr bekannt war. Text und Musik Konstantin Danovski, der Vater von Petar Danov. Es gibt unterschiedliche Varianten des Liedes. Das Lied wurde von Barnaby Brown nach dem Vortrag von Vesela Nestorova notiert.

        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref075 \bold "Aum – Аум."} 2. Dezember 1925, Sofia, Allgemeine Okkultklasse, V. Jahrgang, 3. Vortrag „Aumen“. Durch diese Übung soll der Mensch das Heilige in sich aufrechterhalten. Es ist aus einem alten, heiligen Lied entnommen worden. Petar Danov sagt: „Hätte ich euch dieses Lied in seiner ursprünglichen Moll-Tonart vorgetragen, könntet ihr seiner Schwingung nicht standhalten; euer Puls wird sich verändern.“ Petar Danov gab das Lied in Dur. Er sagte: „Es gibt heilige Wörter. Solch ein Wort ist auch das Wort \italic"Aum," das oft ausgesprochen werden soll, auch dann, wenn man seine Bedeutung nicht versteht. Seid ihr traurig, seid ihr krank, befindet ihr euch geistig nicht in einer guten Verfassung, sprecht ein paar Mal das Wort \italic"Aum" – es ist das Wort des Geistes. Singt ihr das Wort in seiner Sprache, wird er euch verstehen und helfen, denn er versteht und kennt eure Bedürfnisse.“ Das Lied „Aum“ wird in der Paneurhythmie viermal und als eigenständiges Lied dreimal aufgeführt.
        }
      }
      \vspace #0.5

      \line {
        \justify {
          \concat {\with-link #'ref171_2 \bold "Az moga da dišam – Аз мога да дишам."}Musik und Text von Petar Danov, 4. Februar 1938, Sofia, Allgemeine Okkultklasse, XVII. Jahrgang, 19. Vortrag „Das Gesetz der Harmo- nie im Körper“. Die Arbeit an dieser Übung begann am 29. Dezember 1937, Sofia, Allge- meine Okkultklasse, XVII. Jahrgang 13. Vortrag „Vor den Freuden und nach dem Leid“.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref047 \bold "Az săm bjaloto kokiče – Аз съм бялото кокиче."} Musik Hristo Dărzev, Text Penčo Slavejkov. In manchen populären Versionen wird statt „[...] böse Stiefmutter hat mich geweckt“ „[...] die Sonne hat mich geweckt“ gesungen. Der Text der dritten Strophe wurde später von einem Schüler hinzugefügt.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref109 \bold"Az smeja da kaža – Аз смея да кажа."}
          2. Oktober 1935, Sofia, Allgemeine Okkultklasse, XV. Jahrgang, 2. Vortrag „Die neue Lehre“. „Ich wage zu sagen, dass die Sonne licht ist“ – sie ist licht, wo Vernünftigkeit vorhanden ist. Mit dem Wort \italic "Licht" ist eine vernünftige Welt gemeint, in der alles möglich ist. Alle vernunftbegabten Wesen sind bereit, dir zu helfen, sobald du dich ihnen vorstellst.“
        }
      }

      \vspace #0.5
      \line {
        \justify {
          \concat {\with-link #'ref150 \bold "Bălgarska idilija – Българска идилия."} Notiert von einer Tonbandaufnahme von Petăr Kamburov, redigiert von Georgi Stratev, Ioana Strateva und Stanka Zeleva. Petar  Danov gab dieses Lied Peter Kamburov im Februar 1920 in der Opălčenska Straße 66. Die
        }
      }

    }
  }






} % bookpart
