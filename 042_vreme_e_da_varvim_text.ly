\markup {  \vspace #0.9 }

brace_size = \markup {
   \translate #'(0 . -1.5 )
  \right-brace #20 
}

numberA = \markup {
   \translate #'(0 . -1.5 ) \vcenter { 2 }
}

numberB = \markup {
   \translate #'(0 . -1.2 ) \vcenter { 2 }
}

brace_sizeB = \markup {
   \translate #'(0 . -0.5 )
  \right-brace #20 
}

rigt_braces = \markup {
\column {
      
     \line { " " }     %1-va skoba za povtorenie
     \line { " " }    
     \brace_size
  
     \line { " " } %2-ra skoba za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " }
  \brace_sizeB
  
     \line { " " } %3-ta skoba za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " }
 \brace_sizeB
  
     \line { " " } %4-ta skoba za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " }
  \brace_sizeB
     
    }
    
  \column { 
    
    \line { " " }  %1-va cifra za povtorenie
    \line { " " } 
    %\translate #'(0 . -1.5 ) \vcenter { 2 } 
    \numberA
    
     \line { " " }  %2-ra cifra za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " } 
   \numberB 
    
     \line { " " }  %3-ta cifra za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " } 
    \numberB
    
     \line { " " }  %4-ta cifra za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " } 
    \numberB   
} } 
  
\markup {
    \hspace #1
    \fontsize #+1 {
  
     
    \column {
      
      
     
     
      \line { 1.Време е да вървим, }
      \line {   "   " злото да победим, }  
      \line {   "   " мира да въдворим, }
      \line {   "   " Христа да възцарим! } 
      \line {   "   " Правда ще въведем, } 
      \line {   "   " свобода ще дадем, } 
       \line {   "   " и през всичките дни } 
        \line {   "   " верни ще сме ний. } 
      
      \line { " " }
      \line {  "   " Да царува Любовта! }
      \line {   "   " Да царува Благостта! }  
      \line {   "   " Бог е царят на света, }
      \line {   "   " Той в пътя ни е светлина. } 
           
      \line { " " }
      \line { 2. Бързо да полетим, }
      \line {   "   " мощно да възтръбим, }  
      \line {   "   " радост да възвестим,  }
      \line {   "   " вяра да съживим! } 
      \line {  "   " Ще огрей пак света }
      \line {   "   " в първата красота, }  
      \line {   "   " свобода, мир и ред  }
      \line {   "   " ще владеят вред. } 
     
    }
    
    \rigt_braces
  
  %{  
    \column {
      
     \line { " " }     %1-va skoba za povtorenie
     \line { " " }    
  \translate #'(0 . -0.8 )
  \right-brace #15 
  
     \line { " " } %2-ra skoba za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " }
  \translate #'(0 . -0.8 )
  \right-brace #15 
  
     \line { " " } %3-ta skoba za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " }
  \translate #'(0 . -0.6 )
  \right-brace #15 
  
     \line { " " } %4-ta skoba za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " }
  \translate #'(0 . -0.6 )
  \right-brace #15 
     
    }
    
  \column { 
    
    \line { " " }  %1-va cifra za povtorenie
    \line { " " } 
    \vcenter { 2 } 
    
     \line { " " }  %2-ra cifra za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " } 
    \vcenter { 2 } 
    
     \line { " " }  %3-ta cifra za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " } 
    \vcenter { 2 } 
    
     \line { " " }  %4-ta cifra za povtorenie
     \line { " " } 
     \line { " " } 
     \line { " " } 
    \vcenter { 2 } 
 
  
  }
    
 %}
  %
   \hspace #18 {
    
    \column  {
       \line { 1. Christos otgore sliza }
       \line { "   " vâv svojata dârdgava }
       \line { "   " s mogâshtestvo i sila }
       \line { "   " sâs vsichkata Si slava }   
    
     \line { " " }
      \line { 3. Elate, bratya vsichki }
      \line {   "   " oblecheni vâv bjalo, }  
      \line {   "   " da go posreshtnem s Radost, }
      \line {   "   " târdgestveno i slavno. } 
           
      \line { " " }
      \line { 4. Toj ide na Zemjata }
      \line {   "   " bezkrajno da caruva, }  
      \line {   "   " dgivot vâv Istinata  }
      \line {   "   " na vsichki da daruva. } 
      
      \line { " " }
      \line { 5. Blagosloveno carstvo }
      \line {   "   " na Boga Triedinnij }  
      \line {   "   " ot sega i do veka,  }
      \line {   "   " prez vsichkite godini. } 
    
    }
     
     \rigt_braces 
       
    }
%}
    }
 
 
}




%---------------------------------------------------------------------  