\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.6 )
    \right-brace #18


    \translate #'(0 . -10 )
    \right-brace #45

    \translate #'(0 . -14.9 )
    \right-brace #18



  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.2 )
    2

    \translate #'(0 . -12.2 )
    2

    \translate #'(0 . -18.9 )
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
        { e''2 d''4 | c''2. (| c''4 )  r4 g'4  | \bar "||" \break }
      }

      \repeat volta 2 {
        \tempoFunc "Più mosso" 4 "184"
        \bar ".|:-|" c''2 c''4 | c''4 ( b'4 ) c''4 | d''2 c''4 | b'2. (| b'4 ) r4 b'4 | a'2 a'4 | \break
        a'4 ( g'4 ) a'4 | b'2 a'4 | g'2. ( | g'4 ) r4 a'4 | a'2 a'4 | c''4 ( b'4) a'4 | a'2 e'4 |  \break
      }
      \alternative {
        {  f'2. (|  f'4 )  r4 f'4 | f'2 f'4 | f'4 ( e'4 ) f'4 | g'2 f'4 |e'2. (| e'4 ) r4 g'4   \break }
        {
          f'2. (|  f'4 ) r4 g'4 | g'2 g'4 | a'2
          \override Score.RehearsalMark.outside-staff-priority = #599
          \mark\markup\normalsize\bold { "rit." } % places rit. below alternative bracket
          a'4 | \stemUp b'2 b'4 | c''2. ( | c''2 ) \bar "|." \pageBreak
        }
      }
    }

    \addlyrics {
      Из -- ля -- зъл е се -- яч да се -- е __
      пре -- крас -- но бла -- го нов Жи -- вот. __ И
      се -- е той и ти -- хо пе -- е __ пред все -- ки
      дом и все -- ки род, __  и все -- ки род: __ Без --
      це -- нен дар __ е Лю -- бов -- та, __ кра --  си -- во
      чув -- ство О -- бич -- та __  и бла -- го де -- ло Ми -- лост --
      та, __  о -- би -- лен из -- вор Мъ -- дрост -- та. __ Без --
      та  __  о -- би -- лен из -- вор Мъ -- дрост -- та. __ 
    }

     \addlyrics {
      Iz -- lja -- zăl e se -- jač da se -- e __
      pre -- kras -- no bla -- go nov Ži -- vot. __ I
      se -- e toj i ti -- ho pe -- e __  pred vse -- ki
      dom i vse -- ki rod,  __ i vse -- ki rod: __ Bez --
      ce -- nen dar __ e Lju -- bov -- ta, __ kra --  si -- vo
      čuv -- stvo O -- bič -- ta __  i bla -- go de -- lo Mi -- lost --
      ta,  __ o -- bi -- len iz -- vor Mă -- drost -- ta. __ Bez --
      ta __  o -- bi -- len iz -- vor Mă -- drost -- ta. __ 
    }


    \header {
      title = \titleFunc "Излязъл е сеяч" "Izljazăl e sejač"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {

      \line { 2. И който чуе, в миг потръпва }
      \line {   "   " от тоя благ и мил напев; }
      \line {   "   " и просиява, и възкръсва, }
      \line {   "   " и благославя тоз посев. }
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " Безценен дар е Любовта, }
      \line { "   " красиво чувство – Обичта }
      \line { "   " и благо дело – Милостта, }
      \line {  "   " обилен извор – Мъдростта.}

      \line { " " }
      \line { "   " \italic {Припев ...} }

      \line { " " }
      \line { 3. Любов вселената облива, }
      \line {   "   " от обич грее всяка твар; }
      \line {   "   " живот в живота се прелива, }
      \line {   "   " тук няма вече млад и стар. }
      \line { " " }
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
      \line { " " }
      \line { "   " \italic {Pripev: } }
      \line {  "   " Bezcenen dar e Ljubovta, }
      \line { "   " krasivo čuvstvo – Običta }
      \line { "   " i blago delo – Milostta, }
      \line {  "   " obilen izvor – Mădrostta.}

      \line { " " }
      \line { "   " \italic {Pripev ...} }

      \line { " " }
      \line { 3. Ljubov vselenata obliva, }
      \line {   "   " ot obič gree vsjaka tvar; }
      \line {   "   " život v života se preliva, }
      \line {   "   " tuk njama veče mlad i star. }
      \line { " " }
      \line { "   " \italic {Pripev ...} }
    }
    }
    \"rightBraces018"

  }

  \markup \empty-one

  % include foreign translation(s) of the song
  \include "lyrics_de/018_izlyazal_e_seyach_lyrics_de.ly"

} % bookpart
