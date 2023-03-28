\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref116
  \tocItem \markup "Доще ден – Doste den"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"



    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 3/4
      \tempoFunc "Andante sostenuto" 4 "60"

      \autoBeamOff


      c'8. d'16 es'2 | d'8. b16 c'2 | c'8. d'16 es'2 |  d'8. b16 c'2 \break |

      g'8 as'8 g'8 fis'8 g'8 as'8 | \time 2/4  g'2 | c''4. b'8 | as'8 g'8 f'8 as'8 \break |


      g'2 | \time 3/4  c''4. b'8 c''8

      \tempo \markup {
        % make tempo note smaller
        \concat {
          \normal-text { "       ossia       "  }
          \fontsize #-4 \general-align #Y #DOWN \note {2} #0.8
          \normal-text { "                "  }
          \fontsize #-4 \general-align #Y #DOWN \note {4} #0.8
          "                                   Fine"
        }
      }


      d''8 | \time 4/4  es''2 d''2 | \time 3/4  | c''2. \bar "||" \break |


      \autoBeamOn

      \time 6/4  \tempo \markup {
        % make tempo note smaller
        \concat {
          \normal-text {"По мотиви на Учителя/Nach Motiven von P.Danov"}
        }
      } c'4. ( d'8 es'16 d'16 c'16 b16 c'8 d'8 ) g2 | \time 5/4  g'4 ( \once \override TupletBracket.stencil = ##f
      \times 4/5  {
        fis'16 g'16 as'16 g'16 fis'16
      } g'8. c''16 ) c''4. r16 es'16 -- \break |

      \autoBeamOff
      \time 4/4  \repeat volta 2 {
        es'8. d'16 d'8. c'16 c'4. c'8 | d'4 g8. g16 c'4.. es'16 \break |

        es'8. d'16 d'8. c'16 c'4. c'8 |
      }  \alternative {
        { d'4 g8. g16 c'4.. es'16 | }
        { d'4 g8. g16 c'2 }
      }
      \bar "|."
    }

    \addlyrics {
      До  --  ще
      ден,   до  --  ще   ден,   до  --  ще   ден,   до  --  ще   ден.
      Той   ще   бъ  --  де   све  --  тъл   ден,   той   ще   бъ  --
      де   све  --  тъл   ден,   той   ще   бъ  --  де   све  --  тъл
      ден.   Са  --  ждай,   са  --  ждай!   Гра  --  ди,   гра  --  ди,
      гра  --  ди,   до  --  бре   съ  --  гра  --  ди   и   Ра  --
      дост  --  та   ще   те   до  --  бре   на  --  гра  --  ди.   Гра
      --  бре   на  --  гра  --  ди.
    }
    \addlyrics {
      Do -- shte  den,
      do -- shte  den,  do -- shte  den,  do -- shte  den.  Toy -- shte ba
      -- de sve -- tal  den,  toy shte ba -- de sve -- tal  den,  toy shte
      ba -- de sve -- tal  den.  Sa --  zhday,  sa --  zhday!  Gra --
      di,  gra --  di,  gra --  di,  dob -- re sa -- gra --  di!  I Ra --
      dost -- ta shte te dob -- re na -- gra --  di.  Gra -- bre na -- gra
      --  di.
    }

    \header {
      title = \titleFunc "Доще ден" "Doste den"
    }

    \midi{}
  } % score


  \markup \dc-one "D.C al Fine"

  %

  % include foreign translation(s) of the song


  \include "lyrics_de/116_doste_den_lyrics_de.ly"

} % bookpart
