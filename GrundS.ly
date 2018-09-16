\version "2.18.2"
%#(set! paper-alist (cons '("mein Format" . (cons (* 14 cm) (* 21 cm))) paper-alist))

\paper{
  %#(set-paper-size "mein Format")
   #(set-paper-size "a5")
   print-all-headers = ##t %za da se printira header blocka, kogato e 
   % vatre v score blocka. Inache ostava bez zaglavie
   %annotate-spacing = ##t
  
  oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup \fill-line {
    "" 
    \concat { 
      "" 
      \override #'(font-name . "Arial") \fontsize #-1 
        \fromproperty #'page:page-number-string "" 
     } 
    ""
  }
  evenFooterMarkup = \markup \fill-line {
    "" 
    \concat { "" \override #'(font-name . "Arial") \fontsize #-1 
        \fromproperty #'page:page-number-string "" 
    } ""
  }
  
  print-page-number = ##t
  print-first-page-number = ##t
  first-page-number = 1
  
 %system-system-spacing = #'((padding . 0) (basic-distance . 0.1))
  ragged-right = ##f %za da e petolinieto dalgo kolkoto stranicata, nezavisimo ot broia na notite v reda
 ragged-bottom = ##t %za da ne se raztiaga formatiraneto pri poveche stranici, obache pak prekasva 
 % s goliam botton-margin stranicata
  
 %system-count = #8
 % page-count = #1

   left-margin = 15\mm
   right-margin = 15\mm
   bottom-margin = 15\mm
   top-margin = 15\mm
  
  page-breaking = #ly:minimal-breaking

}


\layout {
indent = #0


}



\markup \vspace #2

%  â

inv = \markup { \with-color #white - } 
mfpp = \markup { \fontsize #+0  "("\bold \italic "p pp"")"}
mpp = \markup { \fontsize #-4 { \bold \italic "p" "("\bold \italic "pp"")"} }
rit = \markup { \bold "rit." } 
dcapo = \markup {  \bold "D.C. al Fine"  }
atempo = \markup { \bold "a tempo" } 
tmp = \markup { \bold "a tempo" }
rep = \markup { \bold "con ripetizione" }
fine = \markup  {  \bold "Fine"  }
sosten= \markup   { "sosten."  }
rall = \markup  {  \bold "rall."  }
ppp = \markup  {  \bold \italic "ppp"  }
pocoapocorall = \markup  {  \bold "poco a poco rall."  }

rightbraceB = \markup { 
   \column {
     \line { " " } 
     \line { " " } 
    
  \translate #'(0 . -0.8 )
  \right-brace #15   
    }
    
  \column { 
    \line { " " } 
    \line { " " } 
    \vcenter { 2 } 
 
  
  }
}


#(set-global-staff-size 15.0)

%{

%
\pageBreak %nova stranica


\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica


\pageBreak
%}


\include "Zora_na_novija_zivot.ly"

\include "Zora_na_novija_zivot_text.ly"

\pageBreak

\include "Zora_na_novia_zivot_text_de.ly"

\include "Izljasal e sejach.ly"

\include "Izljasal e sejach_text.ly"

\include "Izljasal e sejach_text_de.ly"



\include "bratstvo_edinstvo.ly"

\include "bratstvo_edinstvo_text_de.ly"

\include "Ste_se_razveselja.ly"

\include "Ste_se_razveselja_text_de.ly"

\include "Izgrjava_den_turzestven.ly"

\include "Izgrjava_den_turzestven_text.ly"

\include "Izgrjava_den_turzestven_text_de.ly"

\include "K-m-Rila.ly"

\include "K-m-Rila_text.ly"

\include "K-m-Rila_text_de.ly"

\include "himn_na_velikata_duscha.ly"

\include "Stranik_sam_na_tozi_svjat.ly"

\include "Stranik_sam_na_tozi_svjat_de.ly"

\include"Ti schte polutschisch v jivota.ly"