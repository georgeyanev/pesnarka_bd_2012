\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces025" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -17.5 )
    \right-brace #45

  }
  \column {
    % repeat numbers


    \translate #'(0 . -17.9 )
    2

  }
}


\bookpart {
  \label #'ref025
  \tocItem \markup "Събуди се братко мили"
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
      креп -- ко, тя ще ти да -- ри Жи -- вот. -- вот.
    }

    \header {
      title = \titleFunc "Събуди се братко мили" "Săbudi se bratko mili"
    }

    \midi{}

  } % score

  \markup \fontsize #bgCoupletFontSize {
    \hspace #3.5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line { 2.  Напусни затвори тъмни, }
      \line {   "   " вън е вредом светлина, }
      \line {   "   " Мир и Радост те очакват }
      \line {   "   " и блажена сетнина. }
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line { "   "Любовта е твой учител, }
      \line {   "   " живо Слово да ще ти, }
      \line {   "   " на Добро ще те научи, }
      \line {   "   " в Мъдрост ще те посвети. }

    }
    \"rightBraces025"

    \hspace #4
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

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

    } %column
    \"rightBraces025"
  } % markup


} % bookpart
