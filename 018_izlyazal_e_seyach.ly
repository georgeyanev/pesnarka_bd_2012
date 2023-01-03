\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -5.6 )
    \right-brace #18

    \translate #'(0 . -12.4 )
    \right-brace #18

    \translate #'(0 . -8 )
    \right-brace #45

    \translate #'(0 . -14.7 )
    \right-brace #18

  }
  \column {
    % repeat numbers
    \translate #'(0 . -6.2 )
    2

    \translate #'(0 . -14.2 )
    2

    \translate #'(0 . -9.8 )
    2

    \translate #'(0 . -19.2 )
    2
  }
}

\bookpart {
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
          a'4 | \stemUp b'2 b'4 | c''2. ( | c''2 s4) | \bar "|." \pageBreak
        }
      }
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
      title = \titleFunc "Излязъл е сеяч" "Izlyazal e seyach"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
      \line { 1. Излязъл е сеяч да сее }
      \line {   "   " прекрасно благо – нов живот. }
      \line {   "   " И сее той, и тихо пее }
      \line {   "   " пред всеки дом и всеки род: }
      \line { " " }
      \line { "   " \italic {Припев: } }
      \line {  "   " Безценен дар е Любовта, }
      \line { "   " красиво чувство – Обичта }
      \line { "   " и благо дело – Милостта, }
      \line {  "   " обилен извор – Мъдростта.}

      \line { " " }
      \line { 2. И който чуе, в миг потръпва }
      \line {   "   " от тоя благ и мил напев; }
      \line {   "   " и просиява, и възкръсва, }
      \line {   "   " и благославя тоз посев. }

      \line { " " }
      \line { "   " \italic {Припев ...} }

      \line { " " }
      \line { 3. Любов Вселената облива, }
      \line {   "   " от обич грее всяка твар; }
      \line {   "   " живот в живота се прелива, }
      \line {   "   " тук няма вече млад и стар. }
      \line { " " }
      \line { "   " \italic {Припев ...} }
    }
    \"rightBraces018"

    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 1. Izlyazal e seyach da see }
      \line {   "   " prekrasno blago – nov zhivot. }
      \line {   "   " I see toy, i tiho pee }
      \line {   "   " pred vseki dom i vseki rod: }
      \line { " " }
      \line { "   " \italic {Refrain: } }
      \line {  "   " Beztsenen dar e Lyubovta, }
      \line { "   " krasivo chuvstvo – Obichta }
      \line { "   " i blago delo – Milostta, }
      \line {  "   " obilen izvor – Madrostta.}

      \line { " " }
      \line { 2. I koyto chue, v mig potrapva }
      \line {   "   " ot toya blag i mil napev; }
      \line {   "   " i prosiyava, i vazkrasva, }
      \line {   "   " i blagoslavya toz posev. }

      \line { " " }
      \line { "   " \italic {Refrain ...} }

      \line { " " }
      \line { 3. Lyubov Vselenata obliva, }
      \line {   "   " ot obich gree vsyaka tvar; }
      \line {   "   " zhivot v zhivota se preliva, }
      \line {   "   " tuk nyama veche mlad i star. }
      \line { " " }
      \line { "   " \italic {Refrain ...} }
    }
    \"rightBraces018"

  }

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/018_izlyazal_e_seyach_lyrics_de.ly"

} % bookpart
