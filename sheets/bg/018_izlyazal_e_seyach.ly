\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.6 )
    \right-brace #18


    \translate #'(0 . -10 )
    \right-brace #45

    \translate #'(0 . -10.2 )
    \right-brace #18



  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.2 )
    2

    \translate #'(0 . -12.2 )
    2

    \translate #'(0 . -14.3 )
    2
  }
}

\bookpart {
  \label #'ref018
  \tocItem \markup "Излязъл е сеяч"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "144"

      \partial 4 g'4| e''2 d''4| c''2 b'4|d''2 c''4| b'2. (|a'2.) g'2. (| \break

      g'4 ) r4 g'4 | a'2 a'4 | b'2 b'4 | c''2 d''4 | e''2.~ e''4 r4 e'' | \break

      \repeat volta 2 {
        g''2 f''4 | e''2 d''4 | d''2 c''4 | e''2.| d''2. ( |d''4) r4 g'4| a'2 g'4| \break

        c''2 b'4 |
      }
      \alternative {
        {  c''2 d''4| e''2. (| e''4 ) r4  e''4| }
        { e''2 d''4 | c''2. (| c''4 )  r4 g'4  |  \break }
      }

      \repeat volta 2 {
        \tempoFunc "Più mosso" 4 "184"
        \bar ".|:-||" c''2 c''4 | c''4 ( b'4 ) c''4 | d''2 c''4 | b'2. (| b'4 ) r4 b'4 | a'2 a'4 | \break
        a'4 ( g'4 ) a'4 | b'2 a'4 | g'2. ( | g'4 ) r4 a'4 | a'2 a'4 | c''4 ( b'4) a'4 | a'2 e'4 |  \break
      }
      \alternative {
        {  f'2. (|  f'4 )  r4 f'4 | f'2 f'4 | f'4 ( e'4 ) f'4 | g'2 f'4 |e'2. (| e'4 ) r4 g'4   \break }
        {
          f'2. (|  f'4 ) r4 g'4 | g'2 g'4 | a'2
          \override Score.RehearsalMark.outside-staff-priority = #599
          \tempo"rit."  % places rit. below alternative bracket
          a'4 | b'2 b'4 | c''2. ~ | c''2  \bar "|." \pageBreak
        }
      }
    }

    \addlyrics {
      "1. Из" -- ля -- зъл е се -- яч да се -- е __
      пре -- крас -- но бла -- "го  –" нов жи -- вот. __ И
      се -- е той, и ти -- хо пе -- е __ пред все -- ки
      дом и все -- ки род, __  и все -- ки род: __ Без --
      це -- нен дар __ е Лю -- бов -- та, __ кра --  си -- во
      чув -- "ство  –" о -- бич -- та __  и бла -- го де -- "ло  –" ми -- лост --
      та, __  о -- би -- лен из -- "вор  –" Мъд -- рост -- та. __ Без --
      та  __  о -- би -- лен из -- "вор  –" Мъд -- рост -- та. __
    }

    \header {
      title = \titleFunc #'ref_desc_2 "Излязъл е сеяч" "Izljazăl e sejač"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #15
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line { 2. И който чуе, в миг потръпва }
      \line {   "   " от тоя благ и мил напев; }
      \line {   "   " и просиява, и възкръсва, }
      \line {   "   " и благославя тоз посев. }
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " Безценен дар е Любовта, }
      \line { "   " красиво чувство – обичта }
      \line { "   " и благо дело – милостта, }
      \line {  "   " обилен извор – Мъдростта.}

      \line { " " }
      \line { 3. Любов Вселената облива, }
      \line {   "   " от обич грее всяка твар; }
      \line {   "   " живот в живота се прелива, }
      \line {   "   " тук няма вече млад и стар. }
      \line { " " }
      \line { "   " \italic {Припев ...} }
    }
    \"rightBraces018"
  }


} % bookpart
