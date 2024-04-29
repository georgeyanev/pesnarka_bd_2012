\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  #(define blineskip250 3.2)
  \include "include/bookpart-paper.ily"
  \label #'ref250
  \tocItem \markup "Alphabetische Tabelle"

  \markup \fontsize  #+4.0 { \fill-line \bold {"ALPHABETISCHE TABELLE"} }

  \markuplist \fontsize  #+2 {
    \override #'(padding . 2) % horizontal distance
    \override #'(baseline-skip . 4) % vertical distance
    \override #'(line-width . 27)
    \table #'(0 0 0 -1) {
      \line {"                  "} \line {"                      "} \line {"                            "} \line {"                                                              "}
      \override #`(baseline-skip . ,blineskip250) \column {\bold "Bulgarisch" \bold "[kyrillisch]"} \bold  Phonetisch \bold Transkription \bold "Deutsche Aussprache"
      а [a] a \override #`(baseline-skip . ,blineskip250) 
          \wordwrap {wie deutsches \italic a in \concat{„Kl \bold{a} rheit“}}
      б [b] b \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic b in \concat{„\bold{B} lume“}}
      в [v] v \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic w in \concat{„\bold{w} o“}}
      г [ɡ] g \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic g in \concat{„\bold{g} ut“}}
      д [d] d \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic d in \concat{„\bold{d} u“}}
      е [ɛ] e \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic e in \concat{„F\bold{e} st“}}
      ж [ʒ] ž \override #`(baseline-skip . ,blineskip250)
          \wordwrap {stimmhaftes j bzw. \italic sch wie in \concat{„\bold{J} ournal“} oder \concat{„Gara \bold{g} e“}}
      з [z] z \override #`(baseline-skip . ,blineskip250)
          \wordwrap {stimmhaftes \italic s wie in \concat{„\bold{S} onne“}}
      и [i] i \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches helles \italic i in \concat{„s \bold{i} e“}}
      й [j] j \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic j in \concat{„\bold{j} ung“} oder ein kurzes, unbetontes \italic i}
      к [k] k \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic k in \concat{„\bold{k} urz“}}
      л \override #`(baseline-skip . ,blineskip250) \column {[ɫ] [l] "[ʎ]]"} l \override #`(baseline-skip . ,blineskip250)
          \wordwrap {vor a, o, u, ă und Konsonanten dumpfer als im Deutschen, etwa wie im englischen
          \concat{„we \bold{ll} “ " [" \italic {sila} "];"} vor e und i wie deutsches \italic l in
          \concat{„\bold{l} ichtvoll“ " [" \italic {mili} "];" } vor ju und ja ungefähr wie 
          \italic {gli} im italienischen \concat{„Ta\bold{gli} atelle“ " [" \italic {ljubov} "]"} }
      м [m] m \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic m in \concat{„\bold{m} ir“}}
      н \override #`(baseline-skip . ,blineskip250) \column {[n] [ɲ]} n \override #`(baseline-skip . ,blineskip250)
          \wordwrap {normalerweise wie deutsches \italic n in
          \concat{„\bold{n} un“ " [" \italic {napred} "];"} vor ju und ja ungefähr wie \italic ñ in
          \concat{„Espa\bold{ñ} a“} \concat{" [" \italic {njama} "]" }}
      о [ɔ] o \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic o in \concat{„T\bold{o} r“}}
      п [p] p \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic p in \concat{„\bold{P} aradies“}}
      р [r] r \override #`(baseline-skip . ,blineskip250)
          \wordwrap {gerolltes \concat{Zungen - \italic r}}
      с [s] s \override #`(baseline-skip . ,blineskip250)
          \wordwrap {stimmloses \italic s wie das deutsche \italic ß oder \italic ss in 
          \concat{„da\bold{ss} “}}
      т [t] t \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic t in \concat{„\bold{T} isch“}}
      у [u] u \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic u in \concat{„\bold{d} u“}}
      ф [f] f \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic f in \concat{„\bold{f} ür“}}
      х [x] h \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic ch in \concat{„la \bold{ch} en“}}
      ц [t͡s] c \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic z in \concat{„\bold{Z} unge“}}
      ч [t͡ʃ] č \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic tsch in \concat{„\bold{tsch} üss“}}
      ш [ʃ] š \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic sch in \concat{„\bold{sch} ön“}}
      щ [ʃt] št \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic scht in \concat{„na \bold{scht}“}}
      ъ [ɤ] ă \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic { unbetontes, stark dumpfes e} in  
          \concat{„hab \bold{e} n“;} evtl. auch \italic {dumpfes a} oder \italic er wie in \concat{„ab \bold{er}“}}
      ь [ȷ] j \override #`(baseline-skip . ,blineskip250)
          \wordwrap {sehr selten, wird ausgesprochen wie das kurze, unbetonte \italic {i} (s.o.); 
          kommt nur zusammen mit o in der Wortmitte vor}
      ю [ju] ju \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic ju in  
          \concat{„\bold{Ju} lian“;} kann auch in Richtung \italic ü gehen 
          \concat { "(" \italic \concat { Fir-F \bold ü r-Fen} ")" } }
      я [ja] ja \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic ja in \concat{„\bold{Ja} de“}}
    } 
  }
} % bookpart

