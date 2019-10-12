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
    \hspace #1
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
   \hspace #10 {
    
    \column  {
       
     \line { 2. I ptitschki vasduha izpulvat }
      \line {   "   " s vaztorg i sladki pesni v hor, }  
      \line {   "   " Harmonijada da dopulnjat }
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
    ni -- e vi -- ka -- me: blag ZHi -- vot v~nas da vli -- va -- me,
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
      \line { "   "1. Изгрява вече ден тържествен, }
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
\line { " "2. И носи радост за душата, }
\line {   "   " и прогласява свободата}
\line {   "   " и мир с Любов пресвята}
\line {   "   " за всички на Земята. }
\line {   "   " Елате да живеем... }

\line { " " }
       \line { "   " \italic {Припев: } }
       
 \line { " " }
\line {   "   "3.  О, ден прекрасен, вечно благо, }
\line {   "   " кому за тебе не е драго? }
\line {   "   " За всичките години}
\line {   "   " по-скоро обнови ни! }
\line {   "   " Елате да живеем... }

\line { " " }
       \line { "   " \italic {Припев: } }

     
    }
    
   \hspace #10 {
    
    \column  {
       
     \line { "   "1. Izgrjava vetsche den tyrshestven, }
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
\line { " "2. I nosi radost za duschata, }
\line {   "   " i proglasjava svobodata}
\line {   "   " i mir s Ljubov presvjata}
\line {   "   " za vsitschki na Zemjata. }
\line {   "   " Elate da shiveem... }

\line { " " }
       \line { "   " \italic {Refrain: } }
       
 \line { " " }
\line {   "   "3.  O, den prekrasen, vetschno blago, }
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
      \line { 4. Таз велика тайна }
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
      \line { 5. Слънцето, което }
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
      \line { 4. Taz velika taina }
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
      \line { 5. Slyntseto, koeto }
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
    \time 3/4 \tempo "Moderato" 4 = 40
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
    zhen. ZHi -- vot bla -- zhen, ZHi -- vot bla -- zhen,
    bla -- zhen, bla -- zhen, ZHi -- vot bla -- zhen; ti
    no -- sish mi ZHi -- vot bla -- zhen.
  }


  \header {
    title = "Изгрей ти, мое Слънце / Izgrey ti, moe Slantse"
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
           f''4 e'' d'' cis'' | d''4 a'2
        }
        \new Voice = "tempVoice" { % this is a new voice context
          \voiceOne \autoBeamOff
           f''4 e''8 e'' d''4 cis'' | d''4 a'2
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
    az slu -- sham tsyal svyat da shu -- mi! SHu -- myat
    sar -- tsa -- ta che -- lo --  vesh -- ki vsred
    svoy -- te i -- do -- li i gresh -- ki, shu -- myat
    bez -- spir -- no u -- mo -- ve -- te, go -- lyam
    e pri -- liv v~do -- mo -- ve -- te. SHu -- mi,
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

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
