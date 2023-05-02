\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref182
  \tocItem \markup "Десет теми – Deset temi"
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
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 10))
    
    score-markup-spacing =
    #'((basic-distance . 6)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 6))
  }

  \header {
    tagline = ##f
  }
%%%%

  \score { %1
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"1"}

      \repeat volta 2 {
        d''16 [  d''16  d''8 ]  d''16
        [  d''16  d''8 ] | % 2
        g''8 [  d''8 ]  g''8 [  d''8
        ] | % 3
        b'16 [  b'16  b'8 ]  b'16 [
        b'16  b'8 ] | % 4
        d''8 [  a'8 ]  a'8 [  b'8 ] | % 5
        g'2
      }
      \break 
      \repeat volta 2 {
        | % 6
        d'16 [  d'16  d'8 ]  d'16 [
        d'16  d'8 ] | % 7
        g'8 [  d'8 ]  g'8 [  d'8 ] | % 8
        b16 [  b16  b8 ]  b16 [  b16
        b8 ] | % 9
        d'8 [  a8 ]  d'8 [  a8 ] |
        g2
      }
      | % 11
    }

%    \addlyrics {}
%    \addlyrics {}

    \header {
      title = \titleFunc "Десет теми" "Deset temi  –  Zehn Themen"
    }

    \midi{}

  } % score

  \markup \empty-three

  \score { %2
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 7/16
      
      \tempoFunc "Allegro" 8 "152"
      \autoBeamOff
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"2"}

      g'8 [  c''8 ]  c''8 [  c''16 ] | % 12
      c''8 [  c''8 ]  c''8 [  bes'16
      ] | % 13
      bes'8 [  c''8 ]  as'8 [  g'16 ] | % 14
      as'4 (  as'8. ) | % 15
      f'8 [  g'8 ]  as'8 [  as'16 ] | % 16
      as'8 [  as'8 ]  as'8 [  g'16 ] \break | % 17
      as'8 [  bes'8 ]  g'8 [  f'16 ] | % 18
      g'4 (  g'8. ) \repeat volta 2 {
        | % 19
        c'8 [  d'8 ]  es'8 [  es'16 ] |

        es'8 [  es'8 ]  es'8 [  d'16 ] | % 21
        d'8 [  d'8 ]  d'8 [  c'16 ] | % 22
        c'4 (  c'8. ) |
      }
    }

%    \addlyrics {}
%    \addlyrics {}

    \midi{}

  } % score

  \markup \empty-three

  \score { %3
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"3"}

      bes'2  a'4 | % 24
      g'2  d''4 | % 25
      g''2  es''4 | % 26
      d''2. | % 27
      bes''4  a''4  g''8 [  d''8 ] | % 28
      bes'8 [  a'8 ]  g'8 [  d'8 ]
      bes4 | % 29
      a4  g2 ^\fermata \bar "|."
     |
    }

%    \addlyrics {}
%    \addlyrics {}

    \midi{}

  } % score

  \markup \empty-three

  \score { %4
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"4"}
      \key c \major
      \time 3/4
      \tempoFunc "Moderato" 4 "84"
      \once \omit TupletBracket
      \partial 4
      \times 2/3  {
        c'8 [  e'8  g'8 ]
      } | % 31
      c''8. [  b'16 ]  b'8. [  a'16 ]
      a'8. [  g'16 ] | % 32
      g'2 \once \omit TupletBracket
      \times 2/3  {
        g'8 [  a'8  b'8 ]
      }
      | % 33
      d''8. [  c''16 ]  c''8. [  b'16
      ]  b'8. [  a'16 ] \break | % 34
      a'8. [  g'16 ]  d'4 \once \omit TupletBracket
      \times 2/3  {
        e'8 [  f'8  a'8 ]
      }
      | % 35
      \time 4/4  | % 35
      g'8. [  f'16 ]  e'8 [  f'8 ]  g'2
      ( | % 36
      g'4. )  e'8  g'4 \once \omit TupletBracket
      \times 2/3  {
        f'8 [  e'8  d'8 ]
      }
      | % 37
      a4 \once \omit TupletBracket
      \times 2/3  {
        b8 [  c'8  e'8 ]
      }
      d'2 | % 38
      c'2 r4 s4 \bar "|."
      | % 39
    }

%    \addlyrics {}
%    \addlyrics {}

    \midi{}

  } % score

  \markup \empty-three

  \score { %5
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"5"}
      \key c \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
       c'4  g4 |
      c'4  e'8. [  f'16 ] | % 41
      g'2 | % 42
      a'4  g'4 | % 43
      f'4  e'8. [  f'16 ] | % 44
      g'2 \break | % 45
      a'4  g'4 | % 46
      g'4  a'8. [  b'16 ] | % 47
      c''2 | % 48
      c''4  c''4 | % 49
      c''4  c''8. [  c''16 ] |
      c''2\fermata \bar "|."
     
    }

%    \addlyrics {}
%    \addlyrics {}

    \midi{}

  } % score

  \markup \empty-three

  \score { %6
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"6"}
      \key a \minor
      \time 2/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff
      a4. b8|
      c'8  c'8  b8  a8
      f'2 | % 54
      e'2 \bar "|."
      \break | % 55
    }

    \addlyrics {
      Аз ще па -- зя то -- пли -- на -- та.
    }
    \addlyrics {
      Аz ste -- pa -- zya to -- pli -- na -- ta. 
    }

    \midi{}

  } % score

  \markup \empty-three

  \score { %7
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"7"}
      \key a \major
      \time 2/4
      \tempoFunc "L’istesso tempo" 4 "72"
      \autoBeamOff
      a'4  e'4 | % 56
      cis'4.  d'8
      e'8   e'8   fis'8  gis'8 | % 58
      a'2 \bar "|."
      \break | % 59
    }

    \addlyrics {
      Аз ще па -- зя та -- зи то -- пли -- на.
    }
    \addlyrics {
      Аz ste -- pa -- zya ta -- zi to -- pli -- na. 
    }

    \midi{}

  } % score

  \markup \empty-three
  
  \score { %8
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"8"}
      \key g \minor
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      g''4.fis''16 [g''16 ] |
      a''16 [bes''16a''16g''16
      ]fis''16 [es''16d''16c''16
      ] | % 61
      bes'16 [a'16c''16bes'16 ]
      a'16 [  g'16  fis'16  g'16 ] \break | % 62
      a'16 [  g'16  fis'16  es'16 ]
      d'16 [  c'16  bes16  a16 ] | % 63
      \time 3/4  | % 63
      c'16 [  bes16  a16  g16 ]  d'2
      \break | % 64
      d'4  g'4.  a'8 | % 65
      bes'8 [c''8 ]d''8es''4
      d''8 | % 66
      \time 2/4  | % 66
      d''4.d''8 \break | % 67
      g''4.f''8 | % 68
      es''8 [d''8 ]c''8 [d''8 ]
      | % 69
      bes'4.bes'8 |
      \time 3/4  |
      a'8 [  bes'8 ]c''8 [d''8 ]
      es''8. [d''16 ] \break | % 71
      d''2  d'4 | % 72
      g'4.  a'8  bes'8 [  a'8 ] | % 73
      bes'8 [  a'8 ]  g'8 [  fis'8 ]
      a'8. [  g'16 ] | % 74
      g'2. \bar "|."
      \break | % 75
    }
    \midi{}
  } % score

  \markup \empty-three

  \score { %9
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"9"}
      \key a \minor
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      e''2d''16 [c''16b'16.
      a'32 ] | % 76
      a'8. [  g'16 ]  g'2 | % 77
      f'2  f'8 [  g'16  a'16 ] | % 78
      g'8 [  f'8 ]  e'2 \break | % 79
      a'2b'16 [c''16d''16
      e''16 ] |
      f''8 [g''16f''16 ]e''2 | % 81
      a''2g''16 [f''16e''16
      g''16 ] | % 82
      f''8. [e''16 ]e''2| \break % 83
      d''2d''4 | % 84
      d''8 [e''8 ]d''16 [c''8
      b'16 ]b'4 | % 85
      a'2  a'4 | % 86
      a'8 [  b'8 ]c''8 [c''16
      d''16 ]c''8. [b'16 ] \break | % 87
      b'4.  a'8  a'4 ( | % 88
      a'4 )  g'2 | % 89
      f'2  f'4 |
      f'8 [  a'8 ]  g'4  f'4 | % 91
      e'2. \bar "|."
      \break | % 92
    }
    \midi{}
  } % score

\markup \empty-three

  \score { %10
    \include "include/score-layout-indent.ily"

    \new Voice \absolute {
      \set Staff.instrumentName = \markup \bold \fontsize #+5 {"10"}
      \key g \major
      \time 4/4
      \tempo "Andantino"
      g''2 fis''16 [g''16 a''16 g''16 ] fis''16 [e''16 d''16cis''16 ]  |
      d''4e''8. [d''16 ] d''2
      \break | % 94
      e''2 d''16 [c''16 b'16
      a'16 ] b'16 [c''16 d''16
      c''16 ] | % 95
      \once \omit TupletBracket
      \times 2/3  {
        b'8 [  a'8  b'8 ]
      }
      a'8. [  g'16 ]  g'2 \break | % 96
      e''2 d''16 [e''16 d''16
      e''16 ] d''16 [c''16 b'16
      a'16 ] | % 97
      a'8. [  g'16 ]  g'2. \break | % 98
      g16 [  a16  b16  c'16 ]  d'8. [
      e'16 ]  e'2 | % 99
      \once \omit TupletBracket
      \times 4/5  {
        d'16 [  e'16  d'16  c'16  b16
        ]
      }
      d'2. \break |
      \once \omit TupletBracket
      \times 4/6  {
        c'16 [  d'16  c'16  d'16  c'16
        b16 ]
      }
      a2. | % 101
      \once \omit TupletBracket
      \times 2/3  {
        b8 [  c'8  d'8 ]
      }
      e'8. [  e'16 ]  g'2 \break | % 102
      d'16 [  c'16  b16  a16 ]  b16 [
      c'16  d'16  e'16 ] \once \omit TupletBracket
      \times 2/3  {
        fis'8 [  g'8  a'8 ]
      }
      b'4 ( | % 103
      b'4 ) \once \omit TupletBracket
      \times 4/5  {
        a'16 [  b'16  a'16  g'16
        fis'16 ]
      }
      a'4  g'4 \break | % 104
      g16 [  a16  b16  c'16 ] \once \omit
      TupletBracket
      \times 4/5  {
        d'16 [  e'16  d'16  c'16  b16
        ]
      }
      a4.  g8 | % 105
      g1 \bar "|."
    }
    \midi{}

    \header {
      title = \titleFunc "Музикален момент" "Muzikalen moment  – Musikalischer Moment"
    }

  } % score


  \markup \empty-three
  \include "lyrics_de/182_deset_temi_lyrics_de.ly"
} % bookpart

% Più mosso
%
