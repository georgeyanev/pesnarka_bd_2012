\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref039
  \tocItem \markup " "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato " 4 "69"

      \autoBeamOff


      g'8 \p b b d, | g8 b b d, | fis a a d, | fis a a d, | \break

      g8 b b d, | g8 b b d, |  fis a a d, |  fis a a d, | \break

      d8. d16 e8. d16 | fis8 fis4 fis8 | d8.^\< d16 e8. d16 |  g8 g4  \! g8 |

      \key d \minor  g4^\mf  d'4 (d4) d16 c bes a | g8 bes g bes |\break

      g bes c16 bes a g |  f8 a f a | f a bes16 a g f | e8 a e a | e a d,16 e f e | d8 d4 d8 | \break

      \bar ".|:" \repeat volta 2 {

        \time 5/4 a'8-_^\mf  a4-_ a8-_ (a8-_) a f'8-_ \acciaccatura { e8 ( [f8] } e8-_] ) d-_ bes-_ |

        a8^\p  a (a) a4 a8 f'8 \acciaccatura { e8 ( [f8] } e8] ) d bes | \break

        a8^\mf  a4  a8 (a8) a g a bes d |

        a^\mp  a (a) a4 a8 g8 a8 bes d | \break

        \time 3/4 a8 a4 a8 (a) a | \time 2/4 d,8 e f e |g f f e | \break

        e d16 e f8 e8 |
        \time 3/4
      }

      \alternative {
        { d8 d4 d4 d8}
        { d8 d4 d4 d'8\bar "|." }
      }


    }

    \addlyrics {
      Ду -- хо -- ве на Свет -- ли -- на -- та, стъп -- ват ле -- ко в~ти -- ши -- на -- та.

      Сли --  зат те в~ре -- ди -- ци бе -- ли от ви -- со -- ки -- те пре -- де -- ли.

      Ид  -- ват на Зе -- мя -- та, на хо -- ра -- та в~сър -- ца -- та.

      И е -- то "раж-" -- дат се и -- де -- и, свет --  ли, но -- ви,

      как да "смък-" -- нем теж -- ки -- те о -- ко -- ви на

      "враж-" -- ди без -- смис -- ле -- ни, ве -- ков -- ни, в~мир да за -- жи -- ве -- ем.



      И все -- ки ще ра -- бо -- ти "с~ра-" -- дост на Бо -- жест -- ве -- на -- та ни -- ва,

      Ще ца -- ру -- ва веч -- на "мла-" -- дост, ня -- ма ни -- кой да у -- ми -- ра.

      В~мир, в~Лю -- бов ще за -- жи -- ве -- ем

      всич -- ки друж -- но и ще про -- сла -- вим Бо -- га с~пе -- сен. Свет -- ли -- на -- та.






    }


    \addlyrics {
      Du -- ho -- ve na Svet -- li -- na -- ta, stap -- vat le -- ko v~ti -- shi -- na -- ta.

      Sli --  zat te v~re -- di -- tsi be -- li ot vi -- so -- ki -- te pre -- de -- li.

      Id  -- vat na Ze -- mya -- ta, na ho -- ra -- ta v~sar -- tsa -- ta.

      I e -- to razh -- dat se i -- de -- i, svet --  li, no -- vi,

      kak da "smak-" -- nem tezh -- ki -- te o -- ko -- vi na

      vrazh -- di bez -- smis -- le -- ni, ve -- kov -- ni v~mir da za -- zhi -- ve -- em.



      I vse -- ki ste ra -- bo -- ti s~ra -- dost na Bo -- zhest -- ve -- na -- ta ni -- va.

      Shte tsa -- ru -- va vech -- na mla -- dost, nya -- ma ni -- koy da u -- mi -- ra.

      V~mir, v~Lyu -- bov shte za -- zhi -- ve -- em

      vsich -- ki druzh -- no i shte pro -- sla -- vim Bo -- ga s~pe -- sen. Svet -- li -- na -- ta.



    }


    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      "2.  Но"   -- ви пе -- сни ще за -- пе -- ем, за хар -- мо -- ни -- я "все-" -- "мир-" -- на.

      Нов жи -- вот ще за -- жи -- ве -- ем, тя -- ло -- то ни ще про -- свет -- не

      и на -- кра -- я ще по -- лит -- нем във е -- фи -- ра кат' ду -- хо -- ве на


      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }

    \addlyrics {
      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "    " " " " " " " " " " " " " " " " " " " " " " " " " " " "

      "2.  No"   -- vi pe -- sni shte za -- pe -- em, za har -- mo -- ni -- ya vse -- mir -- na.

      Nov zhi -- vot shte za -- zhi -- ve -- em, tya -- lo -- to ni shte pro -- svet -- ne

      i na -- kra -- ya shte po -- lit -- nem vav e -- fi -- ra kat' du -- ho -- ve na

      " " " " " " " " " " " " " " " " " "

      " " " " " " " " " " " " " " " " " "
    }


    \header {
      title = \titleFunc "Марш на светлите сили II" "Marsh na svetlite sili II"
    }

    \midi{}

  } % score

  \markup \dc-one "D. C. con repitione"

  \markup \empty-two

  % include foreign translation(s) of the song
  \include "lyrics_de/162_marsch_na_svetlite_sili_lyrics_de.ly"

} % bookpart

% Più mosso
%
