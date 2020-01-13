\version "2.18.2"
\paper {
  #(set-paper-size "a5")
  print-all-headers = ##t
  print-page-number = ##t 
  print-first-page-number = ##t
  
  % put page numbers on the bottom
  oddHeaderMarkup = \markup ""
  evenHeaderMarkup = \markup ""
  oddFooterMarkup = \markup
    \fill-line {
      ""
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

  left-margin = 1.5\cm
  right-margin = 1.5\cm
  ragged-bottom = ##f % do spread the staves to fill the whole vertical space
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
    Зо -- ра се чуд -- на за -- зо -- ря -- ва, зо -- 
    ра на све -- тъл нов жи -- вот, све -- ли -- ко -- 
    ле -- пи -- е ог -- ря -- ва по -- спре -- ли -- я се 
    наш ки -- вот. В~но -- ви -- я све -- тъл тоз жи -- вот, __  
    в~но -- ви -- я све -- тъл тоз жи -- вот, жи -- вот на 
    Лю -- бов -- та.  в~но -- ви -- я све -- тъл тоз жи -- вот, __ 
    жи -- вот на Бла -- гост -- та, в~но -- ви -- я све -- тъл 
    тоз жи -- вот, жи -- вот на Ра -- дост -- та. 
  }

  \addlyrics {
    Zo -- ra se chud -- na za -- zo -- rya -- va, zo -- 
    ra na sve -- tal nov zhi -- vot, sve -- li -- ko -- 
    le -- pi -- e og -- rya -- va po -- spre -- li -- ya se 
    nash ki -- vot. V~no -- vi -- ya sve -- tal toz zhi -- vot, __  
    v~no -- vi -- ya sve -- tal toz zhi -- vot, zhi -- vot na 
    Lyu -- bov -- ta.  v~no -- vi -- ya sve -- tal toz zhi -- vot, __ 
    zhi -- vot na Bla -- gost -- ta, v~no -- vi -- ya sve -- tal 
    toz zhi -- vot, zhi -- vot na Ra -- dost -- ta. 
  }

  \header {
    title = \markup \column { 
              \line { Зората на Новия живот }
              \line { Zorata na Noviya zhivot  }
            }
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
      \line {   "   " В големия небесен двор.} 

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
    
   \hspace #1 {
    \column  {
      \line { 2. I ptichki vazduha izpalnyat }
      \line {   "   " s vaztorg i sladki pesni v hor, }  
      \line {   "   " Harmoniyata da dopalnyat }
      \line {   "   " V golemiya nebesen dvor.} 

      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line {  "   " V noviya svetal toz zhivot, }
      \line { "   " V noviya svetal toz zhivot, }
      \line { "   " Zhivot na lyubovta, }
      \line {  "   " V noviya svetal toz zhivot,}
      \line { "   " Zhivot na blagostta, }
      \line { "   "  V noviya svetal toz zhivot,}
      \line {  "   " Zhivot na radostta.}
      \line { " " }
     
      \line { 3. Trepti zorata lekokrila  }
      \line {   "   " pri rilskite ochi. }  
      \line {   "   " Tuk chudnata tsigulka }
      \line {   "   " s nov ton shte zazvuchi. } 
      
      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }

      \line { 4. Lachi ot lyubovta ni vlivat }
      \line {   "   " V gardite zhiva toplina, }  
      \line {   "   " Sas sladka vyara ni povdigat }
      \line {   "   " Vav krepost i videlina. } 
      
      \line { " " }
      \line { "   " \italic {Pripev ...} }
      \line { " " }
      
      \line { 5.  O tezi lachi ot Boga idat, }
      \line {   "   " Te palnyat nashite sartsa, }  
      \line {   "   " I shepnat sladko, kak Toy vika: }
      \line {   "   " Elate, moite detsa! } 
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
