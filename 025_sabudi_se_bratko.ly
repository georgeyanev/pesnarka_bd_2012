\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 5/4
      \tempoFunc "Moderato" 4 "60"
      \autoBeamOff

      \partial 4
      d'8 d'8 | \slurDown g'4(bes'4) \slurNeutral a'4 g'4 fis'4 | \time 3/4 a'4 d'2 | \time 6/4 \break
      d''4 es''4 d''4 cis''4 d''4 es''4 | \time 3/4 d''2 c''8 c''8 | \time 4/4 bes'4 a'4 bes'4 c''4 \break
      d''4 a'2 c''8 c''8 | \time 6/4 bes'4 a'4 g'4 fis'4 g'2 | \time 3/4 \break
      \repeat volta 2 {


        \tempoFunc "Più mosso " 2. "60"
        d''2 es''4 | d''2 cis''4| d''2  a'4 | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | \break
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
      креп -- ко, тя ще ти да -- ри Жи -- вот.
    }
    \addlyrics {
      Sa -- bu -- di -- se, brat -- ko mi -- li,
      ot dal -- bok san ti sta -- ni i ve -- ri -- gi -- te ve --
      kov -- ni ot no -- ze -- te si sne -- mi.
      Lyu -- bov -- ta e tvo -- ya may -- ka, tvo -- ya si -- la
      tvoy pi -- lot: tya shte te iz -- pra -- vi
      krep -- ko, tya shte ti da -- ri zhi -- vot.
    }

    \header {
      title = \titleFunc "Събуди се братко мили" "Sabudi se bratko mili"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 1. Събуди се, братко мили, }
      \line {   "   " от дълбок сън ти стани }
      \line {   "   " и веригите вековни }
      \line {   "   " от нозете си снеми.}
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " Любовта е твоя майка, }
      \line { "   " твоя сила, твой пилот: }
      \line { "   " тя ще те изправи крепко, }
      \line {  "   " тя ще ти дари Живот.}
      \line { " " }
      \line { 2.  Напусни затвори тъмни, }
      \line {   "   " вън е вредом светлина – }
      \line {   "   " Мир и Радост те очакват }
      \line {   "   " и блажена сетнина. }
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой учител, }
      \line {   "   " живо Слово да ще ти, }
      \line {   "   " на Добро ще те научи, }
      \line {   "   " в Мъдрост ще те посвети. }
      \line { " " }
      \line { 3. И на брата си продумай }
      \line {   "   " сладка дума с подтик нов; }
      \line {   "   " ти сърцето му да стоплиш }
      \line {   "   " с твойта искрена любов. }
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой спасител, }
      \line {   "   " нея в помощ призови: }
      \line {   "   " тя душата ти от гнета }
      \line {   "   " скоро ще освободи. }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 1. Sabudi se, bratko mili, }
      \line {   "   " ot dalbok san ti stani }
      \line {   "   " i verigite vekovni }
      \line {   "   " ot nozete si snemi.}
      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line {  "   " Lyubovta e tvoya mayka, }
      \line { "   " tvoya sila, tvoy pilot: }
      \line { "   " tya shte te izpravi krepko, }
      \line {  "   " tya shte ti dari Zhivot.}
      \line { " " }
      \line { 2.  Napusni zatvori tamni, }
      \line {   "   " van e vredom svetlina;}
      \line {   "   " Mir i Radost te ochakvat }
      \line {   "   " i blazhena setnina. }
      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line { "   "Lyubovta e tvoy uchitel, }
      \line {   "   " zhivo Slovo da shte ti, }
      \line {   "   " na Dobro shte te nauchi, }
      \line {   "   " v Madrost shte te posveti. }
      \line { " " }
      \line { 3. I na brata si produmay }
      \line {   "   " sladka duma s podtik nov; }
      \line {   "   " ti sartseto mu da stoplish }
      \line {   "   " s tvoyta iskrena lyubov. }
      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line { "   "Lyubovta e tvoy spasitel, }
      \line {   "   " neya v pomosht prizovi; }
      \line {   "   " tya dushata ti ot gneta }
      \line {   "   " skoro shte osvobodi. }
    } %column
  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/025_sabudi_se_bratko_lyrics_de.ly"

} % bookpart
