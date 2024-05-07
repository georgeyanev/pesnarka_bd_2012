\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -7.6 )
    \right-brace #18


    \translate #'(0 . -11.3 )
    \right-brace #41

    \translate #'(0 . -16.6 )
    \right-brace #18



  }
  \column {
    % repeat numbers
    \translate #'(0 . -8.2 )
    2

    \translate #'(0 . -13.9 )
    2

    \translate #'(0 . -22.6 )
    2


  }
}

\bookpart {
  \label #'ref018
  \tocItem \markup "Излязъл е сеяч – Izljazăl e sejač"
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
      Из -- ля -- зъл е се -- яч да се -- е __
      пре -- крас -- но бла -- "го  –" нов жи -- вот. __ И
      се -- е той, и ти -- хо пе -- е __ пред все -- ки
      дом и все -- ки род, __  и все -- ки род: __ Без --
      це -- нен дар __ е Лю -- бов -- та, __ кра --  си -- во
      чув -- "ство  –" о -- бич -- та __  и бла -- го де -- "ло  –" ми -- лост --
      та, __  о -- би -- лен из -- "вор  –" Мъд -- рост -- та. __ Без --
      та  __  о -- би -- лен из -- "вор  –" Мъд -- рост -- та. __
    }

    \addlyrics {
      Iz -- lja -- zăl e se -- jač da se -- e __
      pre -- kras -- no bla -- "go  –" nov ži -- vot. __ I
      se -- e toj, i ti -- ho pe -- e __ pred vse -- ki
      dom i vse -- ki rod, __  i vse -- ki rod: __ Bez --
      ce -- nen dar __ e Lju -- bov -- ta, __ kra --  si -- vo
      čuv -- "stvo  –" o -- bič -- ta __  i bla -- go de -- "lo  –" mi -- lost --
      ta, __  o -- bi -- len iz -- "vor  –" Măd -- rost -- ta. __ Bez --
      ta  __  o -- bi -- len iz -- "vor  –" Măd -- rost -- ta. __
    }


    \header {
      title = \titleFunc "Излязъл е сеяч" "Izljazăl e sejač"
    }

    \midi{}

  } % score


  \markup \abs-fontsize #10 {
    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line { 2. И който чуе, в миг потръпва }
      \line {   "   " от тоя благ и мил напев; }
      \line {   "   " и просиява, и възкръсва, }
      \line {   "   " и благославя тоз посев. }
      \vspace #0.5
      \line { "   " \italic {Припев: } }
      \line {  "   " Безценен дар е Любовта, }
      \line { "   " красиво чувство – обичта }
      \line { "   " и благо дело – милостта, }
      \line {  "   " обилен извор – Мъдростта.}

      \vspace #0.5
      \line { "   " \italic {Припев ...} }

      \vspace #0.5
      \line { 3. Любов Вселената облива, }
      \line {   "   " от обич грее всяка твар; }
      \line {   "   " живот в живота се прелива, }
      \line {   "   " тук няма вече млад и стар. }
      \vspace #0.5
      \line { "   " \italic {Припев ...} }
    }
    \"rightBraces018"

    \hspace #3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \column {

        \line { 2. I kojto čue, v mig potrăpva }
        \line {   "   " ot toja blag i mil napev; }
        \line {   "   " i prosijava, i văzkrăsva, }
        \line {   "   " i blagoslavja toz posev. }
        \vspace #0.5
        \line { "   " \italic {Refrain: } }
        \line {  "   " Bezcenen dar e Ljubovta, }
        \line { "   " krasivo čuvstvo – običta }
        \line { "   " i blago delo – milostta, }
        \line {  "   " obilen izvor – Mădrostta.}

        \vspace #0.5
        \line { "   " \italic {Pripev ...} }

        \vspace #0.5
        \line { 3. Ljubov Vselenata obliva, }
        \line {   "   " ot obič gree vsjaka tvar; }
        \line {   "   " život v života se preliva, }
        \line {   "   " tuk njama veče mlad i star. }
        \vspace #0.5
        \line { "   " \italic {Pripev ...} }
      }
    }
    \"rightBraces018"

  }

  \markup \vspace #3

  % include foreign translation(s) of the song
  \include "../../lyrics/de/018_izlyazal_e_seyach_lyrics_de.ly"

} % bookpart
