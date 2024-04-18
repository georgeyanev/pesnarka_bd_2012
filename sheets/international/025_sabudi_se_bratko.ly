\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces025" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -19.1 )
    \right-brace #37

  }
  \column {
    % repeat numbers


    \translate #'(0 . -19.6 )
    2

  }
}


\bookpart {
  \label #'ref025
  \tocItem \markup "Събуди се братко мили – Săbudi se bratko mili"
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
        \bar ".|:-||"

        \tempoFunc "Più mosso " 2. "60"
        d''2 es''4 | d''2 cis''4| d''2  a'4 | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | \break
        g'2 a'4 | bes'2. | bes'2 a'4 | bes'2 a'4 | bes'2 a'4| \break
        g'2 fis'4 | g'2 a'4 | bes'2 a'4 | g'2 fis'4 |
      }
      \alternative {
        {
          g'2.|
        }   {
          g'2 \bar "|."
        }
      }

    }

    \addlyrics {
      Съ -- бу -- ди -- се, брат -- ко ми -- ли,
      от дъл -- бок сън ти ста -- ни и ве -- ри -- ги -- те ве --
      ков -- ни от но -- зе -- те си сне -- ми.
      Лю -- бов -- та е тво -- я май -- ка, тво -- я си -- ла
      твой пи -- лот: тя ще те из -- пра -- ви
      креп -- ко, тя ще ти да -- ри Жи -- вот. вот.
    }
    \addlyrics {
      Să -- bu -- di -- se, brat -- ko mi -- li,
      ot dăl -- bok săn ti sta -- ni i ve -- ri -- gi -- te ve --
      kov -- ni ot no -- ze -- te si sne -- mi.
      Lju -- bov -- ta e tvo -- ja maj -- ka, tvo -- ja si -- la
      tvoj pi -- lot: tja šte te iz -- pra -- vi
      krep -- ko, tja šte ti da -- ri Ži -- vot. vot.
    }

    \header {
      title = \titleFunc "Събуди се братко мили" "Săbudi se bratko mili"
    }

    \midi{}

  } % score

  \markup \empty-two


  \markup \abs-fontsize #10 {
    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines

    \column {

      \line { 2.  Напусни затвори тъмни, }
      \line {   "   " вън е вредом светлина, }
      \line {   "   " Мир и Радост те очакват }
      \line {   "   " и блажена сетнина. }
      \vspace #0.5
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой учител, }
      \line {   "   " живо Слово да ще ти, }
      \line {   "   " на Добро ще те научи, }
      \line {   "   " в Мъдрост ще те посвети. }

    }
    \"rightBraces025"

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line { 2.  Napusni zatvori tămni, }
      \line {   "   " văn e vredom svetlina, }
      \line {   "   " Mir i Radost te očakvat }
      \line {   "   " i blažena setnina. }
      \vspace #0.5
      \line { "   " \italic {Pripev: } }
      \line { "   "Ljubovta e tvoj učitel, }
      \line {   "   " živo Slovo da šte ti, }
      \line {   "   " na Dobro šte te nauči, }
      \line {   "   " v Mădrost šte te posveti. }

    } %column
    \"rightBraces025"
  } % markup

  \pageBreak

  \markup \abs-fontsize #10 {
    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {


      \line { 3. И на брата си продумай }
      \line {   "   " сладка дума с подтик нов; }
      \line {   "   " ти сърцето му да стоплиш }
      \line {   "   " с твойта искрена любов. }
      \vspace #0.5
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой спасител, }
      \line {   "   " нея в помощ призови: }
      \line {   "   " тя душата ти от гнета }
      \line {   "   " скоро ще освободи. }
    } \"rightBraces025"


    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line { 3. I na brata si produmaj }
      \line {   "   " sladka duma s podtik nov; }
      \line {   "   " ti sărceto mu da stopliš }
      \line {   "   " s tvojta iskrena ljubov. }
      \vspace #0.5
      \line { "   " \italic {Pripev: } }
      \line { "   "Ljubovta e tvoj spasitel, }
      \line {   "   " neja v pomošt prizovi: }
      \line {   "   " tja dušata ti ot gneta }
      \line {   "   " skoro šte osvobodi. }
    } %column
    \"rightBraces025"
  } % markup

  \markup \empty-two

  % include foreign translation(s) of the song
  \include "../../lyrics/de/025_sabudi_se_bratko_lyrics_de.ly"

} % bookpart
