\version "2.18.2"
\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  %#(set-paper-size "mein Format") 
}



\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
  \clef treble
  \key c \major
  \time 3/8 \tempo "Moderato" 8 = 160
  \partial 8
  \autoBeamOff  
 
 c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ~ |  g'4    g'8 |\break
 
 c''4 c''8| \once \autoBeamOn c''8 ([  b'8  ])  \noBeam  c''8 |d''4 b'8  |c''4. ( | c''4 ) a'8| a'4 a'8| \break
 
 d''4  c''8| b'4 a'8| a'4. | g'4. ( |g'4 ) g'8 | a'4 g'8 | g'4 f'8 | \break
 
 e'4 d'8| c'4. ( | c'4. ) | \bar "||"
 \tempo "Piu mosso" 8 = 176
 g'8  fis'8 g'8 | a'4 g'8 | g'4 g'8 |c''4. (| \break
 
 c''4. ) | c''8 b'8 c''8| d''4 c''8 | b'4  b'8 | b'4.  (| b'4 )  a'8| b'4 a'8 | \break
 
 g'4 fis'8 | g'4. (| g'4. ) | a'8 g'8 f'8 | f'4 f'8 | e'4 f'8 | g'4. (| \break
 
 g'4 ) g'8 | a'4 g'8 | g'4 fis'8 | g'4. (| g'4. )| d'8 e'8 f'!8| f'4 f'8 | \break
 
 e'4 f'8 | g'4. (|g'4 ) e'8 | g'4 f'8 | e'4 d'8 | c'4. ( | c' 4 ) s8 | \bar "|."  \pageBreak
  }
  
  \addlyrics {
Зо -- ра се чуд -- на за -- зо -- ря -- ва,  
зо -- ра на све -- тъл нов жи -- вот, све -- ли -- ко -- 
ле -- пи -- е ог -- ря -- ва по -- спре -- ли -- я се 
наш ки -- вот. В~но -- ви -- я све -- тъл тоз жи -- вот, __  в~но -- ви -- я све -- тъл тоз жи -- вот, 
жи -- вот на Лю -- бов -- та.  в~но -- ви -- я све -- тъл тоз жи -- вот, __ жи -- вот на Бла -- гост -- та,
в~но -- ви -- я све -- тъл тоз жи -- вот, жи -- вот на Ра -- дост -- та. 
  }

  \addlyrics {
So -- ra se tschud -- na sa -- so -- rja -- va, 
so -- ra na sve -- tal nov shi -- vot, sve -- li -- ko -- 
le -- pi -- e og -- rja -- va po -- spre -- li -- ja se 
nasch ki -- vot. V~no -- vi -- ja sve -- tyl tos shi -- vot, __  v~no -- vi -- ja sve -- tyl tos shi -- vot, 
shi -- vot na Lju -- bov -- ta.  v~no -- vi -- ja sve -- tyl tos shi -- vot, __ shi -- vot na Bla -- gost -- ta,
v~no -- vi -- ja sve -- tyl tos shi -- vot,  shi -- vot na Ra -- dost -- ta. 
  }

  \header {
    title = "Зората на Новия живот / Zorata na Noviya zhivot"
  }
  
  \midi{}
} % score

\markup {
    \hspace #10
    \fontsize #+1 {
  
     
    \column {
     
     
      \line { 2. И птички въздуха изпълнят }
      \line {   "   " с възторг и сладки песни в хор, }  
      \line {   "   " Хармонията да допълнят }
      \line {   "   " В големия небесен двор.
 } 
 
 \line { " " }
       \line { "   " \italic {Припев: } }
      \line {  "   " В новия светъл тоз живот, }
      \line { "   " В новия светъл тоз живот, }
      \line { "   " Живот на любовта, }
      \line {  "   " В новия светъл тоз живот,}
      \line { "   " Живот на благостта, }
      \line { "   "  В новия светъл тоз живот,}
      \line {  "   " Живот на радостта.}
 
      \line { " " }
      \line { 3. Трепти зората лекокрила  }
      \line {   "   " при рилските очи. }  
      \line {   "   " Тук чудната цигулка }
      \line {   "   " с нов тон ще зазвучи. } 
      
      
    \line { " " }
       \line { "   " \italic {Припев ...} }
      
       \line { " " }
      \line { 4. Лъчи от любовта ни вливат }
      \line {   "   " В гърдите жива топлина, }  
      \line {   "   " Със сладка вяра ни повдигат }
      \line {   "   " Във крепост и виделина. } 
      
       \line { " " }
       \line { "   " \italic {Припев ...} }
      
      \line { " " }
      \line { 5.  О тези лъчи от Бога идат, }
      \line {   "   " Те пълнят нашите сърца, }  
      \line {   "   " И шепнат сладко, как Той вика: }
      \line {   "   " Елате, моите деца! } 
     
    }
    
   
    
 %}
  %
   \hspace #1 {
    
    \column  {
       
     \line { 2. I ptitschki vasduha izpulvat }
      \line {   "   " s vaztorg i sladki pesni v hor, }  
      \line {   "   " Harmonijata da dopulnjat }
      \line {   "   " V golemija nebesen hor }
 
 
 \line { " " }
       \line { "   " \italic { Refrain :} }
      \line {  "   " V novija svetul toz shivot }
      \line { "   " V novija svetul toz shivot }
      \line { "   " shivot na ljubovta }
      \line {  "   " V novija svetul toz shivot,}
      \line { "   " shivot na blagostta }
      \line { "   "  V novija svetul toz shivot,}
      \line {  "   " Shivot na radostta.}
 
      \line { " " }
      \line { 3.  Trepti sorata lekokrila  }
      \line {   "   " pri rilskite otschi }  
      \line {   "   " Tuk tschudnata zigulka }
      \line {   "   " s nov ton pak ste svutschi. } 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
      
       \line { " " }
      \line { 4. Lachi ot ljubovta ni vlivat }
      \line {   "   " V gardite shiva toplina }  
      \line {   "   " Sas sladka vjara ni povdigat }
      \line {   "   " Vav krapost i videlina } 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
      
      \line { " " }
      \line { 5. O, tes latschi ot Boga idat}
      \line {   "   " Te palnjat nashite sarza, }  
      \line {   "   " I schepnat sladko, kak Toj vika: }
      \line {   "   " Elate moite deza. } 
     
        
      
       
    }    
    }
    }
 
}

\pageBreak

\markup {  \hspace #20 \fontsize #3 \bold "Die wunderbare Mögenröte bricht an"  }

\markup {
    \hspace #1
    \fontsize #+1 {
      
      \halign #-1.5 {
  
  
  
     
    \column {
     \line { " " }
      \line { 1. Die wunderbare Morgenröte bricht an, }
      \line {   "   " die wundervolle Morgenröte des hellen, neuen Lebens, }  
      \line {   "   " mit Herrlichkeit bescheint sie unsere Bundeslade }
      \line {   "   " Die wunderbare Morgenröte bricht an, } 
      \line {   "   " die Morgenröte des neuen Lebens. } 
      
      \line { " " }
      \line { 2. Und die Vögel erfüllen die Luft }
      \line {   "   "mit Begeisterung und süßen Liedern im Chor, }  
      \line {   "   " damit sie die Harmonie ergänzen }
      \line {   "   " im großen himmlischen Hof. } 
      
       \line { " " }
    \line { "   " \italic { Refrain :}  }
      \line {    "   "In diesem neuen, leuchtenden Leben (2) }
      \line {   "   "ein Leben der Liebe, }  
      \line {   "   " in diesem neuen Leben der Liebe, }
      \line {   "   " in das Leben der Güte, } 
       \line {   "   "in diesem neuen leuchtenden Leben, }  
       \line {   "   "ein Leben der Freude.} 
      
     
 
       
      \line { " " }
      \line { 3. Die Morgenröte flimmert leichtbeschwingt }
      \line {   "   " und erweckt unsere Seelen; }  
      \line {   "   " wie liebe, liebevolle Mutter }
      \line {   "   " ladet sie jeden ein: Stehe auf! } 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
      
      \line { " " }
      \line { 4. Strahlen aus Liebe flößen }
      \line {   "   " in unserer Brust lebendige Wärme ein, }  
      \line {   "   " mit süßem Glauben erheben sie uns }
      \line {   "   " in Stärke und Licht.} 
      
       \line { " " }
    \line { "   " \italic { Refrain } ... }
    
       \line { " " }
      \line { 5. O, diese Strahlen kommen von Gott, }
      \line {   "   " sie erfüllen unsere Herzen }  
      \line {   "   " und flüstern uns süß zu, wie Er ruft: }
      \line {   "   " Kommt, meine Kinder!} 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
    }
       
    }    
    }
}

} % bookpart


%}
   
 
 


 
    
   
    
 
%---------------------------------------------------------------------  
