\version "2.24.0"

\include "include/globals.ily"

\bookpart {
  \label #'ref117
  \tocItem \markup "Там далече – Tam daleche "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Lento" 4 "56"
      \autoBeamOff
      a'4. b'8 |  c''8 b'8 a'8 gis'8 | a'4 b'4 | e'2 |  f'4 e'8 d'8 \break |


      c'8. b16 c'8 d'8 | e'2 | b4. d'8 | c'4 b4 | e'8 ( d'8 ) c'8 b8 \break |


      a4 gis4 | a2 \bar ".|:"
        | \tempoFunc "Allegretto" 4 "92" | e'4 d'8. f'16 | e'4. d'8 |c'8. b16 c'8. d'16 \break |

        e'2 | e'4 b8. d'16 | c'2 | e'4 d'8. f'16 | e'4. a'8 | d'4. g'8 \break |

        f'4 e'8 d'8 | c'4. b8 | a4. e'8 | a4. d'8 | c'4. b8 \break |

        a4 a8. a16 | a2 \bar ":|.|:"
       | \time 5/4 
        e'8 e'8 a'8 a'8 a'8. g'16 f'4. e'8 \break |

        d'8 d'8 g'8 g'8 g'8. f'16 e'2 | \time 2/4  b8 c'8 e'8 d'8 | c'4. b8 \break |

        a4 a8. a16 | a2 | b8 c'8 e'8 d'8 | c'4. b8 | a4 a8. a16 | a2 \bar ":|."
      }

      \addlyrics { Там   да  --  ле
  --  че   зна  --  я   чу  --  ден   край -- Слън --  це,
   цве  --  тя   и   пло  --  до  --  ве,   бли  --  ка   из  --
   вор,   рай  --  ска   гра  --  ди  --  на   е.   Ти   да   ми   ка
  --  жеш   туй,   ко  --  е  --  то   знайш  --  за   ро  --  ден
   край,   рай  --  ска   зе  --  мя,   где   рос  --  на   виш  --
   на   цъф  --  ти   и   зрей.   За   тоз   кра  --  сив   край
   път   по  --  ка  --  жи.   Къ  --  сай   са  --  мо   плод   у  --
   зрял,   но   без   да   чу  --  пиш   све  --  жи   клон.   И  --
   зо  --  бил  --  но   плод   си   ти   на  --  бе  --  ри   и   на
   всич  --  ки   с~Ра  --  дост   го   за  --  не  --  си. }
      \addlyrics {  Tam da -- le --
  che zna -- ya chu -- den kray -- Slan --  tse,  tsve -- tya i plo -- do
  --  ve,  bli -- ka iz --  vor,  ray -- ska gra -- di -- na  e.  Ti
  da mi ka -- zhesh  tuy,  ko -- e -- to znaysh -- za ro -- den
   kray,  ray -- ska ze --  mya,  gde ros -- na vish -- na tsaf -- ti
  i  zrey.  Za toz kra -- siv kray pat po -- ka --  zhi.  Ka -- say sa
  -- mo plod u --  zryal,  no bez da chu -- pish sve -- zhi  klon.  I
  -- zo -- bil -- no plod si ti na -- be -- ri i na vsich -- ki  s~Ra
  -- dost go za -- ne --  si. }

      \header {
        title = \titleFunc "Там далече" "Tam daleche"
      }

      \midi{}

    } % score

    \pageBreak


    % include foreign translation(s) of the song
    \include "lyrics_de/117_tam_daleche_lyrics_de.ly"

  } % bookpart
