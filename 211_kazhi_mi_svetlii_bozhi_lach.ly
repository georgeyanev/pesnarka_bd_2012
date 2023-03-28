\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref211
  \tocItem \markup "Кажи ми светли Божи лъч II  – Kazhi mi svetli Bozhi lach II "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Moderato" 4 "80"
      \autoBeamOff

      d'4 (  ^\p  ^\<  e'4. )  d'8  ^\! | % 2
      d'2.  ^\> | % 3
      g'2  ^\!  fis'4 | % 4
      fis'2  e'4 | % 5
      e'2 (  ^\<  fis'4 )  ^\! | % 6
      d'2.  ^\> | % 7
      c'2  ^\!  ^\mp  b4 \break | % 8
      c'2  e'4 | % 9
      e'2. |
      d'2. | % 11
      r8  d'8  ^\mf  b4  c'4 | % 12
      d'2 r4 | % 13
      b'2  a'4 | % 14
      g'4 (  fis'4 )  e'4 \break | % 15
      d'2 r8  d'8  ^\p | % 16
      b'2  a'4 | % 17
      g'2 r4 | % 18
      \time 4/4  | % 18
      g'4 ^\markup{ \italic {sostenuto} }  fis'4  e'4
      fis'8  e'8 | % 19
      e'8 ( [  fis'8 ) ]  d'2. \break |

      b'2  ^\markup{ \bold {a tempo} }  a'4  g'4 | % 21
      \once \omit TupletBracket
      \times 2/3  {
        fis'8 ( [  ^\<  g'8  a'8 ) ]
      }
      ^\!  g'2  ^\>  d'4  ^\! | % 22
      e'4  c'4  c'4  b8. ( [  c'16 ) ]
      | % 23
      \time 3/4  | % 23
      d'2 r8  d'8  ^\p \break | % 24
      f'2. | % 25
      es'2    
      \once \override Hairpin.to-barline = ##f
      d'8. ^\<  d'16 | % 26
      \time 4/4  | % 26
      g'4  ^\!  f'4  ^\>  es'4 ^\! es'8. ^\<
      f'16 | % 27
      d'2  ^\!  ^\> r4  ^\!  d'4  ^\mf \break | % 28
      b'4  a'4  g'4 \once \omit TupletBracket
      \times 2/3  {
        fis'8 ( [  g'8  a'8 ) ]
      }
      | % 29
      g'2. r4 \repeat volta 2 {

        \time 3/4  |
        d'4 (  ^\p  ^\<  b'4. )  a'8  ^\! | % 31
        g'2. | % 32
        g'2  ^\>  d'4 \break | % 33
        fis'2  e'4 | % 34
        e'2 (  fis'4 ) | % 35
        d'2.  ^\! | % 36
        c'2  ^\mp  ^\<  b4 | % 37
        c'2  e'4  ^\! | % 38
        e'2.  ^\> \pageBreak | % 39
        d'2. |
        d'2  ^\!  ^\<  d'4 | % 41
        e'2  ^\! ^\markup \italic { "cresc." }  d'4 | % 42
        \once \omit TupletBracket
        \times 2/3  {
          c'8 ( [  b8 ^\markup{ \italic {ten.} }
          c'8 ) ]
        }
        d'2 | % 43
        e'4  e'4  fis'4  ^\< | % 44
        g'4  a'4  b'4  ^\!  | % 45
        d''2 ( ^\fermata  ^\mf  c''4 )  ^\> | % 46
        b'2. | % 47
        a'4 --  g'4 --  d'4 -- | % 48
        fis'4 (  e'4 )  c'4  ^\! | % 49
        a2 (  b4 ) |
        g2.
      }
    }

    \addlyrics {
      Гос -- по -- ди, Ти жи -- ве --
      еш в~ме -- не, Ти жи -- ве --
      еш в~ме -- не. Ка -- жи ми ти,
      свет -- ли Бо -- жи лъч, ка --
      жи ми ти бла -- го -- то на Жи --
      во -- та, свет -- ли -- я прав
      път на чис -- ти -- те ду
      -- ши, из -- ми -- ти във во --
      ди -- те на Лю -- бов -- та, на
      чис -- та -- та Лю --  бов.
      Гос -- по -- ди, Ти жи -- ве --
      еш в~ме -- не, Ти жи -- ве --
      еш в~ме -- не. Не -- ка Тво -- ят
      благ   глас и ми -- лост --
      та Ти, о, Бо -- же, се из -- я
      -- вят  чрез ме -- не.}
      \addlyrics {
        Gos -- po -- di, Ti zhi -- ve --
        esh v~me -- ne, Ti zhi -- ve --
        esh v~me -- ne. Ka -- zhi mi ti,
        svet -- li Bo -- zhi lach, ka --
        zhi mi ti bla -- go -- to na Zhi --
        vo -- ta, svet -- li -- ya prav
        pat na chis -- ti -- te du
        -- shi, iz -- mi -- ti vav vo --
        di -- te na Lyu -- bov -- ta, na
        chis -- ta -- ta Lyu --  bov.
        Gos -- po -- di, Ti zhi -- ve --
        esh v~me -- ne, Ti zhi -- ve --
        esh v~me -- ne. Ne -- ka Tvo -- yat
        blag   glas i mi -- lost --
        ta Ti, o, Bo -- zhe, se iz -- ya
        -- vyat  chrez me -- ne.}


        \header {
          title = \titleFunc "Кажи ми светли Божи лъч II  " "Kazhi mi svetli Bozhi lach II"
        }

        \midi{}

      } % score
      
      \markup \empty-one

      % include foreign translation(s) of the song
      \include "lyrics_de/211_kazhi_mi_svetlii_bozhi_lach.ly"

    } % bookpart

    % Più mosso
    %
