\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref104
  \tocItem \markup "Химн на Великата душа – Himn na Velikata duša"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.2\cm
    bottom-margin = 1.0\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 19)
       (minimum-distance . 8)
       (padding . 2)
       (stretchability . 12))
  }

  \header {
    tagline = ##f
  }
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \major
      \time 3/4
      \tempoFunc "Moderato" 4 "72/80"
      \autoBeamOff

      a2 d'4 | e'2 fis'8 [ (e'8) ]| d'2. | e'2 fis'4 | g'2. |

      a'4 g'4 fis'4 | e'2. |   e'2. | \break g'2. | b'4 cis''4 b'4 | b'2. | a'2. |

      fis'2. | a'4 (g'4) e'4 | e'2. |   d'2. (| \break d'4) r4
      \tempoFunc "Più mosso" 4 "88"
      fis'4  \bar "||" a'2 a'4 | b'2 fis'4 |

      a'2. | a'2 a'4 | b'2 b'4 |  b'2 ( cis''4 ) |  a'2. ( | \break a'4 ) r4 a'4 |

      d''2 b'4 | b'2 ( cis''4 ) | a'2. | fis'2 fis'4  |  g'2 e'4 |  e'2 fis'4 |

      d'2.  \bar "||" \break
      \tempoFunc "Ancora più mosso" 4 "96"

      a2 a4 | d'2 ( e'4 ) | fis'2 ( g'4 ) | a'2. (| a'4 ) r4 a'4 |  b'2 a'4 |

      a'2. | fis'2. | \break

      b'2 a'4 | fis'2 g'4 | a'2. | g'2 fis'4 |

      g'2 b'4 |  a'2. |  a'2 a'4 | d''2 b'4 | \break a'2.  | a'2 a'4 |

      d''2 b'4 | b'2 ( cis''4 ) |  a'2 g'4  |  fis'2  fis'4 |
      \tempo "rit." g'2  e'4 | e'2 ( fis'4 ) | \break
      d'2. | \tempo "a tempo" fis'2 fis'4 | fis'2. | fis'4 ( g'4 )  a'4 | b'2 fis'4 |  a'2.
      | % 61
      g'2. (| \break g'4) r4  \tempoFunc "Maestoso" 4 "72" a4 \mark \markup {\small \musicglyph "scripts.segno" }  \bar "||"
      a2  d'4 | % 63
      e'2. | % 64
      e'4 (  fis'4 )  g'4 |  % 65
      fis'2. (|   fis'4) r4  fis'4 |  % 66
      fis'2  g'4 |  % 67
      a'2. | \break % 68
      b'2  g'4 | % 69
      g'2  a'4 |
      fis'2. (| fis'4) r4 b'4 | % 71
      b'2  b'4 | % 72
      d''2.  | % 73
      cis''2  b'4 | % 74
      b'2 (  cis''4 ) |\break % 75
      a'2  g'4 |  % 76
      fis'2 ( \tempo "rit." e'4 )  | % 77
      \tempo "   Fine" d'2. \bar "|."
      | % 78
      \tempo "a tempo" fis'2 g'4 | % 79
      a'2  a'4 |
      a'4 (  b'4 )  a'4 | % 81
      fis'2  g'4 |  % 82
      a'2. | \break % 83
      d''2. | % 84
      cis''2. | % 85
      b'2 (  cis''4 ) | % 86
      b'2.  | % 87
      a'2  fis'4 | % 88
      a'2  g'4 | % 89
      fis'2  e'4 |
      d'2  a4 | \bar"||"
    }

    \addlyrics {
      Гре -- е Слън -- це -- то, свет -- ло е

      на -- вся -- къ -- де,  об -- ви -- та е Зе -- мя -- та със топ -- ла дре -- ха. __

      Съ -- буж -- да всич  --  ко жи -- во,

      те -- че во -- да -- та, __ рас -- те тре -- ва -- та,

      све -- жест лъ -- ха на -- всъ -- де.

      Всич -- ко се __ дви -- жи, __ пъл -- зи и ла -- зи,

      хвър -- кат пти -- ци -- те, бя -- гат сър -- ни -- те,

      ве -- е вя -- тъ -- рът, а чо -- ве -- кът сто -- и

      и мис -- ли що да пра -- ви.

      Чу -- ва се ра -- дост -- на -- та пе -- сен: __

      „Ве -- лик си Ти, Го -- спо -- ди, __

      ве -- ли -- ки са Тво -- и -- те де -- ла, __

      ве -- ли -- ко е И -- ме -- то __ Ти над всич -- ко!

      Ти ца -- риш във си -- ла и жи -- вот,

      във зна -- ни -- е, Мъд -- рост,

      Ис -- ти -- на, Лю -- бов“. "„Ве - "

    }


    \addlyrics {
      Gre -- e Slăn -- ce -- to, svet -- lo e

      na -- vsja -- kă -- de,  ob -- vi -- ta e Ze -- mja -- ta săs top -- la dre -- ha. __

      Să -- buž -- da vsič  --  ko ži -- vo,

      te -- če vo -- da -- ta, __ ras -- te tre -- va -- ta,

      sve -- žest lă -- ha na -- vsă -- de.

      Vsič -- ko se __ dvi -- ži, __ păl -- zi i la -- zi,

      hvăr -- kat pti -- ci -- te, bja -- gat săr -- ni -- te,

      ve -- e vja -- tă -- răt, a čo -- ve -- kăt sto -- i

      i mis -- li što da pra -- vi.

      Ču -- va se ra -- dost -- na -- ta pe -- sen: __

      „Ve -- lik si Ti, Go -- spo -- di, __

      ve -- li -- ki sa Tvo -- i -- te de -- la, __

      ve -- li -- ko e I -- me -- to __ Ti nad vsič -- ko!

      Ti ca -- riš văv si -- la i ži -- vot,

      văv zna -- ni -- e, Măd -- rost,

      Is -- ti -- na, Lju -- bov“. "„Ve - "

    }


    \header {
      title = \titleFunc "Химн на Великата душа" "Himn na Velikata duša"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \dc-one "D.S. al Fine"
  %

  % include foreign translation(s) of the song

  \markup \vspace #3
  \include "../../lyrics/de/104_himn_na_velikata_dusha_lyrics_de.ly"

} % bookpart
