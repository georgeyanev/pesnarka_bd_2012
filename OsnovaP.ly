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



\include "Zora_na_novija_zivot.ly"
\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica
\include "Zora_na_novija_zivot_text.ly"
\include "Zora_na_novija_zivot_text_de.ly"

%\include "Izljasal e sejach"

%\include "Steseraz.ly"

\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica

%\include "Izgrjava_den_turzestven.ly"

%\include "Blagoslavjai.ly"




\include "Nebeto-se-otvaria.ly"

\include "Nebeto-se-otvaria_text.ly" 

\pageBreak %nova stranica

\include "Idvat-dni-na-Radost.ly"
\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica
\include "K-m-Rila.ly"
\include "K-m-Rila_text_de.ly"
\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica
%\include "Psalm91.ly"
%\include "Psalm91_de.ly"
\markup {  \vspace #1.9 } % razstoinie megdu 2 pesni na 1 stranica
%\include "Na_belia_zvjat.ly"

\include "na_uchitelja.ly"

%\include "na_uchitelja._text.ly

\pageBreak %nova stranica

\include "fir_fur_fen.ly"

\include "duhat_mi_shepne_tova.ly"

\include "bershid_ba.ly"

\include "Otce nach, ne ne vavechdai.ly"

\include "Stranik_sam_na_tozi_svjat.ly"









\pageBreak
%}
