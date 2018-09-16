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
     
         
     
      \line { 2.  Господи, Ти мой Учител, }
      \line {   "   " в стъпките си ме води, }  
      \line {   "   " и кат мощен покровител }
      \line {   "   " всякога към мен бъди. } 
      
      
      \line { " " }
      \line { 3. Дай ми Твойта Мъдрост свята }
      \line {   "   " и Божествена Любов – }  
      \line {   "   " за любов към всички братя }
      \line {   "   " винаги да съм готов. } 
      
                
      \line { " " }
      \line { 4. И когато стана жител }
      \line {   "   " на невидимия свят, }  
      \line {   "   " о, любезни мой Учител,  }
      \line {   "   " дай ми Твойта благодат! } 
      
       
     
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
       \line {  }
       \line { "   "  }
       \line { "   "  }
       \line { "   "  }   
    
     \line { " " }
      \line {  }
      \line {   "   "  }  
      \line {   "   "  }
      \line {   "   "  } 
           
      \line { " " }
      \line {  }
      \line {   "   "  }  
      \line {   "   " }
      \line {   "   " } 
      
      \line { " " }
      \line {  }
      \line {   "   "  }  
      \line {   "   "   }
      \line {   "   "  } 
    
    }
     
     \rigt_braces 
       
    }
%}
    }
 
 
}




%---------------------------------------------------------------------  