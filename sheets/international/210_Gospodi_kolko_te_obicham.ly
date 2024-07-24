\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref210
  \tocItem \markup "Господи, колко Те обичам – Gospodi, kolko Te običam "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato" 4 "80"
      \autoBeamOff
      \partial 4
      d'4^\p^\< ( | % 2
      e'2. ) | % 3
      d'2. ^\! ^\> | % 4
      d'2. | % 5
      d'4 ^\! g'4.. a'16 | % 6
      b'2 a'4 | % 7
      g'4 ( fis'4 ) g'4 | \break  % 8
      r2 d'4 ( ^\mf | % 9
      \time 6/4  | % 9
      d''2 ) ^\<  c''4  d''4 ^\!  b'2
      ^\> |
      \time 4/4  |
      a'4.. ( ^\!  bes'16 ) g'4 f'4 | % 11
      es'4.. ( f'16 ) d'2 | % 12
      \time 3/4  | % 12
      r2 b4 ^\p | % 13
      d'2 ^\< c'4 ^\! \break | % 14
      b2 r4 | % 15
      \once \override Hairpin.to-barline = ##f
      a2 ^\> b4 | % 16
      g2 ^\! r4 \bar "||"
      \time 3/8 \tempoFunc "Allegro" 8 "120" | % 17
      r8 r8 b16 ( [ ^\mp d'16 ) ] | % 18
      \once \override Hairpin.to-barline = ##f
      g'4 ^\< fis'16 ( [ g'16 ) ] | % 19
      b'4 ^\! a'16 ( [ g'16 ) ] |
      \once \override Hairpin.to-barline = ##f
      fis'4 ^\> e'8 \break | % 21
      e'4 ( fis'8 ) | % 22
      d'4. ^\! | % 23
      g'16 ( [ a'16 ) ]
      b'4 | % 24
      \once \omit TupletBracket
      \times 2/3  {
        a'16 ( [ b'16 a'16 ) ]
      }
      d''4 | \once \omit TupletBracket
      \times 2/3  {
        c''16 ( [  d''16  c''16 ) ]
      }
      b'4  | \once \omit TupletBracket
      \times 2/3  {
        a'16 ( [ g'16 fis'16 ) ]
      } g'4 ( ~
      | \break
      g'4 \times 2/3  { a'16 [b'16 c''16] }| % 28
      \time 2/4 d''8 -.   e''8 -.  fis''8 -.
      g''8 -.) | \time 3/8 d''4
      b'16 ( [  c''16 ) ] |
      b'4  a'8 | % 31
      g'8.  fis'16 ( a'32 [ g'32
      fis'32 e'32 ) ] | % 32
      d'4 c'8 \break | % 33
      c'4 ( d'8 ) | % 34
      b4. \bar "||"
      \time 3/4  | % 35
      \tempoFunc "Moderato" 4 "80"
      b4 ^\mf
      d'4 g'4 | % 36
      b'2 (  c''16 [  b'16  a'16
      b'16 ] | % 37
      d''4 )  c''4 a'4 | % 38
      a'2  b'4 | % 39

      g'2 r4 |
      f'2. ^\mp |\break  % 41
      es'2. | % 42
      es'2 f'4 | % 43
      d'2. | % 44
      d'4 ^\p c'4 b4  | % 45
      c'4 ( e'4 ) e'4 | % 46
      d'2 d'4 ^\p ^\< | % 47
      e'2 fis'4 ^\! | \break % 48
      \override Hairpin.to-barline = ##f
      g'2 ^\> d'4 ^\mp ^\!

      ^\<  | % 49
      b'2 ^\! a'4 ^\>  |
      g'2 d'4 ^\! ^\pp  ^\< | % 51
      fis'2  ^\! e'4 ^\> | % 52
      d'2 ^\! r4 | % 53
      d'4 ( e'4 ) ^\fermata d'4
      ^\markup{
        \huge \italic
        {rall.}
      }
      ^\ppp | % 54
      d'2. ~ ^\> | % 55
      d'2 ^\! \bar "|."
    }

    \addlyrics {
      Гос -- по --
      ди, кол -- ко Те лю -- бя! Бо -- же, Гос -- по
      -- ди мой, кол -- ко Те лю -- бя! О -- би -- чам
      Те, Гос -- по -- ди! О -- би -- чам Тво -- и --
      те дръв -- че -- та, о -- би -- чам __ Тво -- и --
      те цве -- тен -- ца, __ о -- би
      -- чам Тво -- и -- те ре -- кич -- ки, о -- би --
      чам Тво -- и -- те  пла -- ни -- "ни      –" всич -- ко,
      Гос -- по -- ди, ко -- е -- то Си __ съз -- дал. О
      -- би -- чам Те, о -- би -- чам Те, о -- би --
      чам Те, Гос -- по -- ди! __}

      \addlyrics {
        Gos -- po --
        di, kol -- ko Te lju -- bja! Bo -- že, Gos -- po
        -- di moj, kol -- ko Te lju -- bja! O -- bi -- čam
        Te, Gos -- po -- di! O -- bi -- čam Tvo -- i --
        te drăv -- če -- ta, o -- bi -- čam __ Tvo -- i --
        te cve -- ten -- ca, __ o -- bi
        -- čam Tvo -- i -- te re -- kič -- ki, o -- bi --
        čam Tvo -- i -- te  pla -- ni -- "ni      –" vsič -- ko,
        Gos -- po -- di, ko -- e -- to Si __ săz -- dal. O
        -- bi -- čam Te, o -- bi -- čam Te, o -- bi --
        čam Te, Gos -- po -- di! __}

        \header {
          title = \titleFunc "Господи, колко Те обичам" "Gospodi, kolko Te običam"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "../../lyrics/de/210_Gospodi_kolko_te_obicham_lyrics_de.ly"
    } % bookpart

    % Più mosso
    %
