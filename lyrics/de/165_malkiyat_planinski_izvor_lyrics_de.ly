
\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die kleine Bergquelle" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
       "Die reine Quelle sprudelt und singt"

"mit einem unschuldigen, munteren, hellen Blick."

"Im Schoss des Gebirges in der Morgenröte geboren,"

"bebende Freude, Munterkeit erklingt. "

"Klare Rinnsale singen, ihre Tropfen funkeln. "

"Klare Rinnsale singen, ihre Tropfen funkeln.  "

"Sie verbreitet Frische und Schönheit"

 "Sie flüstert von der Liebe. "

"Im Herzen des Menschen hallt das Lied wider."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
         "Zarte Blumen blühen um sie herum,"

"sie erzählen leise von wunderbaren Märchen."

 "Spielerische Nymphen stricken hier Tänze,"

"auf einem taubedeckten Teppich schwingen Schritte. "

"Nachts spiegeln sich die Sterne in der Quelle."

"Und sie sprudelt und gibt unaufhörlich."

"So gibt die Liebe. "

"In den Herzen der Menschen geht die Freude auf. "

"In den Herzen der Menschen geht die Freude auf."
        }
      }
    }\hspace #0.1
  }
}
