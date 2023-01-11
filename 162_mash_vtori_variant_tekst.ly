\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Moderato " 4 "69"
         c'8 \p <e'
      c'>8   <e'
      c'>8  g8 | % 2
      c'8  <e'
      c'>8  <e'
      c'>8  g8 | % 3
      b8  <d'
      b>8   <d'
      b>8 g8 | % 4
      b8  <d'
      b>8 <d'
      b>8 g8 \break | % 5
      \acciaccatura { g16 ( a16 b16 } c'8 ) <e'
      c'>8<e'
      c'>8 g8 | % 6
      c'8 <e'
      c'>8  <e'
      c'>8  g8 | % 7
      b8 <d'
      b>8<d'
      b>8 g8 | % 8
      b8 ( <d'
      b>8) <d'
      b>8 (g8) \break | % 9
      g8. g16 a8. g16 |
      b8 b4 b8 | % 11
      g8. g16 a8. g16 | % 12
      c'8 c'4 c'8 \break \bar "||"
      \key es \major c'4 g'4 (  | % 14
      g'4 ) g'16 ( f'16 es'16 d'16 ) | % 15
      c'8 es'8 c'8 es'8 | % 16
      c'8 es'8 f'16 ( es'16 d'16 c'16 ) \break | % 17
      bes8 d'8 bes8 d'8 | % 18
      bes8 d'8 es'16 ( d'16 c'16 bes16 ) | % 19
      a8 d'8 a8 d'8 \break |
      a8 d'8 g16 ( a16 bes16 a16 )   | % 21
      g8 g4 g8 \bar "||"
      | % 22
      \key bes \major \time 5/4
      \repeat volta 2 {
        d'8 d'4 d'4 d'8 bes'8 \acciaccatura { a'16 ( bes'16 } a'8 ) g'8
        es'8 \break | % 23
        d'8 d'4 d'4 d'8 bes'8 \acciaccatura { a'16 ( bes'16 } a'8 ) g'8
        es'8  | % 24
        d'8 d'4 d'4 d'8 c'8 d'8 es'8 g'8 \break | % 25
        d'8 d'4 d'4 d'8 c'8 d'8 es'8 g'8 | % 26
        \time 3/4  d'8 d'4 d'4 d'8 | % 27
        g8 a8 bes8 a8 c'8 bes8 |  % 28
      }

      \alternative {
        {
          \acciaccatura { bes16 ( c'16 } bes8 ) a8 a8 g16 a16 bes8 a8
          \break | % 29
          g8 g4 g4 g8     |
        }
        {
          \acciaccatura { bes16 ( c'16 } bes8 ) a8 g16 a16 bes16 a16 g8 g8 | % 31
          g8 g4 g8 g'4 \bar "|."
        }
      }


    }

    \addlyrics { Ду -- хо -- ве на Свет -- ли -- на -- та, стъп -- ват ле -- ко вти -- ши -- на -- та.

      Сли --  зат те в ре -- ди -- ци бе -- ли от ви -- со -- ки -- те пре -- де -- ли.

      Ид  -- ват на Зе -- мя -- та, на хо -- ра -- та сър -- ца -- та.

      И е -- то раж -- дат се и -- де -- и, свет --  ли, но -- ви,

      как да смък -- нем теж -- ки -- те о -- ко -- ви на

      враж -- ди без -- смис -- ле -- ни, ве -- ков -- ни, в мир да за -- жи -- ве -- ем.



      И все -- ки да ра -- бо -- ти с ра -- дост на Бо -- жест -- ве -- на -- та ни -- ва.

      Ще ца -- ру -- ва веч -- на мла -- дост, ня -- ма ни -- кой да у -- ми -- ра.

      В мир, в Лю -- бов ще за -- жи -- ве -- ем

      всич -- ки друж -- но и ще про -- сла -- вим Бо -- га с пе -- сен.


  
      Но -- ви пе -- сни ще за -- пе -- ем – за хар -- мо -- ния все -- мир -- на.

      Нов жи -- вот ще за -- жи -- ве -- ем... Тя -- ло -- то ни ще про -- свет -- не

      и на -- края ще по -- лит -- нем във е -- фи -- ра кат' ду -- хо -- ве на Свет -- ли -- на -- та.}
    \addlyrics {   Du -- ho -- ve na Svet -- li -- na -- ta, stap -- vat le -- ko vti -- shi -- na -- ta.

      Sli --  zat te v re -- di -- tsi be -- li ot vi -- so -- ki -- te pre -- de -- li.

      Id  -- vat na Ze -- mya -- ta, na ho -- ra -- ta sar -- tsa -- ta.

      I eto – razh -- dat se i -- de -- i, svet --  li, no -- vi,

      kak da smak -- nem tezh -- ki -- te o -- ko -- vi na

      vrazh -- di bez -- smis -- le -- ni, ve -- kov -- ni v mir da za -- zhi -- ve -- em.



      I vse -- ki da ra -- bo -- ti s ra -- dost na Bo -- zhest -- ve -- na -- ta ni -- va.

      Shte tsa -- ru -- va vech -- na mla -- dost, nya -- ma ni -- koy da u -- mi -- ra.

      V mir, v Lyu -- bov shte za -- zhi -- ve -- em

      vsich -- ki druzh -- no i shte pro -- sla -- vim Bo -- ga s pe -- sen.



      No -- vi pe -- sni shte za -- pe -- em – za har -- mo -- nia vse -- mir -- na.

      Nov zhi -- vot shte za -- zhi -- ve -- em... Tya -- lo -- to ni shte pro -- svet -- ne

      i na -- kraya shte po -- lit -- nem vav e -- fi -- ra kat' du -- ho -- ve na Svet -- li -- na -- ta.}

    \header {
      title = \titleFunc "Марш на светлите сили II" "Marsh na svetlite sili II"
    }

    \midi{}

  } % score

  \markup \dc-one "D. C. con ripetizioni"
  


  % include foreign translation(s) of the song
  \include "lyrics_de/162_marsch_na_svetlite_sili_lyrics_de.ly"

} % bookpart

% Più mosso
%
