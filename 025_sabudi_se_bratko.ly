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
