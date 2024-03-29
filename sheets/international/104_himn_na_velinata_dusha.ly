\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
   \label #'ref104
  \tocItem \markup "Химн на великата Душа – Himn na velikata Duša"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72/80"
      \autoBeamOff



      \autoBeamOff
      a2 d'4 | e'2 fis'8 [ (e'8) ]| d'2. | e'2 fis'4 | g'2. | \break

      a'4 g'4 fis'4 | e'2. | e'2. | g'2. | b'4 cis''4 b'4 | b'2. | a'2. | \break

      fis'2. | a'4 (g'4) e'4 | e'2. | d'2 \fermata
      \tempoFunc "Più mosso" 4 "88"
      fis'4  \bar "||" a'2 a'4 | b'2 fis'4 | \break

      a'2. | a'2 a'4 | b'2 b'4 | b'2 ( cis''4 ) | a'2. ( | a'4 ) r4 a'4 | \break

      d''2 b'4 | b'2 ( cis''4 ) | a'2. | fis'2 fis'4  | g'2 e'4 | e'2 fis'4 | \break

      d'2.  \bar "||"
       \tempoFunc "Ancora più mosso" 4 "96"

      a2 a4 | d'2 ( e'4 ) | fis'2 ( g'4 ) | a'2 \fermata a'4 | b'2 a'4 | \break

      a'2. | fis'2. |
     
      b'2 a'4 | fis'2 g'4 | a'2. | g'2 fis'4 | \break

      g'2 b'4 | a'2. | a'2 a'4 | d''2 b'4 | a'2. | a'2 a'4 | \break

      d''2 b'4 | b'2 ( cis''4 ) | a'2 g'4 |fis'2  fis'4 |
      \tempo "rit." g'2  e'4 | e'2 ( fis'4 ) | \break
      d'2. | \tempo "a tempo" fis'2 fis'4 | fis'2. | fis'4 ( g'4 )  a'4 | b'2 fis'4 |a'2.   \break
      | % 61
      g'2 ^\fermata  \tempoFunc "Maestoso" 4 "72" a4 \mark \markup {\small \musicglyph "scripts.segno" }  \bar "||"
      a2  d'4 | % 63
      e'2. | % 64
      e'4 (  fis'4 )  g'4 | % 65
      fis'2 ^\fermata  fis'4 | % 66
      fis'2  g'4 \break | % 67
      a'2. | % 68
      b'2  g'4 | % 69
      g'2  a'4 |
      fis'2 ^\fermata  b'4 | % 71
      b'2  b'4 | % 72
      d''2. \break | % 73
      cis''2  b'4 | % 74
      b'2 (  cis''4 ) | % 75
      a'2  g'4 | % 76
      fis'2 ( \tempo "rit." e'4 )  | % 77
      \tempo "              Fine" d'2. \bar "|."
      \break | % 78
      \tempo "a tempo" fis'2 g'4 | % 79
      a'2  a'4 |
      a'4 (  b'4 )  a'4 | % 81
      fis'2  g'4 \break | % 82
      a'2. | % 83
      d''2. | % 84
      cis''2. | % 85
      b'2 (  cis''4 ) | % 86
      b'2. \break | % 87
      a'2  fis'4 | % 88
      a'2  g'4 | % 89
      fis'2  e'4 |
      d'2  a4 | \bar "||"
    }

    \addlyrics {
      Гре -- е Слън -- це -- то, свет -- ло е

      на -- вся -- къ -- де,  об -- ви -- та е Зе -- мя -- та със то -- пла дре -- ха.

      Съ -- буж -- да всич  --  ко жи -- во,

      те -- че во -- да -- та, __ рас -- те тре -- ва -- та,

      све -- жест лъ -- ха на -- всъ -- де.

      Вси -- чко се __ дви -- жи, пъл -- зи и ла -- зи,

      хвър -- кат пти -- ци -- те, бя -- гат сър -- ни -- те,

      ве -- е вя -- тъ -- рът, а чо -- ве -- кът сто -- и

      и ми -- сли що да пра -- ви.

      Чу -- ва се ра -- дост -- на -- та пе -- сен:

      „Ве -- лик си Ти, Го -- спо -- ди,

      ве -- ли -- ки са Тво -- и -- те де -- ла,

      ве -- ли -- ко е И -- ме -- то __ Ти над всич -- ко!

      Ти ца -- риш във Си -- ла и Жи -- вот,

      във Зна -- ни -- е, Мъд -- рост,

      Ис -- ти -- на, Лю -- бов.“ "„Ве - "

    }
    \addlyrics {
      Gre -- e Slăn -- ce -- to, svet -- lo e

      na -- vsja -- kă -- de,  ob -- vi -- ta e Ze -- mja -- ta săs to -- pla dre -- ha.

      Să -- buž -- da vsič  --  ko ži -- vo,

      te -- če vo -- da -- ta, __ ras -- te tre -- va -- ta,

      sve -- žest lă -- ha na -- vsă -- de.

      Vsi -- čko se __ dvi -- ži, păl -- zi i la -- zi,

      hvăr -- kat pti -- ci -- te, bja -- gat săr -- ni -- te,

      ve -- e vja -- tă -- răt, a čo -- ve -- kăt sto -- i

      i mi -- sli što da pra -- vi.

      Ču -- va se ra -- dost -- na -- ta pe -- sen:

      „Ve -- lik si Ti, Go -- spo -- di,

      ve -- li -- ki sa Tvo -- i -- te de -- la,

      ve -- li -- ko e I -- me -- to __ Ti nad vsič -- ko!

      Ti ca -- riš văv Si -- la i Ži -- vot,

      văv Zna -- ni -- e, Măd -- rost,

      Is -- ti -- na, Lju -- bov.“ "„Ve - "

    }


    \header {
      title = \titleFunc "Химн на великата Душа" "Himn na velikata Dusha"
    }

    \midi{}

  } % score

  \markup \dc-one "D.S. al Fine"
  %

  % include foreign translation(s) of the song

  \pageBreak
  \include "../../lyrics/de/104_himn_na_velikata_dusha_lyrics_de.ly"

} % bookpart
