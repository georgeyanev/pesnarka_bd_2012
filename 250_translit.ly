\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  #(define blineskip250 2.3)
  \include "include/bookpart-paper.ily"
  \label #'ref250
  \tocItem \markup "Alphabetische Tabelle"

  \markup \fontsize  #+4.0 { \fill-line \bold {"ALPHABETISCHE TABELLE"} }

  \markuplist \fontsize  #+2 {
    \override #'(padding . 2) % horizontal distance
    \override #'(baseline-skip . 4) % vertical distance
    \override #'(line-width . 32)
    \table #'(0 0 0 -1) {
      \line {"                  "} \line {"                      "} \line {"                        "} \line {"                                                              "}
      \override #`(baseline-skip . ,blineskip250) \column {\bold "Bulgarisch" \bold "[kyrillisch]"} \bold  Phonetisch \bold Transkription \bold "            Deutsche Aussprache"
      а [a] a \override #`(baseline-skip . ,blineskip250) 
          \wordwrap {wie deutsches \italic a in \concat{„Kl \bold{a} rheit“}}
      б [b] b \override #`(baseline-skip . ,blineskip250)
          \wordwrap {wie deutsches \italic b in \concat{„\bold{B} lume“}}
      df df df \override #`(baseline-skip . ,blineskip250) 
          \wordwrap {trala la shsd fjlhsd jh jd jsd hjkldh lkjdfhg j ljkhkjd skldsj kldg fksld lksjad ,kj dljkd alksdh ljksdhf lsdfl jhsldfjk lskdjfhg lsdfjh ldsfjh lsdf hldsfh ldsfh ldsfh ldsh gk,jdsfh lgdsfhglshdflghdfs ghdfkwj}    
      df df df df  
    } 
  }
} % bookpart

