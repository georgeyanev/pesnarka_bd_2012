\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref179
  \tocItem \markup "Молитва (Господи, Ти Си) – Molitva (Gospodi, Ti Si) "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key bes \minor
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      \partial 4
      f'8.  f'16 | % 2
      f'2 | % 3
      bes'4  as'4 | % 4
      ges'2 | % 5
      f'2 | % 6
      f'2  | % 7
      c''8  bes'8  as'8  ges'8  | % 8
      \time 3/4  | % 8
      f'4  es'2 | \break  % 9
      \time 2/4  | % 9

      des'16^\markup { \huge \italic {sostenuto} }
      c'16
      ([des'16])  es'16
      f'8  as'8 |
      f'4 ^\markup{\huge \italic {a tempo} }  es'4  | % 11
      \time 3/4  | % 11
      \times 2/3  {
        f'8 ^\markup{\huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'4  as'4 | \break % 12
      f'4  ges'8 ( [  f'8 ) ]  f'4 | % 13
      \times 2/3  {
        f'8 ^\markup{\huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'8.  as'16  ges'8  f'8  | % 14
      f'8 ( [  es'8 ) ]  es'2
      | \break % 15

      \times 2/3  {
        c'8  des'8  es'8
      }
      f'4.  es'8 | % 16
      \time 2/4  | % 16
      des'8  c'8
      des'8  c'8  | % 17
      es'4  des'4 | % 18
      c'4.  a8 | % 19
      es'2 |
      des'2 |  \break % 21
      c'2 | % 22
      bes2 ( | bes4 )
      f'8.  f'16 | % 2
      f'2 | % 3
      bes'4  as'4 | % 4
      ges'2 | % 5
      f'2 | % 6
      f'2  |  % 7
      c''8  bes'8  as'8  ges'8  | \break % 8
      \time 3/4  | % 8
      f'4  es'2 | % 9
      \time 2/4  | % 9

      des'16^\markup { \huge \italic {sostenuto} }
      c'16
      des'16  es'16
      f'8  as'8 |
      f'4 ^\markup{ \huge \italic {a tempo} }  es'4  | % 11
      \time 3/4  | % 11
      \times 2/3  {
        f'8 ^\markup{ \huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'4  as'4 | \break % 12
      f'4  ges'8 ( [  f'8 ) ]  f'4 | % 13
      \times 2/3  {
        f'8 ^\markup{ \huge \italic {sostenuto} }  ges'8
        as'8
      }
      bes'8.  as'16  ges'8  f'8 | % 14
      f'8 es'8 es'2
      | % 15

      \times 2/3  {
        c'8  des'8  es'8
      }
      f'4.  es'8 | % 16
      \time 2/4  | \break  % 16
      des'8 (  [c'8] )
      des'8  c'8  | % 17
      es'4 ( des'4 )| % 18
      c'4.   a8  | % 19
      es'2 |
      des'2 | % 21
      c'2 | % 22
      bes2 ( | bes4 ) \bar "|."

    }

    \addlyrics {
      "1. Гос-" -- по -- ди, Ти Си всич -- ко
      за "ме-" -- не на Зе -- мя -- та. Тук,
      до -- лу, тол -- коз скър --
      би, тъй "всич-" -- ко пус -- то е
      без __  Теб и са -- мо Ти му да
      -- ваш сми -- съл. Ед -- ни -- чък
      Ти ме лю -- биш, зна -- я, са -- мо
      Ти. И аз Теб лю -- бя. __

      "2. Го-" -- спо -- ди, на -- у -- чи ме
      да "лю-" -- бя "всич-" -- ко жи -- во,
      туй, ко -- е -- то Ти съз -- дал Си,
      и да раз -- на -- сям аз на -- вред
      Тво -- я -- та "неж-" -- ност,
      "ра-" -- дост и Лю -- бов.
      Да се на -- у -- ча
      Теб  аз да слу -- жа, да бла -- го --  да -- ря. __
    }

    \addlyrics {
      "1. Gos-" -- po -- di, Ti Si vsič -- ko
      za "me-" -- ne na Ze -- mja -- ta. Tuk,
      do -- lu, tol -- koz skăr --
      bi, tăj "vsič-" -- ko pus -- to e
      bez __  Teb i sa -- mo Ti mu da
      -- vaš smi -- săl. Ed -- ni -- čăk
      Ti me lju -- biš, zna -- ja, sa -- mo
      Ti. I az Teb lju -- bja. __

      "2. Go-" -- spo -- di, na -- u -- či me
      da "lju-" -- bja "vsič-" -- ko ži -- vo,
      tuj, ko -- e -- to Ti săz -- dal Si,
      i da raz -- na -- sjam az na -- vred
      Tvo -- ja -- ta "než-" -- nost,
      "ra-" -- dost i Lju -- bov.
      Da se na -- u -- ča
      Teb  az da slu -- ža, da bla -- go --  da -- rja. __
    }

    \header {
      title = \titleFunc "Молитва" "Molitva"
    }

    \midi{}

  } % score

  \pageBreak

  % include foreign translation(s) of the song
  \include "../../lyrics/de/179_molitva_lyrics_de.ly"
} % bookpart

% Più mosso
%
