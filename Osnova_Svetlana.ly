\version "2.18.2"
%#(set! paper-alist (cons '("mein Format" . (cons (* 14 cm) (* 21 cm))) paper-alist))

\paper{
  %#(set-paper-size "mein Format")
   #(set-paper-size "a5")
   print-all-headers = ##t %za da se printira header blocka, kogato e 
   % vatre v score blocka. Inache ostava bez zaglavie
  
  oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup \fill-line {
    "" 
    \concat { 
      "" 
      \override #'(font-name . "Times New Roman") \fontsize #-1 
        \fromproperty #'page:page-number-string "" 
     } 
    ""
  }
  evenFooterMarkup = \markup \fill-line {
    "" 
    \concat { "" \override #'(font-name . "Times New Roman") \fontsize #-1 
        \fromproperty #'page:page-number-string "" 
    } ""
  }
  
  print-page-number = ##t
  print-first-page-number = ##t
  first-page-number = 1
  
  ragged-right = ##f %za da e petolinieto dalgo kolkoto stranicata, nezavisimo ot broia na notite v reda
  ragged-bottom = ##t %za da ne se raztiaga formatiraneto pri poveche stranici
  
    left-margin = 15\mm
   right-margin = 15\mm


}


\layout {
indent = #0

}



\markup \vspace #2

%  â


mfpp = \markup { \fontsize #+0  "("\bold \italic "p pp"")"}
mpp = \markup { \fontsize #-4 { \bold \italic "p" "("\bold \italic "pp"")"} }
rit = \markup { \bold "rit." } 
dcapo = \markup {  \bold "D.C. al Fine"  }
atempo = \markup { \bold "a tempo" } 
tmp = \markup { \bold "a tempo" }
rep = \markup { \bold "con ripetizione" }
fine = \markup  {  \bold "Fine"  }
sosten= \markup   { "sosten."  }
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

%
\include "Zora_na_novija_zivot.ly"

\include "Zora_na_novija_zivot_text.ly"

\include "Zora_na_novia_zivot_text_de.ly"

\include "Nebeto-se-otvaria.ly"
\include "Nebeto-se-otvaria_text.ly" 
%
\pageBreak %nova stranica

\include "Idvat-dni-na-Radost.ly"
\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica
\include "K-m-Rila.ly"
\include "K-m-Rila_text.ly"

\include "duhat_mi_shepne_tova.ly"

\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica

\include "bershid_ba.ly"
\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica

\include "sila_zhivot_zdrave.ly"

\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica

\include "krasiv_e_zhivotat.ly"

\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica

\include "Otce nach, ne ne vavechdai.ly"

\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica

\include "Stranik_sam_na_tozi_svjat.ly"




\pageBreak
%}
