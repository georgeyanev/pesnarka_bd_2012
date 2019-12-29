\version "2.18.2"
%#(set! paper-alist (cons '("mein Format" . (cons (* 176 mm) (*  250 mm))) paper-alist))
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
 
 c'8 |e'4 g'8|c''4 g'8 |a'4 g'8 |c''4.| g'4. ( |  g'4  )  g'8 |\break
 
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


} % bookpart


%}
   
 
 


 
    
   
    
 
%---------------------------------------------------------------------  
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \time 3/4 \tempo "Moderato" 4 = 144
    
    \partial 4 g'4| e''2 d''4| c''2 b'4|d''2 c''4| b'2. (|a'2.) g'2. (| \break
 
    g'4 ) r4 g'4 | a'2 a'4 | b'2 b'4 | c''2 d''4 | e''2.~ e''4 r4 e'' | \break
 
    \repeat volta 2 { 
      g''2 f''4 | e''2 d''4 | d''2 c''4 | e''2.| d''2. ( |d''4) r4 g'4| a'2 g'4| \break
  
      c''2 b'4 | 
    }  
    \alternative {  
      {  c''2 d''4| e''2. (| e''4 ) r4  e''4| }  
      { e''2 d''4 | c''2. (| c''4 )  r4 g'4  | \bar "||" \break }  
    } 
  
  \repeat volta 2 {  
    \tempo "Piu mosso" 4 = 184
    \bar ".|:" c''2 c''4 | c''4 ( b'4 ) c''4 | d''2 c''4 | b'2. (| b'4 ) r4 b'4 | a'2 a'4 | \break
     a'4 ( g'4 ) a'4 | b'2 a'4 | g'2. ( | g'4 ) r4 a'4 | a'2 a'4 | c''4 ( b'4) a'4 | a'2 e'4 |  \break
  }  
  \alternative {  
    {  f'2. (|  f'4 )  r4 f'4 | f'2 f'4 | f'4 ( e'4 ) f'4 | g'2 f'4 |e'2. (| e'4 ) r4 g'4   \break }
    {  f'2. (|  f'4 ) r4 g'4 | g'2 g'4 | a'2 
    \override Score.RehearsalMark #'outside-staff-priority = #599
    \mark\markup\normalsize\bold { "rit." } % places rit. below alternative bracket
       a'4 | b'2 b'4 | c''2. ( | c''2 s4) | \bar "|." \pageBreak } }
  }
 
  \addlyrics {
    Из -- ля -- зъл е се -- яч да се -- е __
    пре -- крас -- но бла -- го нов Жи -- вот. И 
    се -- е той и ти -- хо пе -- е пред все -- ки
    дом и все -- ки род, и все -- ки род: Без --
    це -- нен дар е Лю -- бов -- та, кра --  си -- во
    чув -- ство О -- бич -- та и бла -- го де -- ло Ми -- лост -- 
    та, о -- би -- лен из -- вор Мъ -- дрост -- та. Без --
    та о -- би -- лен из -- вор Мъ -- дрост -- та.
  }

  \addlyrics {
    Iz -- lya -- zal e se -- yach da se -- e __
    pre -- kras -- no bla -- go nov ZHi -- vot. I 
    se -- e toy i ti -- ho pe -- e pred vse -- ki
    dom i vse -- ki rod, i vse -- ki rod: Bez --
    tse -- nen dar e Lyu -- bov -- ta, kra --  si -- vo
    chuv -- stvo O -- bich -- ta i bla -- go de -- lo Mi -- lost -- 
    ta, o -- bi -- len iz -- vor Ma -- drost -- ta. Bez --
    ta o -- bi -- len iz -- vor Ma -- drost -- ta.
  }


  \header {
    title = "Излязъл е сеяч / Izlyazal e seyach"
  }

} % score

\markup {
    \hspace #1
    \fontsize #+1 {
       
    \column {
          
      \line { 1. Излязъл е сеяч да сее }
      \line {   "   " прекрасно благо – нов живот. }  
      \line {   "   " И сее той, и тихо пее }
      \line {   "   " пред всеки дом и всеки род:
 } 
 
 \line { " " }
       \line { "   " \italic {Припев: } }
      \line {  "   " Безценен дар е Любовта, }
      \line { "   " красиво чувство – обичта, }
      \line { "   " и благо дело – милостта, }
      \line {  "   " обилен извор – мъдростта.“}
 
      \line { " " }
      \line { 2. И който чуе, в миг потръпва }
      \line {   "   " от тоя благ и мил напев; }  
      \line {   "   " и просиява, и възкръсва, }
      \line {   "   " и благославя тоз посев. } 
      
      
    \line { " " }
       \line { "   " \italic {Припев ...} }
      
       \line { " " }
      \line { 3. Любов Вселената облива, }
      \line {   "   " от обич грее всяка твар, }  
      \line {   "   " живот в живота се прелива – }
      \line {   "   " тук няма вече млад и стар. } 
      
      
       \line { " " }
       \line { "   " \italic {Припев ...} }
     
    }
 
   \hspace #10 {
    
    \column  {
       
     \line { 2. Izljasal e sejatsch da see }
      \line {   "   " prekrasno blago - nov shivot. }  
      \line {   "   " I see toj i ticho pee }
      \line {   "   " Pred vseki dom i vseki rod. }
 
 
 \line { " " }
       \line { "   " \italic { Refrain :} }
      \line {  "   " Beszenen dar e Ljubovta }
      \line { "   " krasivo chuvstvo -- obichta}
      \line { "   " i blago delo -- milostta }
      \line {  "   " obilen izvor -- madrostta. }
   
 
      \line { " " }
      \line { 3.  I kojto chue, v mig potrapva }
      \line {   "   " ot toja blag i mil napev }  
      \line {   "   " i prosijava, i vazkrasva, }
      \line {   "   " i blagoslavja toz posev. } 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
      
       \line { " " }
      \line { 4. Ljubov Vselenata obliva }
      \line {   "   " ot obich gree vsjaka tvar, }  
      \line {   "   " shivot v shivota se preliva }
      \line {   "   " tuk veche njama mlad i star. } 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
       
    }    
    }
    }
 
}


} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
 
    d'4 g'8 a'8 | b'4 e''4 | d''8 d''8 e''8 c''8 | b'2| d''4 c''8 b'8 | \break
    a'4 a'8 b'8 | c''8 c''8 b'8  a'8| b'2 | e''4 c''8 e''8 | d''4 b'8 c''8 | \break
    d''8 d''8 d''8 e''8 | d''2 | a'4 a'4 | a'4 a'4 | a'4 b'8 a'8 | g'2 | \break
    d'4 d'4 | d'4 d'4 | d'4 c''8 b'8 | a'2 \repeat volta 2 { b'4 b'4 | b'4 b'4 | \break
    b'4 e''8 d''8 | c''2 | c''4 c''4|c''4 c''4| b'4 d''8 b'8 |a'2 |\break
    a'4 b'8 a'8 | g'2|} 
    \alternative { 
      { d'4 e'8 d'8 | d'2 | d'4 c''8 b'8| a'2 } 
      { \time 4/4 \break
         \override Score.MetronomeMark #'outside-staff-priority = #599
         \override Score.MetronomeMark.X-extent=#'(-4.5 . 0)
         \tempo "Meno mosso" 4 = 92
         d'2 e'4 d'4 | b'1 | \tempo "rit." a'2 b'4 b'4 | g'1| \bar "|." \break } 
    }
  }
  
  \addlyrics {
    Брат -- ство, е -- дин -- ство ни -- е ис -- ка -- ме, 
    зо -- ва на Лю -- бов -- та ни -- е пус -- ка -- ме, ми -- ра на Ра -- дост -- та
    ни -- е ви -- ка -- ме: благ Жи -- вот в~нас да вли -- ва -- ме,
    благ Жи -- вот в~нас да вли -- ва -- ме, благ Жи -- вот в~нас
    да вли -- ва -- ме, благ Жи -- вот в~нас да вли -- ва -- ме,
    да вли -- ва -- ме, да вли -- ва -- ме, да вли -- ва -- ме,
    да вли -- ва -- ме, да вли -- ва -- ме. 
  }

  \addlyrics {
    Brat -- stvo, e -- din -- stvo ni -- e is -- ka -- me, 
    zo -- va na Lyu -- bov -- ta ni -- e pus -- ka -- me, mi -- ra na Ra -- dost -- ta
    ni -- e vi -- ka -- me: blag Zhi -- vot v~nas da vli -- va -- me,
    blag ZHi -- vot v~nas da vli -- va -- me, blag ZHi -- vot v~nas
    da vli -- va -- me, blag ZHi -- vot v~nas da vli -- va -- me,
    da vli -- va -- me, da vli -- va -- me, da vli -- va -- me,
    da vli -- va -- me, da vli -- va -- me. 
  }
  
  \header {
    title = "Братство, единство / Bratstvo, edinstvo"
  }

} % score

  \markup \halign #-10 { 
    \column  { 
      \line  \halign #-5 { 
        \bold  { "D. C." }
      }
      \line { 
        \bold { con ripetizione }
      }
    }
  } 
} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key d \minor
    \time 2/4 \tempo "Largo" 4 = 54
    \autoBeamOff
      a'4 d''4 | a'4 d''8. e''16 | \time 3/4 d''2 a'4 | \time 2/4 bes'4. ( d''8 ) | a'2 | g'4. ( a'8 ) | \break

f'4 e'4 | d'4 cis'4 | d'2 | \repeat volta 2 { a'4 d''8. e''16 | f''2 | e''4 d''4  \break

cis''4 d''8. bes'16 | a'2 | g'4. ( a'8 ) | f'2 | e'4 cis'4 | } \alternative { {d'2 } {\time 3/4 d'2 a'4} } \break

d''4 c''4 bes'8 a'8 | g'8([a'8]) f'4^- e'4 | \time 2/4 d'8([e'8]) f'4 | e'8 d'8 cis'8 e'8 | \break

\time 3/4 d'2 d''8 ([e''8]) | f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8([bes'8]) | \time 3/4 a'2 d''8 ([e''8]) | \break

f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8 ([bes'8]) | \time 2/4 a'2 | c''4 b'8 c'' | \break

d''4 f'4 | bes'4 a'4 | a'4 gis'4 | a'2 | d''4 cis''8 d''8 | e''4 a'4 | bes'4 a'4 | \break

a'4. ( d''8 ) | d''2 | d''4 e''4 | \tempo "rit." f''4 e''4 | d''2 | d''2 | \tempo "a tempo" d''4 c''8 bes'8 | a'4 g'4 | \break

f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | d''4 c''8\noBeam bes'8 | \break

a'4 g'4 | f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | \bar "|."

  }
  
  \addlyrics {
Ще се раз -- ве -- се -- ля пре -- мно -- го за --
ра -- ди Гос -- по -- да, ду -- ша -- та ми ще се 
за -- ра -- ду -- ва в~Бо -- га мо -- е -- го, го: За --
що -- то ме о -- бле -- че в~o -- деж -- ди на спа -- се -- ни --
е, за -- гър -- на ме в~ман -- ти -- я на прав -- да, за -- 
гър -- на ме в~ман -- ти -- я на прав -- да, ка -- то же --
них, у -- кра -- сен със ве -- нец, ка -- то не -- вес -- та, на -- ки -- 
те -- на със ут -- ва -- ри -- те си, ка -- то не -- вес -- та,
на -- ки -- те -- на със ут -- ва -- ри -- те си, ка -- то де --
ви -- ца, пре -- из -- бра -- на от дру -- гар -- ки -- те си.
  }

  \addlyrics {
Shte se raz -- ve -- se -- lya pre -- mno -- go za --
ra -- di Gos -- po -- da, du -- sha -- ta mi shte se 
za -- ra -- du -- va v~Bo -- ga mo -- e -- go, go: Za --
shto -- to me o -- ble -- che v~o -- dezh -- di na spa -- se -- ni --
e, za -- gar -- na me v~man -- ti -- ya na prav -- da, za -- 
gar -- na me v~man -- ti -- ya na prav -- da, ka -- to zhe --
nih, u -- kra -- sen sas ve -- nets, ka -- to ne -- ves -- ta, na -- ki -- 
te -- na sas ut -- va -- ri -- te si, ka -- to ne -- ves -- ta,
na -- ki -- te -- na sas ut -- va -- ri -- te si, ka -- to de --
vi -- tsa, pre -- iz -- bra -- na ot dru -- gar -- ki -- te si.  
  }


  \header {
    title = "Ще се развеселя / Shte se razveselya"
  }

} % score
} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
  \key d \minor
  \time 4/4 \tempo "Andante" 4 = 92
  \autoBeamOff
  \partial 4.
  
  a8 d'8 e'8 |f'4 e'4 f'4 e'4 |d'4 a'4 ~ a'8 a'8 bes'8 a'8 \break |   
  d''4 a'4 bes'4 a'4 |\time 3/4  g'4 a'2 | \time 4/4  g'4 a'8 g'8 f'4. e'8 \break
  g'4 f'2 f'4 |  e'4. d'8 f'4. e'8 | e'4 d'2 r8 \tempo "Più vivo" a8 | \bar "||" \time 2/4 \break
  d'8 e'8 f'8 g'8 | \time 4/4  a'4 a'2 a'4 | bes'4 a'4 d''4. a'8 \break |
  bes'4 a'4 ~ a'8 g'8 a'8 g'8 |  \time 6/4  f'4. e'8 g'4 f'2 f'4 | \time 4/4  e'4. d'8 f'4. e'8 \break |
  e'4 d'4 ~ d'8 d''8 d''8 e''8 | \time 6/4  f''4. e''8 e''4 d''2 c''4 \break
  \time 4/4  bes'4. a'8 a'4. g'8 |  \time 3/4  a'4 a'2 | \time 5/4  c''4. c''8 d''4 g'2 \break |
  f'4. g'8 a'4 a'4. d'8 | f'4. d'8 f'4 e'2 | d'4. a8 d'4 d'2 \bar "|." \pageBreak
  }
  
  \addlyrics {
  Из -- гря -- ва ве -- че ден тър -- же -- ствен, пред -- ре -- че 
   -- ни -- ят ден Бо -- же -- ствен, на дни --
  те ди -- а -- де -- ма, със свет -- ли -- на го
  -- ля -- ма. Е -- ла -- те да жи -- ве -- ем във
  Лю -- бов -- та чу -- дес -- на. Е -- ла -- те
  да при -- е -- мем таз бла -- го -- дат не --
  бес -- на, е -- ла -- те да при -- е -- мем таз
  бла -- го -- дат не -- бес -- на, що жи -- во --
  та об -- но -- вя -- ва и веч -- но тя го под
  -- мла -- дя -- ва.  
  }

  \addlyrics {
  Iz -- grya -- va ve -- che den tar -- zhe -- stven, pred -- re -- che 
   -- ni -- yat den Bo -- zhe -- stven, na dni --
  te di -- a -- de -- ma, sas svet -- li -- na go
  -- lya -- ma. E -- la -- te da zhi -- ve -- em vav
  Lyu -- bov -- ta chu -- des -- na. E -- la -- te
  da pri -- e -- mem taz bla -- go -- dat ne --
  bes -- na, e -- la -- te da pri -- e -- mem taz
  bla -- go -- dat ne -- bes -- na, shto zhi -- vo --
  ta ob -- no -- vya -- va i vech -- no tya go pod
  -- mla -- dya -- va.  
  }

  \header {
    title = "Изгрява ден тържествен / Izgryava den tarzhestven"
  }

} % score

\markup {  \vspace #1.9 }

\markup {
    \hspace #1
    \fontsize #+1 {
    \column {
      \line { 1. Изгрява вече ден тържествен, }
\line {   "   " предреченият ден Божествен, }
\line {   "   " на дните диадема}
\line {   "   " със светлина голяма. }

\line { " " }
       \line { "   " \italic {Припев: } }
\line {   "   " Елате да живеем }
\line {   "   " във Любовта чудесна! }
\line {   "   " Елате да приемем}
\line {   "   " таз благодат небесна, }
\line {   "   " що живота обновява}
\line {   "   " и вечно тя го подмладява! }
 
 \line { " " }
\line { 2. И носи радост за душата, }
\line {   "   " и прогласява свободата}
\line {   "   " и мир с Любов пресвята}
\line {   "   " за всички на Земята. }
\line {   "   " Елате да живеем... }

\line { " " }
       \line { "   " \italic {Припев: } }
       
 \line { " " }
\line {  3.  О, ден прекрасен, вечно благо, }
\line {   "   " кому за тебе не е драго? }
\line {   "   " За всичките години}
\line {   "   " по-скоро обнови ни! }
\line {   "   " Елате да живеем... }

\line { " " }
       \line { "   " \italic {Припев: } }

     
    }
    
   \hspace #10 {
    
    \column  {
       
     \line { 1. Izgrjava vetsche den tyrshestven, }
\line {   "   " predretschenijat den Boshestven, }
\line {   "   " na dnite diadema}
\line {   "   " sys svetlina goljama. }

\line { " " }
       \line { "   " \italic {Refrain } }
\line {   "   " Elate da shiveem }
\line {   "   " vyv Ljubovta tschudesna! }
\line {   "   " Elate da priemem}
\line {   "   " taz blagodat nebesna, }
\line {   "   " shho shivota obnovjava}
\line {   "   " i vetschno tja go podmladjava! }
 
 \line { " " }
\line { 2. I nosi radost za duschata, }
\line {   "   " i proglasjava svobodata}
\line {   "   " i mir s Ljubov presvjata}
\line {   "   " za vsitschki na Zemjata. }
\line {   "   " Elate da shiveem... }

\line { " " }
       \line { "   " \italic {Refrain: } }
       
 \line { " " }
\line {   3.  O, den prekrasen, vetschno blago, }
\line {   "   " komu za tebe ne e drago? }
\line {   "   " Za vsitschkite godini}
\line {   "   " po-skoro obnovi ni! }
\line {   "   " Elate da shiveem... }

\line { " " }
       \line { "   " \italic {Refrain: } }
    }    
    }
    }
}
 

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  left-margin = 2\cm
  right-margin = 2\cm
}

\header {
  tagline = ##f
}

\bookpart {
\score {
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute {
    \clef treble
    \key d \major
    \time 2/4 \tempo "Grave" 4 = 40
    \partial 4
    \autoBeamOff
 
    d'8 fis'8|  a'4 d''4 |  a'4 d'8 e'8 | fis'4 e'8 e'8 \break |
    \time 3/4  d'2 d''8 cis''8 | b'4 a'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2 e''8 d''8 \break |
    cis''4 b'4 a'8 b'8| \time 2/4 a'4 b'8 a'8 | \time 3/4 a'2 b'8 a'8 |\break
    g'4 g'4 fis'8 g'8 | \time 2/4  a'4 b'8 a'8 | \time 3/4  a'2  
    a'8 a'8^\markup { \center-align \concat {
           \dynamic mf
           \normal-text { \bold { \italic " (" } }
           \dynamic p 
           \normal-text { \bold { \italic "  " } }
           \dynamic pp
           \normal-text { \bold { \italic ")" } } } } \break
    \repeat volta 3 { 
      d''4 a'4 b'8 a'8 |  d''4 a'4 e''8 d''8 |  cis''4 b'4 a'8 b'8 \break |
      a'4 a'4 b'8 a'8 | g'4 g'4 fis'8 g'8 | a'4 a'4 d'8 e'8 \time 2/4 \break | 
      fis'4 fis'4 | a'4  e'4 | 
    } \alternative { 
      { e'2  | \time 3/4 d'2 a'8  a'8^\markup { \center-align \concat {
           \dynamic p
           \normal-text { \bold { \italic " (" } }
           \dynamic pp 
           \normal-text { \bold { \italic ")" } } } } |
      } 
      { \time 2/4 e'2 | d'2 | \bar "|." } 
    } 
  }    
  \addlyrics {
      Бла -- го --
      сла -- вяй, ду -- ше мо -- я, Гос -- по -- да!
      Не за -- бра -- вяй вси -- те Му ми -- ло --
      сти, не за -- бра -- вяй вси -- те Му бла -- го
      -- сти, не за -- бра -- вяй вси -- те Му до --
      бри -- ни! Не за -- бра -- вяй ми -- лост -- та
      Му, не за -- бра -- вяй бла -- гост -- та Му, не
      за -- бра -- вяй О -- бич -- та Му, не за -- бра
      -- вяй Лю -- бов -- та Му! Не за -- та Му!
  }
      
  \addlyrics {
      Bla -- go --
      sla -- vjaj, du -- sche mo -- ja, Gos -- po -- da!
      Ne sa -- bra -- vjaj vsi -- te Mu mi -- lo --
      sti, ne sa -- bra -- vjaj vsi -- te Mu bla -- go
      -- sti, ne sa -- bra -- vjaj vsi -- te Mu do --
      bri -- ni! Ne sa -- bra -- vjaj mi -- lost -- ta
      Mu, ne sa -- bra -- vjaj bla -- gost -- ta Mu, ne
      sa -- bra -- vjaj O -- bitsch -- ta Mu, ne za -- bra
      -- vjaj Lju -- bov -- ta Mu! Ne za -- ta Mu!
    
  }
  \header {
    title = "Благославяй / Blagoslavjai"
  }
}
} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
  \key g \minor
  \time 5/4 \tempo "Moderato" 4 = 60
  \autoBeamOff
  \partial 4
 
  d'8 d'8 | \slurDown g'4(bes'4) \slurNeutral a'4 g'4 fis'4 | \time 3/4 a'4 d'2 | \time 6/4 \break
  d''4 es''4 d''4 cis''4 d''4 es''4 | \time 3/4 d''2 c''8 c''8 | \time 4/4 bes'4 a'4 bes'4 c''4 \break
  d''4 a'2 c''8 c''8 | \time 6/4 bes'4 a'4 g'4 fis'4 g'2 | \time 3/4 \break
  \repeat volta 2 { \tempo "Più mosso" 2. = 60 d''2 es''4 | d''2 cis''4| d''2  a'4 | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | \break 
  g'2 a'4 | bes'2. | bes'2 a'4 | bes'2 a'4 | bes'2 a'4| \break
  g'2 fis'4 | g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. | 
  }
  } 
  
  \addlyrics {
    Съ -- бу -- ди -- се, брат -- ко ми -- ли,
    от дъл -- бок сън ти ста -- ни и ве -- ри -- ги -- те ве --
    ков -- ни от но -- зе -- те си сне -- ми. 
    Лю -- бов -- та е тво -- я май -- ка, тво -- я си -- ла 
    твой пи -- лот: тя ще те из -- пра -- ви
    кре -- ко, тя ще ти да -- ри Жи -- вот.   
  }
  % lyrics here
  
  \header {
    title = "Събуди се, братко / Sabudi se, bratko"
  }

} % score

\markup {  \vspace #1.9 }

\markup {
    \hspace #1
    \fontsize #+1 {
    \column {
      \line { 1. Събуди се, братко мили, }
      \line {   "   " от дълбок сън ти стани }  
      \line {   "   " и веригите вековни }
      \line {   "   " от нозете си снеми.}
 \line { " " }
       \line { "   " \italic {Припев: } }
      \line {  "   " Любовта е твоя майка, }
      \line { "   " твоя сила, твой пилот – }
      \line { "   " тя ще те изправи крепко, }
      \line {  "   " тя ще ти дари живот.}
      \line { " " }
      \line { 2.  Напусни затвори тъмни, }
      \line {   "   " вън е вредом светлина – }  
      \line {   "   " мир и радост те очакват }
      \line {   "   " и блажена сетнина. } 
    \line { " " }
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой учител, }
      \line {   "   " живо слово да ще ти – }  
      \line {   "   " на добро ще те научи, }
      \line {   "   " в мъдрост ще те посвети. } 
      \line { " " }
      \line { 3. И на брата си продумай }
      \line {   "   " сладка дума с подтик нов – }  
      \line {   "   " ти сърцето му да стоплиш }
      \line {   "   " с твойта искрена любов. } 
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой спасител, }
      \line {   "   " нея в помощ призови – }  
      \line {   "   " тя душата ти от гнета }
      \line {   "   " скоро ще освободи. } 
    }
    
   \hspace #10 {
    \column  {
    \line { 1. Sâbudi se, bratko mili, }
      \line {   "   " ot dâlbok sân ti stani }  
      \line {   "   " i verigite vekovni }
      \line {   "   " ot nosete si snemi.}
 \line { " " }
       \line { "   " \italic {Pripev: } }
      \line {  "   " Ljubovta e tvoja maika, }
      \line { "   " tvoja sila, tvoi pilot – }
      \line { "   " tja ste te izpravi krepko, }
      \line {  "   " tja ste ti dari shivot.}
      \line { " " }
      \line { 2.  Napusni satvori tâmni, }
      \line {   "   " vân e vredom svetlina – }  
      \line {   "   " mir i radost te otschakvat }
      \line {   "   " i blashena setnina. } 
    \line { " " }
      \line { "   " \italic {Pripev: } }
      \line { "   "Ljubovta e tvoi utschitel, }
      \line {   "   " shivo slovo da ste ti – }  
      \line {   "   " na dobro ste te nautschi, }
      \line {   "   " v mâdrost ste te posveti. } 
      \line { " " }
      \line { 3. I na brata si produmai }
      \line {   "   " sladka duma s podtik nov – }  
      \line {   "   " ti syrtseto mu da stoplisch }
      \line {   "   " s tvoita iskrena ljubov. } 
      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line { "   "Ljubovta e tvoi spasitel, }
      \line {   "   " neja v pomoshh prizovi – }  
      \line {   "   " tja duschata ti ot gneta }
      \line {   "   " skoro shhe osvobodi. } 
    }    
    }
    }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \minor
    \time 4/4 \tempo "Moderato" 4 = 60
    \autoBeamOff
      a'8 g'8 f'8 e'8 d'4 d'4|g'8 a'8 bes'8 d''8 a'4 a'4 | \break
      g'8 a'8 bes'8 d''8 a'4 a'4 | a'8 g'8 f'8 g'8 a'4 a'4| \break
      bes'8 bes'8 bes'8 bes'8 bes'4 d''4 | d''8 c''8 c''8 bes'8 bes'4 a'4 | \break
      g'8 a'8 bes'8 d''8 a'4 a'4 | d'8 e'8 f'8 e'8 d'4 d'4 | \break
      a'8 a'8 d''8 c''8 bes'4 bes'4 | g'8 a'8 c''8 bes'8 a'4 a'4| \break
      g'8 a'8 bes'8 d''8 a'4 a'4 | d'8 e'8 f'8 e'8 d'4 d'4 | \bar "|." \break
  }


  \addlyrics {
    Лю -- бов -- та е из -- вор: тя Жи -- во -- та раж -- да
    и пре -- свя -- та длъж -- ност в~не -- го крот -- ко всаж -- да 
    все на -- пред да хо -- ди в~стре -- меж към До -- бро -- то,
    що е съ -- вър -- ше -- но го -- ре на Не -- бе -- то.
    Ра -- бо -- ти със не -- я в~ми -- лос -- ти же -- ла -- ни,
    по -- мощ -- та но -- си й за ду -- ши стра -- дал -- ни. 
  }

  \addlyrics {
    Lyu -- bov -- ta e iz -- vor: tya ZHi -- vo -- ta razh -- da
    i pre -- svya -- ta dlazh -- nost v~ne -- go krot -- ko vsazh -- da 
    vse na -- pred da ho -- di v~stre -- mezh kam Do -- bro -- to,
    shto e sa -- var -- she -- no go -- re na Ne -- be -- to.
    Ra -- bo -- ti sas ne -- ya v~mi -- los -- ti zhe -- la -- ni,
    po -- mosht -- ta no -- si y za du -- shi stra -- dal -- ni. 
  }

  \header {
    title = "Любовта е извор / Lyubovta e izvor"
  }

} % score

\markup {
    \hspace #10
    \vspace #4
    \fontsize #+1 {
    \column {
      \line { 1. Любовта е извор, }
      \line {   "   " тя живота ражда }  
      \line {   "   " и пресвята длъжност }
      \line {   "   " в него кротко всажда. } 
      \line {   "   "Все напред да ходи}
      \line {   "   "в стремеж към доброто,}
       \line {   "   "що е съвършено}
      \line {   "   "горе на Небето.}
      \line { " " }
       \line { "   " \italic {Припев: } }
      \line {  "   " Работи със нея }
      \line { "   " в милости желани, }
      \line { "   " помощта носи й }
      \line {  "   " за души страдални.}
    }
   \hspace #10 {
    \column  {
     \line { 1. Ljubovta e izvor, }
      \line {   "   " tja shivota rashda }  
      \line {   "   " i presvjata dlyshnost }
      \line {   "   " v nego krotko vsashda. } 
      \line {   "   "Vse napred da chodi}
      \line {   "   "v stremesh kym dobroto,}
      \line {   "   "shho e syvyrscheno}
      \line {   "   "gore na Nebeto.}
      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line {  "   " Raboti sys neja }
      \line { "   " v milosti shelani, }
      \line { "   " pomoshhta nosi i }
      \line {  "   " za duschi stradalni.}
    }
   }
   }
}

\markup {
    \hspace #10
    \vspace #1.9
    \fontsize #+1 {
    \column {
      \line { 2. И туй непрестанно  }
      \line {   "   " върши тя самата }  
      \line {   "   " като нежна майка }
      \line {   "   " всекиму в душата  } 
      \line {   "   " постоянно сади}
       \line {   "   " семенцата драги,}
       \line {   "   " от които никнат}
      \line {   "   " добрините благи}
    \line { " " }
       \line { "   " \italic {Припев ...} }
       \line { " " }
      \line { 3. Таз велика тайна }
      \line {   "   " кой добре разбира, }  
      \line {   "   " свойта душа мила }
      \line {   "   " сутрина разкрива. } 
     \line {   "   " както кринът бели}
      \line {   "   "на роса небесна}
      \line {   "   "и на слънчевата}
      \line {   "   "светлина чудесна.}
       \line { " " }
       \line { "   " \italic {Припев ...} }
      \line { " " }
      \line { 4. Слънцето, което }
      \line {   "   " оживотворява, }  
      \line {   "   " овреме човека}
      \line {   "   " топло озарява, } 
      \line {   "   "буди и възраства}
      \line {   "   "в него семенцата}
      \line {   "   "и му пълни тайно}
      \line {   "   "с добрини душата}
      \line { " " }
       \line { "   " \italic {Припев ...} }
       \line { " " }
      \line { 5. Плодове тъй сладки, }
      \line {   "   " в Любовта узрели, }  
      \line {   "   "най-блажен ще бъде}
       \line {   "   "тоз, който ви вкуси.}
      \line {   "   "В жилища небесни}
       \line {   "   "вечно ще живее,}
      \line {   "   "пред престола Божи}
      \line {   "   "песни ще да пее.}
    }
   \hspace #10 {
    \column  {
      \line { 2. I tui neprestanno  }
      \line {   "   " vyrschi tja samata }  
      \line {   "   " kato neshna maika }
      \line {   "   " vsekimu v duschata  } 
      \line {   "   " postojanno sadi}
       \line {   "   " sementsata dragi,}
       \line {   "   " ot koito niknat}
      \line {   "   " dobrinite blagi}
    \line { " " }
       \line { "   " \italic {Pripev ...} }
       \line { " " }
      \line { 3. Taz velika taina }
      \line {   "   " koi dobre razbira, }  
      \line {   "   " svoita duscha mila }
      \line {   "   " sutrina razkriva. } 
     \line {   "   " kakto krinyt beli}
      \line {   "   "na rosa nebesna}
      \line {   "   "i na slyntschevata}
      \line {   "   "svetlina tschudesna.}
       \line { " " }
       \line { "   " \italic {Pripev ...} }
      \line { " " }
      \line { 4. Slyntseto, koeto }
      \line {   "   " oshivotvorjava, }  
      \line {   "   " ovreme tschoveka}
      \line {   "   " toplo ozarjava, } 
      \line {   "   "budi i vyzrastva}
      \line {   "   "v nego sementsata}
      \line {   "   "i mu pylni taino}
      \line {   "   "s dobrini duschata}
      \line { " " }
       \line { "   " \italic {Pripev ...} }
       \line { " " }
      \line { 5. Plodove tyi sladki, }
      \line {   "   " v Ljubovta uzreli, }  
      \line {   "   "nai-blashen shhe byde}
       \line {   "   "toz, koito vi vkusi.}
      \line {   "   "V shilishha nebesni}
       \line {   "   "vetschno shhe shivee,}
      \line {   "   "pred prestola Boshi}
      \line {   "   "pesni shhe da pee.}
    }    
    }
    }

}


} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \minor
    \time 3/4 \tempo "Adantino" 4 = 72
    \autoBeamOff
    \partial 4
    d'4 | g'2 d'4 | bes'2 a'4 | g'4 fis' g' |  a'4 d' es'  \break
    d'2 d'4 |  d''2 g'4 | es''2 d''4 | c''4 bes' a' \break |
    bes'4 c'' d'' | a'2 a'4 | f''2 d''4 |  g''2 \fermata f''4 \break | 
    es''4 d'' c'' | bes'4 c'' d'' ( | d''4 ) r a' | c''2 a'4 \break | 
    d''2 a'4 | c''4 bes' a' | g'4 fis' a' | g'2 r4 | \time 2/4 \break |
    \repeat volta 2 { \bar ".|:-||" d''8 d'' es'' es'' | d''8 c'' d''4 | c''8 c'' d'' c'' \break | 
    c''8 a' bes'4 | bes'8 c'' d'' es'' | es''8 es'' d''4 \break |
    a'8 c'' bes' a' | fis'8 a' g'4   \break
  }
  }
  
  \addlyrics {
     Ста -- ни, ста -- ни и Гос -- под ще те о -- жи -- ви;
     ста -- ни, ста -- ни и Гос -- под ще те въз --
     кре -- си; ста -- ни, ста -- ни и с~Лю -- бов --
     та за -- поч -- ни; ста -- ни, ста -- ни и в~Ис
     -- ти -- на се об -- ле -- чи. В~Ис -- ти -- на
     се об -- ле -- чи и със не -- я все гра -- ди:
     тя ще те и об -- но -- ви, и с~Дух ще те о
     -- за -- ри.
  }
  
  
   \addlyrics {
     
     Sta -- ni, sta -- ni i Gos -- pod shte te o -- zhi -- vi;
     sta -- ni, sta -- ni i Gos -- pod shte te vaz --
     kre -- si; sta -- ni, sta -- ni i s~Lyu -- bov --
     ta za -- poch -- ni; sta -- ni, sta -- ni i v~Is
     -- ti -- na se ob -- le -- chi. V~Is -- ti -- na
     se ob -- le -- chi i sas ne -- ya vse gra -- di:
     tya shte te i ob -- no -- vi, i s~Duh shte te o
     -- za -- ri.
     
     }
  
  \header {
    title = "Стани, стани / Stani, stani"
  }

} % score

  \markup \halign #-10 { 
    \column  { 
      \line  \halign #-5 { 
        \bold  { "D. C." }
      }
      \line { 
        \bold { con ripetizione }
      }
    }
  } 

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key d \minor
    \time 3/4 \tempo "Andante" 4 = 60
    \autoBeamOff
    \partial 4
    d'8 d' | g'8 ([ a' ]) a'2 | \time 2/4 bes'8 ([ a' ])  bes' ([ c'' ])  | \time 4/4 bes'4 a'2 a'8 a' | \break
    d''4. d''8 c'' ([ d'' ]) d'' ([ c'' ]) \time 3/4  bes'4 a'2 | \time 4/4  a'8 ([ bes' ]) c'' ([ d'' ]) c'' bes' a' g' \break |
    \time 3/4  f'8 ([ g' ]) a'2 | \time 6/4  bes'4. a'8 bes' ([ a' ]) bes' ([ c'' ]) d'' ([ c'' ]) bes' ([ a' ]) \break |
    \time 3/4  |a'8 ([ g'8 ]) a'2 | \time 6/4  d'4. e'8 f'4\staccato e'4\staccato d'\staccato cis'\staccato | \time 4/4  e'2 d' | \bar "|." \break
  }
  
  \addlyrics {
    Страд -- на
    ду -- шо, ти коп -- не -- еш, за как -- во го --
    риш и тле -- еш? Сло -- во -- то Ти, Бо -- же,
    ча -- кам и о -- бил -- на -- та Ти ми -- лост,
    за тях стра -- дам и коп -- не -- я.
  }

  \addlyrics {
    Strad -- na
    du -- sho, ti kop -- ne -- esh, za kak -- vo go --
    rish i tle -- esh? Slo -- vo -- to Ti, Bo -- zhe,
    cha -- kam i o -- bil -- na -- ta Ti mi -- lost,
    za tyah stra -- dam i kop -- ne -- ya.
  }


  \header {
    title = "Страдна душо / Stradna dusho"
  }

} % score

\markup {
    \hspace #5
    \vspace #4
    \fontsize #+1 {
    \column {

\line {   "   " 2. И гладувам, и жадувам,}

\line {   "   " тях очаквам денонощно.}

\line {   "   " Ти ме, Боже, благославяй,}

\line {   "   " при Теб близо аз да бъда}

\line {   "   " и утеха в Теб да найда.}
 \line { " " }

\line {   "   " 3.Твоя светъл лик да гледам}

\line {   "   " и величието Твое,}

\line {   "   " да науча Теб да любя.}

\line {   "   " таз Любов към Тебе, Боже,}

\line {   "   " да намеря мощна сила.}

 \line { " " }

\line {   "   " 4. Във подвизи, съвършенство}

\line {   "   " да познавам милостта Ти,}

\line {   "   " превеликата Ти тайна,}

\line {   "   " що разкрива на човека}

\line {   "   " суетата на живота.}
 \line { " " }
\line {   "   " 5. Всичко грешно на Земята}

\line {   "   " е преходно, мимолетно.}

\line {   "   " Само Ти си вечен, Боже:}

\line {   "   " Тебе хвалим, Тебе славим,}

\line {   "   " Теб ще славят вековете.}

    }


   \hspace #5 {
    \column  {

\line {   2. I gladuvam, i zhaduvam }

\line {   "   "tyah ochakvam denonoshtno.}

\line {   "   "Ti me, Bozhe, blagoslavyay,}

\line {   "   "pri Teb blizo az da bada}

\line {   "   "i uteha v Teb da nayda.}

 \line { " " }

\line {  3. Tvoya svetal lik da gledam}

\line {   "   "i velichieto Tvoe,}

\line {   "   "da naucha Teb da lyubya.}

\line {   "   "taz Lyubov kam Tebe, Bozhe,}

\line {   "   "da namerya moshtna sila.}

 \line { " " }

\line {  4. Vav podvizi, savarshenstvo}

\line {   "   "da poznavam milostta Ti,}

\line {   "   "prevelikata Ti tayna,}

\line {   "   "shto razkriva na choveka}

\line {   "   "suetata na zhivota.}

 \line { " " }

\line {  5. Vsichko greshno na Zemyata}

\line {   "   "e prehodno, mimoletno.}

\line {   "   "Samo Ti si vechen, Bozhe:}

\line {   "   "Tebe hvalim, Tebe slavim,}

\line {   "   "Teb shte slavyat vekovete.}



    } 
    
    
    
   
   
    }
    }

}


} % bookpart

\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \minor
    \time 3/4 \tempo "Moderato" 2. = 40
    \partial 4
 
      d'4 |  g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. | d'2. ~ | d'4 r d'' \break         
      d''2 es''4 | d''2 cis''4 | d''2 es''4 | d''2. ~ | d''4 r c'' | bes'2 bes'4 \break |
      bes'4 ( a' ) bes' | c''2 bes'4 | a'2. | a'2. ~ | a'4 r a' |  bes'2 bes'4 \break |
      c''2 c''4 | d''2 a'4 |  bes'2. ~ |  bes'4 r a' |  bes'2 a'4 |  bes'2 a'4 \break |
      g'2 fis'4 | g'2. ~ | g'4 r d'' | d''2 es''4 | d''2 cis''4 \break |
      d''2 es''4 | d''2. ~ | d''4 r g'' | f''2 es''4 | d''2 d''4 | c''2 bes'4 \break | 
      d''2.~ | d''4 r c'' | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | g'2.~ | g'4 r2 | \bar "|."\break 
  }
  
  \addlyrics {
    Из -- грей,
    из -- грей ти, мо -- е Слън -- це, за -- що --
    то ча -- кам все -- ки ден; за теб коп -- не --
    е мой -- то сър -- це и в~пъ -- тя си съм из
    -- мо -- рен; ти но -- сиш ми Жи -- вот бла --
    жен. Жи -- вот бла -- жен, Жи -- вот бла -- жен,
    бла -- жен, бла -- жен, Жи -- вот бла -- жен; ти
    но -- сиш ми Жи -- вот бла -- жен.
  }

  \addlyrics {
    Iz -- grey,
    iz -- grey ti, mo -- e Slan -- tse, za -- shto --
    to cha -- kam vse -- ki den; za teb kop -- ne --
    e moy -- to sar -- tse i v~pa -- tya si sam iz
    -- mo -- ren; ti no -- sish mi ZHi -- vot bla --
    zhen. ZHi -- vot bla -- zhen, Zhi -- vot bla -- zhen,
    bla -- zhen, bla -- zhen, ZHi -- vot bla -- zhen; ti
    no -- sish mi ZHi -- vot bla -- zhen.
  }


  \header {
    title = "Изгрей ти, мое Слънце / Izgrey ti, moe Slantse"
  }

} % score

\markup {
    \hspace #5
    \vspace #4
    \fontsize #+1 {
    \column {
\line {   "   "2. Огрей небето и Земята,}

\line {   "   "лазурни поднебесен шир,}

\line {   "   "развесели ми днес душата}

\line {   "   "в трептенията си безспир.}

\line {   "   "О, дай ми тоз живот и мир!}
\line { " " }
 \line { "   " \italic {Припев ...} }
       

\line {   "   "Живот и мир, живот и мир,}

\line {   "   "и мир, и мир, живот и мир,}

\line {   "   "о, дай ми тоз живот и мир!}

\line { " " }
\line {   "   "2. Единствено си ти, което}

\line {   "   "изпълваш всичко със любов}

\line {   "   "и подновяваш всичко вехто:}

\line {   "   "светът чрез теб ще бъде нов –}

\line {   "   "ти вечно си света, Любов.}


\line { " " }
 \line { "   " \italic {Припев ...} }
\line {   "   "3. Света любов, света любов,}

\line {   "   "любов, любов, света любов,}

\line {   "   "ти вечно си света, любов.}

   
   
   }



   \hspace #5 {
    \column  {
      
      
      \line { 2. Ogrey Nebeto i Zemyata,}

\line {   "   "lazurni podnebesen shir,}

\line {   "   "razveseli mi dnes dushata}

\line {   "   "v trepteniyata si bezspir.}
      
\line {   "   "O, day mi toz zhivot i mir!}
 \line { " " }
\line { "   " \italic {Pripev ...} }
      

\line {   "   "Zhivot i mir, zhivot i mir,}

\line {   "   "i mir, i mir, zhivot i mir,}

\line {   "   "o, day mi toz zhivot i mir!}
\line { " " }
\line {   3. Edinstveno si ti, koeto}
\line {   "   "izpalvash vsichko sas lyubov}

\line {   "   "i podnovyavash vsichko vehto:}

\line {   "   "svetat chrez teb shte bade nov –}

\line {   "   "ti vechno si sveta, Lyubov.}

\line { " " }
\line { "   " \italic {Pripev ...} }

\line {   "   "Sveta lyubov, sveta lyubov,}

\line {   "   "lyubov, lyubov, sveta lyubov,}
\line {   "   "ti vechno si sveta, lyubov.}
      
      
      

    
    
    
    } 
    
    
    
   
   
    }
    }

}


} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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

  <<
  \new Lyrics = "tempVoiceLyricsBG" \with {
     % lyrics above a staff should have this override
     \override VerticalAxisGroup.staff-affinity = #DOWN
  }    
  \new Lyrics = "tempVoiceLyricsEN" \with {
     \override VerticalAxisGroup.staff-affinity = #DOWN
  }    
  \new Voice = "mainVoice" \absolute  {
    \clef treble
    \key d \minor
    \time 3/4 \tempo "Andante" 4 = 60
    \partial 4
    \autoBeamOff
 
      a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |        
      d''2 e''4 | \time 4/4  
      
      << % now temporary add a second voice
        { 
          \voiceTwo % this voice is in the same context as parent
           f''4 e'' d'' cis'' | d''4 \stemUp a'2 \stemNeutral
        }
        \new Voice = "tempVoice" { % this is a new voice context
          \voiceOne \autoBeamOff
           f''4 e''8 e'' d''4 cis'' | \hideNotes d''4 a'2 \unHideNotes
        }
      >>
      \oneVoice
      
      a'4 | \time 3/4  bes'2 a'4 | \break       
      
      \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |
      a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |
      d''2 a'4 | \time 4/4  bes'4 a'2 d'4 |  f'2 e'4 cis' | \time 3/4  d'2.\fermata | \bar "|." \break
  }
  
  \new Lyrics \lyricsto "mainVoice" {
    Шу -- ми,
    аз слу -- шам цял свят да шу -- ми! Шу -- мят
    сър -- ца -- та че -- ло --  веш -- ки всред
    свой -- те и -- до -- ли и греш -- ки, шу -- мят
    без -- спир -- но у -- мо -- ве -- те, го -- лям
    е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
    аз слу -- шам цял свят да шу -- ми!
  }
  
  \context Lyrics = "tempVoiceLyricsBG" {
    \lyricsto "tempVoice" {
      "(4.)мис" -- ли и неж -- ни чув -- ства
    }
  }
  
  \new Lyrics \lyricsto "mainVoice" {
    Shu -- mi,
    az slu -- sham tsyal svyat da shu -- mi! Shu -- myat
    sar -- tsa -- ta che -- lo --  vesh -- ki vsred
    svoy -- te i -- do -- li i gresh -- ki, shu -- myat
    bez -- spir -- no u -- mo -- ve -- te, go -- lyam
    e pri -- liv v~do -- mo -- ve -- te. Shu -- mi,
    az slu -- sham tsyal svyat da shu -- mi!
  }
  
  \context Lyrics = "tempVoiceLyricsEN" {
    \lyricsto "tempVoice" {
      "(4.)mis" -- li i nezh -- ni chuv -- stva
    }
  }
  
  >>

  \header {
    title = "Шуми / Shumi"
  }

} % score

\markup {
    \hspace #10
    \vspace #1
    \fontsize #+1 {
     
        \column {
     \line {  2. И вятър вее,}

\line {   "   "където си ще.}

\line {   "   "Листата горски отговарят}

\line {   "   "на неговия зов, повтарят}

\line {   "   "любимата си песенчица,}

\line {   "   "игрива като ладанчица.}

\line {   "   "И вятър вее,}

\line {   "   "където си ще.}
\line { " " }
\line {   3. Мой ветре, буйно}

\line {   "   "задухай сега!}

\line {   "   "Носи Божествената влага}

\line {   "   "и освежаваща прохлада;}

\line {   "   "пречиствай задушливи хижи,}

\line {   "   "разсейвай тежки земни грижи!}

\line {   "   "Мой ветре, буйно}

\line {   "   "задухай сега!}
\line { " " }
\line {      4. Задухай, ветре,}

\line {   "   "света разведри!}

\line {   "   "При чисти мисли и нежни чувства}

\line {   "   "цъфтят Божествени изкуства;}

\line {   "   "навред да просияе радост,}

\line {   "   "навред да диша свежа младост.}

\line {   "   "Задухай, ветре,}

\line {   "   "света избистри!}


        }
        
         \hspace #2 {
    \column  {
      
      


\line {  2. I vyatar vee,}

\line {   "   "kadeto si shte.}

\line {   "   "Listata gorski otgovaryat}

\line {   "   "na negoviya zov, povtaryat}

\line {   "   "lyubimata si pesenchitsa,}

\line {   "   "igriva kato ladanchitsa.}

\line {   "   "I vyatar vee,}

\line {   "   "kadeto si shte.}
\line { " " }
\line {  3. Moy vetre, buyno}

\line {   "   "zaduhay sega!}

\line {   "   "Nosi Bozhestvenata vlaga}

\line {   "   "i osvezhavashta prohlada;}

\line {   "   "prechistvay zadushlivi hizhi,}

\line {   "   "razseyvay tezhki zemni grizhi!}

\line {   "   "Moy vetre, buyno}

\line {   "   "zaduhay sega!}
\line { " " }
\line {  4. Zaduhay, vetre,}

\line {   "   "sveta razvedri!}

\line {   "   "Pri chisti misli i nezhni chuvstva}

\line {   "   "tsaftyat Bozhestveni izkustva;}

\line {   "   "navred da prosiyae radost,}

\line {   "   "navred da disha svezha mladost.}

\line {   "   "Zaduhay, vetre,}

\line {   "   "sveta izbistri!}
      
      
    }

        }
   }
}

} % bookpart


\markup {  \hspace #25   \huge\bold "Es lärmt"  }

\markup {
    \hspace #1
    \fontsize #+1 {
      
      \halign #-1.5 {
  
  
     
    \column {
    
       \line { " " }
       
       
       
       \line {   1. Es lärmt, es lärmt, ich höre,}

\line {   "   "die ganze Welt lärmen! }

\line {   "   "Die Herzen der Menschen lärmen }

\line {   "   "zwischen ihren Idolen und Fehlern; }

\line {   "   "die Gehirne lärmen unaufhörlich. }

\line {   "   "Es ist eine große Flut in den Häusern. }

\line {   "   "Es lärmt, ich höre,}
 
\line {   "   "die ganze Welt lärmen!}

 \line { " " }
\line {   2. Und der Wind weht, }

\line {   "   "wohin er will. }

\line {   "   "Die Blätter des Waldes antworten }

\line {   "   "auf seinem Ruf, sie wiederholen ihr Lieblingslied,}

\line {   "   "spielerisch wie ein tanzendes Mädchen.}

\line {   "   "Und der Wind weht, }
 
\line {   "   "wohin er will.}

 \line { " " }

\line {   3. Oh, mein Wind, }

\line {   "   "wehe nun stark! }

\line {   "   "Bringe die göttliche Feuchtigkeit}

\line {   "   "und die belebende Frische, }

\line {   "   "reinige die stickigen Hütten}

\line {   "   "und zerstreue die schweren menschlichen Sorgen!}

\line {   "   "Oh, mein Wind,}

\line {   "   "wehe nun stark!}

 \line { " " }
\line {   4. Wehe, Wind, }

\line {   "   "muntere die Welt auf! }

\line {   "   "Bei reinen Gedanken und zärtlichen Gefühlen }

\line {   "   "erblühen die göttlichen Künste;}

\line {   "   "möge überall Freude erstrahlen}

\line {   "   "und die frische Jugend aufatmen! }

\line {   "   "Wehe, Wind, }

\line {   "   "kläre die Welt!}
       
       
       
                    
    }
       
    }    
    }
}
%}\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
  \key a \minor
  \time 3/4 \tempo "Moderato" 4 = 88
  \partial 4
    e'4 |  a'2 b'4 | c''2 b'4 | a'2 e''4 | e''2 \fermata d''4 | e''2 d''4 | c''2 b'4 \break |
    a'2 gis'4 | b'2. | b'2 \fermata e'4 |  a'2 b'4 | c''2 b'4 | a'2 g'4 | f'2 \fermata f'4 \break |
    e'2 d'4 | c'2 d'4 | e'2 gis'4 | b'2. | a'2 \fermata a'4 | f'2. | a'2 g'4 \break |
    f'2. | e'2 d'4 e'2 d'4 | c'2 b4 | e'2 gis'4 | b'2. | a'2.\fermata  | \bar "||" \break
  }
  
  \addlyrics {
    Ви -- сок
    пла -- нин -- ски връх блес -- ти, об -- лян с~лъ
    -- чи от не -- бе -- са -- та. Там чис -- то из
    -- вор -- че шур -- ти и в~химн из -- ли -- ва
    си ду -- ша -- та, ду -- ша -- та, ду -- ша --
    та. И в~химн из -- ли -- ва си ду -- ша -- та.
  }

  \addlyrics {
    Vi -- sok
    pla -- nin -- ski vrah bles -- ti, ob -- lyan s~la
    -- chi ot ne -- be -- sa -- ta. Tam chis -- to iz
    -- vor -- che shur -- ti i v~himn iz -- li -- va
    si du -- sha -- ta, du -- sha -- ta, du -- sha --
    ta. I v~himn iz -- li -- va si du -- sha -- ta.
  }

  \header {
    title = "При източника / Pri iztochnika"
  }

} % score

\markup {
    \hspace #5
    \vspace #5
    \fontsize #+1 {
    \column {
     



\line { 2. Към него пътник уморен}

\line { " "усилно се стреми с надежда.}

\line { " "С дълбока скръб обременен,}

\line { " "той нов живот си там отрежда,}

\line { " "отрежда, отрежда,}

\line { " "той нов живот си там отрежда.}
\line { " " }
\line { 3. И пита той: Да пийна ли}

\line { " "от твоята водица чиста –}

\line { " "да освежа очите си,}

\line { " "душа си страдна да очистя,}

\line { " "очистя, очистя,}

\line { " "душа си страдна да очистя?}
\line { " " }
\line { 4. Да отпочина ли; ръце,}

\line { " "лице, нозе си да измия}

\line { " "от тоз световен прах; сърце,}

\line { " "покрито с рани, да разкрия,}

\line { " "разкрия, разкрия,}

\line { " "покрито с рани, да разкрия?}
 
\line { " " } 
\line { 5. Склони, о, пътниче злочест,}

\line { " "глава си морна; утолявай}

\line { " "безмерната си жажда днес}

\line { " "от мен – и в мен се ти надявай,}

\line { " "надявай, надявай,}

\line { " "от мен и в мен се ти надявай!}
\line { " " }
\line { 6. Гласа ти мъченишки чух,}

\line { " "приех и твойта жалба мила.}

\line { " "Аз съм велик Божествен дух}

\line { " "и ще ти дам живот и сила,}

\line { " "и сила, и сила,}

\line { " "и ще ти дам живот и сила.}
\line { " " }
\line { 7. Ела, ела и пий от мен,}

\line { " "о, мило Божие създание!}

\line { " "Настъпи веч последен ден}

\line { " "на всяка мъка и страданье,}

\line { " "страданье, страданье,}

\line { " "на всяка мъка и страданье.}

    }
    
    \hspace #5 {
    \column  {
      
      
    

\line { " "2. Kam nego patnik umoren}

\line { " "usilno se stremi s nadezhda.}
\line { " "S dalboka skrab obremenen,}

\line { " "toy nov zhivot si tam otrezhda,}

\line { " "otrezhda, otrezhda,}

\line { " "toy nov zhivot si tam otrezhda.}
\line { " " }
\line { " "3. I pita toy: “Da piyna li}

\line { " "ot tvoyata voditsa chista –}

\line { " "da osvezha ochite si,}

\line { " "dusha si stradna da ochistya,}

\line { " "ochistya, ochistya,}

\line { " "dusha si stradna da ochistya?}
\line { " " }
\line { " "4. Da otpochina li; ratse,}

\line { " "litse, noze si da izmiya}

\line { " "ot toz svetoven prah; sartse,}

\line { " "pokrito s rani, da razkriya,}

\line { " "razkriya, razkriya,}

\line { " "pokrito s rani, da razkriya?}
\line { " " }
\line { " "5. Skloni, o, patniche zlochest,}

\line { " "glava si morna; utolyavay}

\line { " "bezmernata si zhazhda dnes}

\line { " "ot men – i v men se ti nadyavay,}

\line { " "nadyavay, nadyavay,}

\line { " "ot men i v men se ti nadyavay!}
\line { " " }
\line { " "6. Glasa ti machenishki chuh,}

\line { " "prieh i tvoyta zhalba mila.}

\line { " "Az sam velik Bozhestven duh}

\line { " "i shte ti dam zhivot i sila,}

\line { " "i sila, i sila,}

\line { " "i shte ti dam zhivot i sila.}
\line { " " }
\line { " "7. Ela, ela i piy ot men,}

\line { " "o, milo Bozhie sazdanie!}

\line { " "Nastapi vech posleden den}

\line { " "na vsyaka maka i stradanye,}

\line { " "stradanye, stradanye,}

\line { " "na vsyaka maka i stradanye.}
      
    }
   
    }
    }

}


} % bookpart\version "2.18.2"

#(set! paper-alist (cons '("mein Format" . (cons (* 176 mm) (*  250 mm))) paper-alist))


\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2.5\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  #(set-paper-size "mein Format")
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
    \key g \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \partial 8
    \autoBeamOff

      b8 | e'8. fis'16 g'8 a' | b'4 b'8 b' | e''8 d'' c'' b' | c''4 c''8 c'' \break |
      d''8 c'' b' a' | b'4 b'8 b' | b'8 a' g' fis' | e'4 e'8 e' \break |
      \repeat volta 2 {
        fis'8. fis'16 fis'8 fis' | 
        fis'4 fis'8 fis' | 
        g'8. g'16 g'8 g' | 
        g'4 g'8 g' | \break 
        
        a'8.  a'16 a'8 a' | 
        b'4. a'8 | 
        b'8 a' g'  fis'8 |
      } \alternative { 
        {  e'4. e'8 |}  
        {e'4. \bar "|." \break } 
        {e'4. \bar "|." \break } 
      }
  }
  
  \addlyrics {
    На -- пред
    да хо -- дим сме -- ло в~чер -- то -- зи -- те
    без -- мъл -- вни на тай -- но -- то поз -- на --
    ние, с~Жи -- вот и Си -- ла пъл -- ни. Кат вих
    -- ри над го -- ри -- те с~дух пла -- мен във
    гър -- ди -- те на -- пред да по -- ле -- тим,
    све -- та да об -- но -- вим! Кат вим!
  }

  \addlyrics {
    Na -- pred
    da ho -- dim sme -- lo v~cher -- to -- zi -- te
    bez -- mal -- vni na tay -- no -- to poz -- na --
    nie, s~ZHi -- vot i Si -- la pal -- ni. Kat vih
    -- ri nad go -- ri -- te s~duh pla -- men vav
    gar -- di -- te na -- pred da po -- le -- tim,
    sve -- ta da ob -- no -- vim! Kat vim!
  }

  \header {
    title = "Напред да ходим / Napred da hodim"
  }
} % score

\markup { \hspace #2 \vspace #2
   \fontsize #+1 {
    
    \column {

\line {   "   "2. Земята с чисти мисли}

\line {   "   "да оградиме здраво,}

\line {   "   "и злото всепорочно}

\line {   "   "да победиме с право.}
\line { " " }
\line { "   " \italic {Припев}}
\line { " " }


\line {   3. На слабите да носим}

\line {   "   "подкрепа и обнова,}

\line {   "   "на страдущите – милост} 

\line {   "   "и свободата нова.}
\line { " " }
\line { "   " \italic {Припев}}
\line { " " }
\line {  4. Във бездната да слезем,}

\line {   "   "хоругва да поставим}

\line {   "   "и падналите братя}

\line {   "   "от мъка да избавим.}
\line { " " }
\line { "   " \italic {Припев}}
\line { " " }
\line {   5. Тогава да отворим}

\line {   "   "на новий град вратите,}

\line {   "   "в Иерусалим да влезем –}

\line {   "   "света на Светлините.}
\line { " " }
\line { "   " \italic {Припев}}
 \line { " " }   
 
       }
    
   
    
 %}
  %
   \hspace #10 {
    
    \column  {
       
   

\line { 2. Zemyata s chisti misli}

\line { "   "da ogradime zdravo,}

\line { "   "i zloto vseporochno}

\line { "   "da pobedime s pravo.}
\line { " " }
    \line { "   " \italic { Refrain :} }
\line { " " }
\line { 3. Na slabite da nosim}

\line { "   "podkrepa i obnova,}

\line { "   "na stradushtite – milost}

\line { "   "i svobodata nova.}
\line { " " }
    \line { "   " \italic { Refrain :} }
\line { " " }
\line { 4. Vav bezdnata da slezem,}

\line { "   "horugva da postavim}

\line { "   "i padnalite bratya}

\line { "   "ot maka da izbavim.}
\line { " " }
    \line { "   " \italic { Refrain :} }
\line { " " }
\line { 5. Togava da otvorim}

\line { "   "na noviy grad vratite,}

\line { "   "v Ierusalim da vlezem –}

\line { "   "sveta na Svetlinite.}
\line { " " }
\line { "   " \italic { Refrain :} }
       
      
      
 }    
    }
    }
 
}


}
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key e \minor
    \time 3/4 \tempo "Lento" 4 = 50
    \partial 4
    \autoBeamOff
    e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 e''8  e''8 \break
    d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
    | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 \bar "|."\break
  }
  
  \addlyrics {
    На У --  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
    до кон -- ца. Той за мен е път от -- во --
    рен, що ме во -- ди към От -- ца. Той за мен
    е път от -- во -- рен, що ме во -- ди към От -- ца.
  }

  \addlyrics {
    Na U --  chi -- te -- lya po -- ko -- ren az shte slu -- zha
    do kon -- tsa. Toy za men e pat ot -- vo --
    ren, shto me vo -- di kam Ot -- tsa. Toy za men
    e pat ot -- vo -- ren, shto me vo -- di kam Ot -- tsa.
  }

  \header {
    title = "На Учителя / Na Uchitelya"
  }

} % score

\markup {
    \hspace #1
    \vspace #5
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
      \line { 4. И във дни на изпитание }
      \line {   "   " Ти бъди ми канара; }  
      \line {   "   " тъй за Тебе ще живея }
      \line {   "   " и за Тебе ще умра. } 
      \line { " " }
      \line { 5. И когато стана жител }
      \line {   "   " на невидимия свят, }  
      \line {   "   " о, любезни мой Учител,  }
      \line {   "   " дай ми Твойта благодат! } 
    }
    }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \minor
    \time 3/4 \tempo "Andante" 4 = 66
    \partial 4
    \autoBeamOff
      f'8 f'8 | d'4. es'8 f' ([ g' ]) |  f'2 g'8 a' |  bes'4. g'8 g'4 |  f'2 f'8 f' \break |
      c''4. b'8 c'' ([ d'' ]) |c''2 a'8 a' | bes'4 e' g' | f'2 f'8 f' \break |
      d'4. es'8 f' ([ g' ]) | f'2 g'8 a' | bes'4. a'8 bes' ([ c'' ]) | d''2 es''8 es'' \break 
      \repeat volta 2 {d''4 c'' c'' bes'2 bes'8 bes' | a'4. a'8 g' ( a' ) |} \alternative { { bes'2 es''8 es'' } {  bes'2 \bar "|." \break } }
 }
  
  \addlyrics {
    Ми -- ло -- сър -- ди -- е -- то е гра -- ди -- на рай --
    ска, чуд -- но пре -- ме -- не -- на, пъл -- на
    с~ху -- бост май -- ска; бил -- ки и дър -- ве --
    та, в_кра -- со -- та раз -- ви -- ти, с~и -- зо
    -- бил -- на рож -- ба вся -- ко -- га по -- кри
    -- ти, с~и -- зо -- ти.    
  }

  \addlyrics {
    Mi -- lo -- sar -- di -- e -- to e gra -- di -- na ray --
    ska, chud -- no pre -- me -- ne -- na, pal -- na
    s~hu -- bost may -- ska; bil -- ki i dar -- ve --
    ta, v_kra -- so -- ta raz -- vi -- ti, s~i -- zo
    -- bil -- na rozh -- ba vsya -- ko -- ga po -- kri
    -- ti, s~i -- zo -- ti.    
  }


  \header {
    title = "Милосърдието / Milosardieto"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}


} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout
  
  \new Staff <<
    
  \new Voice = "voice1" \absolute  {
    \clef treble
    \key c \major
    \time 3/4 \tempo "Andante" 4 = 66
    \autoBeamOff
    \partial 4
    \voiceOne % stems p

    \slurDown e'8 ([f'8])  g'2 g'4 |  a'4 a' a' | g'2 f'4 | e'2 e'8 ([ f' ]) | \break  
    
    g'2 g'4 | \hideNotes c''2 d''4 | \unHideNotes 
    \once \override NoteColumn.force-hshift = #1.5 e''4 
    e'' \hideNotes d''4 | c''2 c''8 d'' | \break
    
    \repeat volta 2 { 
      e''2 \unHideNotes e''8 e'' | \hideNotes e''4 d'' c'' | \unHideNotes b'4. a'8 \slurDashed b' (a') | g'2 e'8. f'16 | \break  
      \unHideNotes g'4 c' d' | e' e' d' | 
    }  \alternative { 
      { c'2 \hideNotes c''8 d'' | \unHideNotes } 
      { c'2 \bar "|." }     
    }
  }

  \new Voice = "voice2" \absolute  {
    \clef treble
    \key c \major
    \time 3/4 \tempo "Andante" 4 = 66
    \autoBeamOff
    \partial 4
    \voiceTwo % stems down
    
    \hideNotes e'8 [f'8]  g'2 g'4 | \unHideNotes a'2 a'4 | \hideNotes g'2 f'4 | \unHideNotes e'4 e'4 \hideNotes e'8 [ f' ] | \break  
    
    g'2 g'4 | \unHideNotes c''2 d''4 | e''2 d''4^\fermata | c''2 \slurDashed \slurUp c''8 ([d'']) | \break 
    
    \repeat volta 2 { 
      e''2 e''4 | e''4 (d'') c'' | \hideNotes b'4. a'8 b' a' | g'2 e'8. f'16 \break | 
      g'4 c' d' | \unHideNotes e'2 \hideNotes d'4 | 
    }  \alternative { 
      { c'2 \unHideNotes c''8 ([ d'' ]) | \hideNotes } 
      { c'2 \bar "|." } 
    }
  }


  \new Lyrics \lyricsto "voice1" {
    "1.Пред" Теб при -- па -- да -- ме, Гос -- по -- ди, днес 
    с~чис -- ти, тре -- пет -- ни _ ду -- ши. Във _
    пе -- сен из -- ли -- _ ва -- ме \set ignoreMelismata = ##t сър -- ца -- та си и зо --
    вем Те, Пре -- свя -- тий, про -- сти! Във _ сти! 
  }  
  \new Lyrics \lyricsto "voice1" {
    "1.Pred" Teb pri -- pa -- da -- me, Gos -- po -- di, dnes 
    s~chis -- ti, tre -- pet -- ni _ du -- shi. Vav _
    pe -- sen iz -- li -- _ va -- me \set ignoreMelismata = ##t sar -- tsa -- ta si i zo --
    vem Te, Pre -- svya -- tiy, pro -- sti! Vav _ sti! 
  }  

  \new Lyrics \lyricsto "voice2" {
    "2.За" -- бра -- вяй гре -- хо -- ве -- те на -- ши, о --
    бил -- но нас бла -- го -- сло -- ви. Ца --
    рю \set ignoreMelismata = ##t пре -- бла -- гий на свет -- ли -- те ду -- ши, в~цар -- ство --
    то Си ни при -- е -- ми! Ца -- _ ми!
  }  
  \new Lyrics \lyricsto "voice2" {
    "2.Za" -- bra -- vyay gre -- ho -- ve -- te na -- shi, o --
    bil -- no nas bla -- go -- slo -- vi. TSa --
    ryu \set ignoreMelismata = ##t pre -- bla -- giy na svet -- li -- te du -- shi, v~tsar -- stvo --
    to Si ni pri -- e -- mi! TSa -- _ mi!
  }  

  \new Lyrics \lyricsto "voice1" {
    "3.Там" да те сла -- вим през веч -- ност -- та, е --
    дин Ти за слу -- жа -- ваш хва -- ла. О -- гра --
    ди ни _ с~ми -- _ ло -- сти -- те Тво -- и, о -- за --
    ри ни с~Твой -- та Свет -- ли -- на! О -- гра -- на!
  }  
  \new Lyrics \lyricsto "voice1" {
    "3.Tam" da te sla -- vim prez vech -- nost -- ta, e --
    din Ti za slu -- zha -- vash hva -- la. O -- gra --
    di ni _ s~mi -- _ lo -- sti -- te Tvo -- i, o -- za --
    ri ni s~Tvoy -- ta Svet -- li -- na! O -- gra -- na!
  } 

  >> %Staff
  
  \header {
    title = "Сърдечен зов / Sardechen zov"
  }

} % score
} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
      \omit TimeSignature
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key f \major
    \tempo "Andante" 4 = 56 - 58
    \autoBeamOff
    
    \time 8/4 c'4 f'8. g'16 a'4 d'' c'' a' c''2 | \bar "!" c''4 c'' c'' c''4. d''8 c''2 r4 | \bar "!" \break 
    g'4 g'8. g'16 g'4 a' bes'2 bes' | \bar "!" bes'4 d'' d'' d'' c''4. bes'8 a'2 | \bar "!" \break  
    g'4 g' g' g' g'4. a'8 bes'2 | \bar "!" a'4 a' a' a' a'4. bes'8 c''2 | \bar "!" \break 
    d''4 d'' d'' d''8 ([f'']) \fermata e''4. d''8 c''2 | \bar "!" g'4 g' g' g'8 ([ bes' ]) \fermata a'4. g'8 f'2 | \bar "|."
  }
  
  \addlyrics {
    Бла -- го --
    сло -- вен Гос -- под Бог наш на всич -- ки ве
    -- ко -- ве; бла -- го -- сло -- вен Ба -- ща наш
    на Свет -- ли -- те ду -- хо -- ве, на Свет --
    ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
    -- хо -- ве, на Свет -- ли -- те ду -- хо -- ве,
    на Свет -- ли -- те ду -- хо -- ве.
  }

\addlyrics {
    Bla -- go --
    slo -- ven Gos -- pod Bog nash na vsich -- ki ve
    -- ko -- ve; bla -- go -- slo -- ven Ba -- shta nash
    na Svet -- li -- te du -- ho -- ve, na Svet --
    li -- te du -- ho -- ve, na Svet -- li -- te du
    -- ho -- ve, na Svet -- li -- te du -- ho -- ve,
    na Svet -- li -- te du -- ho -- ve.
  }


  \header {
    title = "Благословен Господ / Blagosloven Gospod"
  }

} % score

  \markup \halign #-34 {
    \raise #3 \bold  { "D. C." }
  }

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
  \time 3/4 \tempo "Tempo di marcia" 4 = 96
  \partial 8
  \autoBeamOff
 
    e'8 | g'4. fis'8 g' a' | g'4 e'2 | e'4 e'8. e'16 e'8 e' \break | 

    g'4 f'2 | \time 4/4  f'4 f'8 f' d''4 c'' | b'4 a'8 b' c''2 \break |
  
    g'4 f'8 e' a'2 | d'4 e'8 f' g'4. e'8 | g'4 f' e'2 \break |
  
    e'8 f' g'4 g'2 | a'4 a'8. a'16 a'4 a' | d'8 e' f'4 f'2 \break | 
    
    b'8 ([ d'' ]) a' b' c''2 | b'8 a' g' f' e'4 d'8 e' \break | 
  
    \time 2/4  f'2 |  \time 4/4  b'4 a'8 b' c''2 |  a'4 b'8 c'' d''2 \break |
  
    c''4 b'8 a' e'2 | d'4 e'8 f' g'4. e'8 |  g'4 f' e'2 | \bar "|."
  }
  
  \addlyrics {
    На -- пред,
    на -- пред за сла -- ва в~бой за Ца -- ря не --
    бес -- ни, Ца -- ря на Прав -- да, Мир и Лю --
    бов, Мир и Лю -- бов, Мир и Лю -- бов, Лю --
    бов, Лю -- бов. Сла -- ва, сла -- ва Теб по --
    до -- ба -- ва, Ти си цар на Прав -- да и Мир,
    Ти си цар на Прав -- да и Мир, Мир и Лю --
    бов, Мир и Лю -- бов, Мир и Лю -- бов, Мир и
    Лю -- бов, Лю -- бов, Лю -- бов.
  }

  \addlyrics {
    Na -- pred,
    na -- pred za sla -- va v~boy za TSa -- rya ne --
    bes -- ni, TSa -- rya na Prav -- da, Mir i Lyu --
    bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Lyu --
    bov, Lyu -- bov. Sla -- va, sla -- va Teb po --
    do -- ba -- va, Ti si tsar na Prav -- da i Mir,
    Ti si tsar na Prav -- da i Mir, Mir i Lyu --
    bov, Mir i Lyu -- bov, Mir i Lyu -- bov, Mir i
    Lyu -- bov, Lyu -- bov, Lyu -- bov.
  }


  \header {
    title = "За Небесния цар / Za Nebesniya tsar"
  }

} % score
} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
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
    \key f \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
    \partial 4
 
    f'8 a'8 | c''4 c''8. d''16 |  c''4 f'8 g'8 | a'4 a'8. a'16 | a'4 g'8 a'8  \break

    bes'4 bes'8. bes'16 | bes'4 a'8 bes'8 | d''4 c''8. b'16 | c''2 (| c''4) a'8 bes'8 | \break 

    c''4 c''8. d''16 | c''4 f'8 g'8 | a'4 a'8. a'16 | g'4 c''8 c''8 | b'4 c''8 d''8| \break


    e''4 e''8 d''8 | c''8 b'8 c''4 (| c''4) a'8. bes'16 | \repeat volta 2 { c''2 (| c''8) c''8 d''8 bes'8  |\break

    g'2 (| g'4 ) g'8. a'16| bes'2 ( |  bes'8 ) bes'8 c''8 g'8|   a'2 ( | \break 

    a'4 ) a'8. bes'16| c''2 ( | c''8 ) c''8 f''8 e''8 | d''2 (|d''4 ) e''4 \break  

    f''8 c''8 d''8 bes'8 | a'4 g'4 |} \alternative { { f'2 ( | f'8 ) r8 a'8. bes'16 | } { f'2 (| f' 8 ) r8 \bar "|." \break } }
 
  } 
  
  \addlyrics {
    Вре -- ме е да вър -- вим, зло -- то да по -- бе -- дим, Мир -- ра 
    да въ -- дво -- рим, Хри -- ста да въз -- ца -- рим!  Прав -- да 
    ще въ -- ве -- дем, Сво -- бо -- да ще да -- дем и през всич -- ки -- те 
    дни вер -- ни ще сме ний. Да ца -- ру -- ва Лю -- бов -- та! 
    Да ца -- ру -- ва Бла -- гост -- та!
    Бог е ца -- рят на све -- та, Той в~пъ -- тя ни е Све -- ли -- на. Да ца -- на.   
  }

  \addlyrics {
    Vre -- me e da var -- vim, zlo -- to da po -- be -- dim, Mir -- ra 
    da va -- dvo -- rim, Hri -- sta da vaz -- tsa -- rim!  Prav -- da 
    shte va -- ve -- dem, Svo -- bo -- da shte da -- dem i prez vsich -- ki -- te 
    dni ver -- ni shte sme niy. Da tsa -- ru -- va Lyu -- bov -- ta! 
    Da tsa -- ru -- va Bla -- gost -- ta!
    Bog e tsa -- ryat na sve -- ta, Toy v~pa -- tya ni e Sve -- li -- na. Da tsa -- na.   
  }


  \header {
    title = "Време е да вървим / Vreme e da varvim"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key f \major
    \time 2/4 \tempo "Moderato" 4 = 52
    \autoBeamOff  
 
    c'4 f'8. g'16 | \time 3/4 a'4. g'8 a' bes' | c''4. c''8 e'' d'' | c''4. d''8 c'' bes' \break | 
 
    \time 4/4  a'2 c'4 f'8. g'16 | a'4 f''2 g''8. f''16 | \time 3/4  e''4. d''8 e'' d'' | c''4. d''8 c'' bes' \break |

    a'2 c''4 | \time 4/4  bes'8. a'16 g'2 bes'4 | \time 3/4  d''8 d'' c''4. c''8 \break | 

    \time 4/4  f''8 f'' e''4. d''8 c'' bes' | \time 3/4  a'2 c''4 | \time 4/4  bes'8. a'16 g'2 bes'4 \break |

    \time 3/4  d''8 d'' c''4. c''8 \time 4/4  f''8 f'' e''4. d''8 c'' bes' | \time 2/4  a'2 \bar "|."
 
  }
  
  \addlyrics {
    Бла -- го -- сло -- вен от Бо -- га ти, У -- чи -- те --
    лю на Лю -- бов -- та, за -- де -- то тък -- мо
    в~те -- зи дни до -- не -- се Мир и Свет -- ли -- на. 
    До -- бре до -- шъл, до -- бре до -- шъл,
    У -- чи -- те -- лю на Лю -- бов -- та; до --
    бре до -- шъл, до -- бре до -- шъл, У -- чи --
    те -- лю на Мъ -- дрост -- та.
  }

  \addlyrics {
    Bla -- go -- slo -- ven ot Bo -- ga ti, U -- chi -- te --
    lyu na Lyu -- bov -- ta, za -- de -- to tak -- mo
    v~te -- zi dni do -- ne -- se Mir i Svet -- li -- na. 
    Do -- bre do -- shal, do -- bre do -- shal,
    U -- chi -- te -- lyu na Lyu -- bov -- ta; do --
    bre do -- shal, do -- bre do -- shal, U -- chi --
    te -- lyu na Ma -- drost -- ta.
  }


  \header {
    title = "Поздрав на Учителя / Pozdrav na Uchitelya"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key a \minor
    \time 2/4 \tempo "Andante" 4 = 72
    \partial 4
    \autoBeamOff
 
    e'8 e'8 | a'4 b' | c''4 b' | a'4 gis' ~ | gis'4 e'8 e' | e''4 f'' \break | 

    e''4 d'' |  c''4 \fermata b'8 a' |  gis'4 f' | e'4 dis' |  f'4 e' ~ |  e'4 b'8 c'' \break |

    d''4 e'' |  c''4 b' | a'4 \fermata g'?8 g' \repeat volta 2 {   |  c''4 g' |  c''4 d'' | e''4 c'' ~ \break | 

    c''4 e''8 f'' | g''4 f'' | e''4 d'' | c''4 \fermata e'8 e' | a'4 b' | c''4 d'' \break |

    e''4 b' ~ | b'4 d''8 d'' c''4 b' | a'4 gis' |} \alternative { { a'4 \fermata g'?8 g'  } { a'4\fermata } } \bar "|."
  }
  
  \addlyrics {
    Си -- не мой, па -- зи Жи -- во -- та, скри -- ти -- я у
    те -- бе жар; той без -- це -- нен е по сми -- съл и ве -- 
    ли -- ко -- ле -- пен дар. Дух без -- смър -- тен, Дух не -- тле -- нен, __
    туй, ко -- е -- то веч -- но бди и ра -- бо -- ти без у --
    мо -- ра, не -- пре -- стан -- но в_теб гра -- ди! Дух без -- ди.  
  }

  \addlyrics {
    Si -- ne moy, pa -- zi Zhi -- vo -- ta, skri -- ti -- ya u
    te -- be zhar; toy bez -- tse -- nen e po smi -- sal i ve -- 
    li -- ko -- le -- pen dar. Duh bez -- smar -- ten, Duh ne -- tle -- nen, __
    tuy, ko -- e -- to vech -- no bdi i ra -- bo -- ti bez u --
    mo -- ra, ne -- pre -- stan -- no v_teb gra -- di! Duh bez -- di.  
  }


  \header {
    title = "Сине мой, пази Живота! / Sine moy, pazi Zhivota!"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key a \minor
    \time 3/4 \tempo "Larghetto" 4 = 58
    \partial 4
    \autoBeamOff
 
     e'8 e' a'4 b' c''8 b' |  a'4 a' b'8 b' | c''4 c'' d''8 c'' \break | % 5

     b'4 a' e''8 e'' | e''4 d'' c''8 d'' | e''2 c''8 c'' | c''4 b' c''8 b' \break |

     a'2 e''8 d'' \repeat volta 2 {| c''4 c'' d''8 c'' |  b'4 b' c''8 b' \break | 
                              
     a'4 gis' a'8 b' | }  \alternative { { c''4 b' a'8 b' | c''4 d'' e''8 f'' | e''2 e''8 d''  \break |  }                            
  
    { c''4 b' c''8 b'8 | a'4 gis'4 a'8 b'8 | a'2.| \bar "|." } }
  }
  
  \addlyrics {
    Рос -- на кап -- ко, свят ла -- зу -- рен, чист, кра -- сив и тих, без -- 
    бу -- рен, мир на рай -- ски -- я Жи -- вот, мир на рай -- ски -- я Жи -- 
    вот! В~те -- бе, кап -- ко, ви -- кам всич -- ки бра -- тя 
    ми -- ли и се -- стрич -- ки, да ти ста -- не -- ме на -- род. В~те -- бе,
    стрич -- ки, да ти ста -- не -- ме на -- род.  
  }

\addlyrics {
    Ros -- na kap -- ko, svyat la -- zu -- ren, chist, kra -- siv i tih, bez -- 
    bu -- ren, mir na ray -- ski -- ya ZHi -- vot, mir na ray -- ski -- ya ZHi -- 
    vot! V~te -- be, kap -- ko, vi -- kam vsich -- ki bra -- tya 
    mi -- li i se -- strich -- ki, da ti sta -- ne -- me na -- rod. V~te -- be,
    strich -- ki, da ti sta -- ne -- me na -- rod.  
  }
  
  \header {
    title = "Росна капка / Rosna kapka"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key f \major
    \time 3/8 \tempo "Allegretto" 8 = 112
    \autoBeamOff

    f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | d'16. e'32 f'8 g' | a'4 a'8 \break |
    f''16. e''32 d''8 bes' | a'16. g'32 a'8 f' | e'16. bes'32 a'8 cis' | d'8 d' r | \bar ":|." \break
    \repeat volta 2 { 
      \bar ":|.|:"
      a'4 d''8 | cis''4 e''8 | d''4 bes'8 | a'4 g'8 | a'4 d''8 | cis''4 e''8 | d''4. |  d''4. \break | % 17
      a'4 bes'8 | a'4 d''8 | cis''4 bes'8 |  a'4 g'8 | f'4 a'8 | e'4 a'8 |  d'4. | d'4. } \break |
  }
  
  \addlyrics {
    Аз съм бя -- ло -- то ко -- ки -- че всред тре -- ви -- те гор -- ски, 
    сра -- меж -- ли -- во кат мо -- ми -- че от по -- гле -- ди хор -- ски. 
    Зла ме ма -- ще -- ха съ -- бу -- ди с~сне -- га, вет -- ро -- ве -- те. 
    Всич -- ко жи -- во да се чу -- ди, че съм ран -- но цве -- те.
  }

  \addlyrics {
    Az sam bya -- lo -- to ko -- ki -- che vsred tre -- vi -- te gor -- ski, 
    sra -- mezh -- li -- vo kat mo -- mi -- che ot po -- gle -- di hor -- ski. 
    Zla me ma -- shte -- ha sa -- bu -- di s~sne -- ga, vet -- ro -- ve -- te. 
    Vsich -- ko zhi -- vo da se chu -- di, che sam ran -- no tsve -- te.
  }

  \header {
    title = "Аз съм бялото кокиче / Az sam byaloto kokiche"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \minor
    \time 4/4 \tempo "Tempo di marcia" 4 = 100
    \partial 4
    \autoBeamOff
    d'4 | g'4. a'8 bes'4. a'8 | g'2. d'4 | g'4. a'8 bes'8 bes'8 a'8. a'16| \break
    g'2. d''4 | \repeat volta 2 {  g''4. es''8 d''4. cis''8 | d''2 ( d''8 ) d'8 es'8 d'8 | \break
    bes'4. bes'8 a'4. a'8 |} \alternative  { { g'2. d''4 | }  { g'2. } } \bar "|." 
  }
  
  \addlyrics {
    На -- пред ча -- да на -- пред, но -- се -- те Сло -- во -- то на -- 
    вред! Без страх в~Жи -- во -- та нов но -- се -- те 
    Прав -- да, Мир, Лю -- бов. Без бов!
  }

  \addlyrics {
    Na -- pred cha -- da na -- pred, no -- se -- te Slo -- vo -- to na -- 
    vred! Bez strah v~ZHi -- vo -- ta nov no -- se -- te 
    Prav -- da, Mir, Lyu -- bov. Bez bov!
  }
 
  \header {
    title = "Напред, чада, напред / Napred, chada, napred"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \minor
    \time 2/4 \tempo "Tempo di marcia" 4 = 112
    \autoBeamOff
  
    bes'4. a'8 | c''8 bes' a' g' |  g'2 |  f'2 | a'4. g'8 \break | 
    a'8 g' es' g' |  f'2 |  d'2 \repeat volta 2 { es'4. es'8 | g'8 g' f' e' \break | 
    f'2 | bes'2 d''4. bes'8 | f'8 f' d'' d'' | c''2  bes'2 |\break }
  }
  
  \addlyrics {
    Ний сме сла -- вей -- че -- та гор -- ски, с~пес -- ни 
    сла -- вим Не -- бе -- са -- та, чув -- ства роб -- ски, гри -- жи 
    хор -- ски с~пес -- ни го -- ним от Зе -- мя -- та.
  }
  
  \addlyrics {
    Niy sme sla -- vey -- che -- ta gor -- ski, s~pes -- ni 
    sla -- vim Ne -- be -- sa -- ta, chuv -- stva rob -- ski, gri -- zhi 
    hor -- ski s~pes -- ni go -- nim ot Ze -- mya -- ta.
  }

  \header {
    title = "Славейчета горски / Slaveycheta gorski"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \time 3/4 \tempo "Moderato" 4 = 88
    \partial 4 g'4 | e'2 f'4 | g'2 g'4 | a'2. | g'2 g'4 | c''2 d''4 | e''2 d''4 | \break
    d''2. | c''2 g'4 | \repeat volta 2 { e''2 e''4 | d''2 cis''4 | d''2. | \break
    a'2 c''4 | b'2 b'4 | b'4 ( a'4 ) b'4 | d''2. | } \alternative {
      { c''2 g'4 | } 
      { c''2  s4 } 
    } \bar "|."
  }
  
  \addlyrics {
    Не -- бе -- то се от -- ва -- ря и Ан -- ге -- ли -- те
    пе -- ят. И мол -- ни -- и бле -- стя -- 
    щи тъ -- ми и здрач пи -- ле -- ят. И ят.
  }

  \addlyrics {
    Ne -- be -- to se ot -- va -- rya i An -- ge -- li -- te
    pe -- yat. I mol -- ni -- i ble -- stya -- 
    shti ta -- mi i zdrach pi -- le -- yat. I yat.
  }

  \header {
    title = "Небето се отваря / Nebeto se otvarya"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key f \major
    \time 3/4 \tempo "Larghetto" 4 = 58
    \partial 4
    \autoBeamOff
    f'8 a' c''4 c'' f''8 a' | c''4 c'' f'8 a' | c''4 c'' f''8 e'' \break
    d''2 d''8 c'' \repeat volta 2 { | bes'4 d'' c''8 bes' | a'4 c'' f'8 g' \break |
    a'4 c'' g'8 c'8 |} \alternative { { f'2 d''8 c''  | } { f'2. | \break } } \bar "|."
  }
  
  \addlyrics {
    О, У -- чи -- те -- лю бла -- га -- ти, теб из -- пъл -- ва До -- бри -- 
    на. Твой -- те ду -- ми са кри -- ла -- ти, пъл -- ни 
    с~Мъ -- дрост, Свет -- ли -- на. Твой -- те на.
  }

  \addlyrics {
    O, U -- chi -- te -- lyu bla -- ga -- ti, teb iz -- pal -- va Do -- bri -- 
    na. Tvoy -- te du -- mi sa kri -- la -- ti, pal -- ni 
    s~Ma -- drost, Svet -- li -- na. Tvoy -- te na.
  }

  
  \header {
    title = "О, Учителю благати / O, Uchitelyu blagati"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}


} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key f \major
    \time 2/4 \tempo "Tempo di marcia" 4 = 100
    \autoBeamOff
    c'4 f' | a'8 g' f' e' | g'8 d'4. | c'4 f' \break |
    g'8 a' bes' c'' | a'4. r8 \repeat volta 2 {  | c''4 c'' | d''8 c'' bes' a' | c''8 g'4. \break |
    c'4  f'4 | g'8 a' bes' c'' a'4 g'8 g' | f'4. r8 } \break
  }
  
  \addlyrics {
    Дър -- зост във Хри -- ста, дру -- га -- ри, с~Не -- го 
    да вър -- вим на -- пред, Той е ца -- рят на Жи -- во -- та, 
    цар -- ство -- то Му е на -- вред, е на -- вред.
  }

  \addlyrics {
    Dar -- zost vav Hri -- sta, dru -- ga -- ri, s~Ne -- go 
    da var -- vim na -- pred, Toy e tsa -- ryat na ZHi -- vo -- ta, 
    tsar -- stvo -- to Mu e na -- vred, e na -- vred.
  }

  \header {
    title = "Дързост в Христа / Darzost v Hrista"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key d \major
    \time 4/4 \tempo "Andantino" 4 = 72
    \autoBeamOff
    d'8. cis'16 cis'4 b2 | fis'8. g'16 g'4 fis'2 | fis'8. fis'16 \tupletUp \tuplet 3/2 {  d''8 cis'' b'8 } ais'2 | \break 
    \times 2/3  { ais'8 b' cis''8 } cis''4 b'2 | cis''8 [( d'' e'' d'' cis'' b' )] ais'4 | b'8 [( cis'' )] b'2. \bar "|."
  }
  
  \addlyrics {
    Не на ме -- не, не на ме -- не, но на И -- ме -- то Си
    дай, Бо -- же, сла -- ва, сла -- ва, сла -- ва!  
  }

  \addlyrics {
    Ne na me -- ne, ne na me -- ne, no na I -- me -- to Si
    day, Bo -- zhe, sla -- va, sla -- va, sla -- va!  
  }

  \header {
    title = "Слава Божия / Slava Bozhiya"
  }

} % score
} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \minor
    \time 2/4 \tempo "Tempo di marcia" 4 = 112
    \autoBeamOff
    \partial 8
    f'8 |  bes'4 f'8 bes'16 c'' | d''4 bes'8 d'' | f''8 es'' d'' es'' \break |

    c''4. f'8 | c''4 f'8 c''16 d'' | es''4 c''8 d'' | f''8 es'' c'' d'' \break | 

    bes'4. bes'8 \repeat volta 2 { | g''4 f''8 bes'16 c'' d''4 d''8 d'' \break |
                           
    es''8. d''16 c''8 bes' | a'4. g'8 | g''4 f''8 bes'16 c'' \break | 
 
    d''4 d''8 d'' | f''8 es'' c'' d'' | 
    } \alternative {
      { bes'4. bes'8 | }
      {bes'4.   \break }
    } \bar "|."
  }
  
  \addlyrics {
    С~кри -- ла -- та на о -- ре -- ла, Си -- о -- не наш лю --
    бим, стре -- ми -- тел -- но към те -- бе ний друж -- но днес ле -- 
    тим. Смърт -- та ни веч не пла -- ши, в~нас 
    Дух жи -- ве -- е свят; ед -- на -- кво нас ни 
    рад -- ва и тоз, и он -- зи свят. Смърт -- свят.
  }

  \addlyrics {
    S~kri -- la -- ta na o -- re -- la, Si -- o -- ne nash lyu --
    bim, stre -- mi -- tel -- no kam te -- be niy druzh -- no dnes le -- 
    tim. Smart -- ta ni vech ne pla -- shi, v~nas 
    Duh zhi -- ve -- e svyat; ed -- na -- kvo nas ni 
    rad -- va i toz, i on -- zi svyat. Smart -- svyat.
  }

  \header {
    title = "Към Сион / Kam Sion"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key f \major
    \time 2/4 \tempo "Moderato" 4 = 88
    \autoBeamOff
    a'4 f'8 a' | g'4 e'8 g' | f'2 | bes'4 g'8 bes' | a'4 f'8 a' | g'2 \break | 
    c''4 c'' | d''4. c''8 | bes'8 a' g'4 | bes'4 bes' | c''4. bes'8 | a'8 g' f'4 \break | 
    c'4 c' | a'4. g'8 | a'8 g' f'4 | d'4 d' | bes'4. a'8 | bes'8 a' g'4 \break |
    c''4 c'' | d''4. c''8 | bes'8 a' g'4 | c'4 c' | a'4. g'8 | a'4 g' | f'2 |\break \bar "|."
  }
  
  \addlyrics {
    Слън -- це -- то на Лю -- бов -- та из -- гря -- ва веч във све -- та. 
    Вре -- дом пра -- ща Свет -- ли -- на и раз -- на -- ся Топ -- ли -- на. 
    Ний сме слън -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи -- вот.
    Ний сме слън -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи -- вот.
  }

  \addlyrics {
    Slan -- tse -- to na Lyu -- bov -- ta iz -- grya -- va vech vav sve -- ta. 
    Vre -- dom pra -- shta Svet -- li -- na i raz -- na -- sya Top -- li -- na. 
    Niy sme slan -- che -- vi la -- chi, no -- sim No -- vi -- ya zhi -- vot.
    Niy sme slan -- che -- vi la -- chi, no -- sim No -- vi -- ya zhi -- vot.
  }

  \header {
    title = "Слънцето на Любовта / Slantseto na Lyubovta"
  }

} % score

\markup \halign #-34 {
  \raise #0 \bold  { "D. C." }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \key g \major
    \time 4/4 \tempo "Adagio" 4 = 56
    \autoBeamOff
    b4 e' g' b' | \time 3/4  a'4 g' fis'8. e'16 |fis'2 fis'4 | a'4 g' fis' | \break 
    e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | \break 
    e'2 c''4 | \time 4/4  b'8. a'16 g'8. a'16 b'4. g'8 | \time 3/4  fis'8. a'16 g'4 fis' | e'2 r4 \bar "|."
  }
  
  \addlyrics {
    Ти си про -- я -- ве -- на -- та Лю -- бов към мен, Гос -- по -- 
    ди. Ду -- ша -- та ми коп -- неe за Твой -- та чис -- то -- 
    та. Ду -- ша -- та ми коп -- неe за Твой -- та свет -- ли -- на.
  }

  \addlyrics {
    Ti si pro -- ya -- ve -- na -- ta Lyu -- bov kam men, Gos -- po -- 
    di. Du -- sha -- ta mi kop -- nee za Tvoy -- ta chis -- to -- 
    ta. Du -- sha -- ta mi kop -- nee za Tvoy -- ta svet -- li -- na.
  }


  \header {
    title = "Ти си проявената Любов / Ti si proyavenata Lyubov"
  }

} % score

\markup \halign #-34 {
  \raise #0 \bold  { "D. C." }
}

} % bookpart
\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
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
    \context {
      \Staff
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 88)
           (minimum-distance . 77)
           (padding . 11)
           (stretchability . 100))      
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key d \minor
    \autoBeamOff
    \time 3/4 \tempo "Andante" 4 = 66
    \repeat volta 2 {
      a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 | \break
      g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | \break
      e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 |
    } 
  }
  
  \addlyrics {
    И -- дват дни на Ра -- дост, и -- дват дни на 
    Ра -- дост, и -- дват дни на Ра -- дост 
    за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
  }

  \addlyrics {
    I -- dvat dni na Ra -- dost, i -- dvat dni na 
    Ra -- dost, i -- dvat dni na Ra -- dost 
    za o -- ni -- ya, ko -- i -- to slu -- zhat Bo -- gu.
  }

  \header {
    title = "Идват дни на Радост / Idvat dni na Radost"
  }

} % score
} % bookpart
