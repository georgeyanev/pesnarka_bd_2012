%!!!Ако може нотите да се хванат на една страница.

\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \minor
      \time 2/4
      \tempoFunc "Moderato" "4" "72"
      a8 ( d'8 ) e'8 ( f'8 ) | % 2
      g'2 | % 3
      a'8 ( e'8 ) c'8 ( b8 ) | % 4
      a2 | % 5
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Poco più mosso "
        }
      } 
      
      g'16
      ( a'16 ) f'8 f'16 ( g'16 )
      e'8 | % 6
      e'16 ( f'16 ) d'8 d'16 ( e'16 ) c'8 \break | % 7
      b8. ( c'16 ) d'8 e'8 | % 8
      f'4 e'8. ( dis'16 ) | % 9
       
      e'2 \bar "||"
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Lagramente"
        }
      } a'8.  ( b'16 ) c''8 a'8 | % 11
      e''2 | % 12
      e'8 a'4 ( g'8 ) | % 13
      a'16 ( g'16 f'16 e'16 ) e'4 \break | % 14
      \time 3/4  \repeat volta 2 {
        a8 b8 c'4. ( b8 ) | % 15
        d'8 ( c'8 ) b8 a8 a4 \fermata
      }
      | % 16

      \time 2/4  e'4 \once \override TupletBracket #'stencil = ##f
      \times 2/3  {
        e'8( f'8 e'8 )
      }
      | % 17
      a'4. ( g'8 ) | % 18
      a'16 g'16 f'16 e'16 g'16 f'16 e'16 d'16 \break | % 19
      e'2 |
      d'8 ( e'8 ) f'8 e'8 | % 21
      g'4. f'8 | % 22
      e'8 dis'8 e'4 \fermata | % 23
      a8 b8 c'4 | % 24
      \time 3/4  \once \override TupletBracket #'stencil = ##f
      \times 4/5  {
        c'16 ( d'16 c'16 b16 c'16)
      }
      d'8 e'8 f'8 e'8 | % 25
      e'2 d'8 ( e'16 d'16 ) \break | % 26
      \time 2/4  c'8 b8 a8^\markup{ \bold {rit.} } gis8 | % 27
      a2 \bar "||"
      \time 5/4  | % 28
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Animato"
        }
      }a'16  a'8. e'16 e'8. cis'16 cis'8. a2 | % 29
      a'16 a'8. e'16 e'8. \once \override TupletBracket #'stencil = ##f
      \times 2/3  {
        b8 ( c'8 a8 )
      }
      e'2 \break |
      a'16 a'8. e'16 e'8. \once \override TupletBracket #'stencil = ##f
      \times 2/3  {
        cis'8 ( d'8 b8 )
      }
      cis'4. e'8 | % 31
      a'16 a'8. e'16 e'8. \once \override TupletBracket #'stencil = ##f
      \times 2/3  {
        c'8 d'8 b8
      }
      a2 ( | % 32
      \time 2/4  a4 ) e'4 \bar "||"
      \break | % 33
      \key a \major \time 9/8 | % 33
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Allegretto"
        }
      }
      a'8  -. e'8 -. a'8 -. e'8 -. a'8 -. e'8
      -. e'8 -. e'8 ( -. e'8 ) -. | % 34
      cis'8 -. e'8 -. cis'8 -. e'8 -. cis'8 -. e'8 -. cis'8 -. cis'8 ( -.
      cis'8 ) -. | % 35
      cis'8 -. b8 -. b8 -. cis'8 -. a4 ( a4. ) \break | % 36
      cis'8 -. b8 -. b8 -. b8 -. a4 ( a4. ) | % 37
      \time 5/8  \repeat volta 2 {
        e''4 -- a''8 -- a''8 -- a''8 -- | % 38
        \time 9/8  a''8 gis''8 a''8 b''8 gis''4 gis''8 gis''8 gis''8 | % 39
        gis''8 fis''8 gis''8 a''8 fis''4 fis''8 fis''8 fis''8 \break |
        fis''8 e''8 fis''8 gis''8 e''4 ( e''4. ) | % 41
        \time 5/8  cis''4 e''8 e''8 e''8 | % 42
        \time 9/8  e''8 d''8 e''8 fis''8 d''4 d''8 d''8 d''8 | % 43
        d''8 cis''8 d''8 e''8 cis''4 cis''8 cis''8 cis''8 \break | % 44
        cis''8 b'8 cis''8 d''8 a'4 ( a'4. )
      }
      | % 45
      \key c \major \time 2/4 | % 45
      e'4 \tempo \markup {
        % make tempo note smaller
        \concat {
          "Adagio"
        }
      }
      a'8. ( a'16 ) -- | % 46
      a'2 | % 47
      b'4 e''8. ( e''16 ) -- | % 48
      e''2 | % 49
      f''4 e''8 dis''8 \break |
      e''2 | % 51
      e''4 f''8 e''8 | % 52
      \time 3/4  d''2 c''16 ( b'16 ) c''16 d''16 | % 53
      \time 2/4  e''16 d''16 c''4. | % 54
      d''16 c''16 b'4. | % 55
      c''16 b'16 a'4. | % 56
      a'2 \bar "|."
    }

    \addlyrics {

    }

    \addlyrics {

    }
    \header {
      title = \titleFunc " Песен на детето " "Pesen na deteto"
    }

    \midi{}

  } % score
  %\markup \dc-two "D.C." "con repetitione"

  \pageBreak

  % include foreign translation(s) of the song
  %\include "lyrics_de/020_bratstvo_edinstvo_lyrics_de.ly"

} % bookpart
