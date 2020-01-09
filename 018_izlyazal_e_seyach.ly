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

\pageBreak

\markup {  \hspace #25 \fontsize #3 \bold "Der Sämann ist hinausgegangen"  }

\markup {
    \hspace #1
    \fontsize #+1 {
      
      \halign #-1.5 {
  
  
  
     
    \column {
     \line { " " }
      \line {  1. Der Sämann ist hinausgegangen, }
      \line {   "   " um das wunderbare Gute zu säen: das neue Leben! }  
      \line {   "   " Und er sät und singt leise }
      \line {   "   " vor jedem Haus und jeder Familie: } 

      
      \line { " " }
      \line { "   " \italic { Refrain :}  }
      
      \line {  "  " Eine unschätzbare Gabe ist die Liebe (ljubovta), }
      \line {   "   "ein schönes Gefühl die Liebe (obitschta), }  
      \line {   "   " und ein gutes Werk die Barmherzigkeit, }
      \line {   "   " eine ergiebige Quelle die Weisheit. } 
      
       \line { " " }
      \line {    2. Und wer sie hört, }
      \line {   "   "erschauert vor dieser guten, liebevollen Melodie;  }  
      \line {   "   " und erstrahlt und aufersteht }
      \line {   "   " und segnet diese Saat. } 
       
      
       \line { " " }
    \line { "   " \italic { Refrain } ... }
 
 
       
      \line { " " }
      \line { 3. Die Liebe strömt in das Universum aus, }
      \line {   "   " aus Liebe strahlt jedes Wesen, }  
      \line {   "   " das Leben quillt in das Leben über; }
      \line {   "   " hier gibt es weder Jung noch Alt mehr. } 
      
      \line { " " }
    \line { "   " \italic { Refrain } ... }
      
      \line { " " }
      \line {  4. O, diese Strahlen kommen von Gott, }
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
