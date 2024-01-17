
\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref175_2
  \tocItem \markup "Ме-хейн"

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
       (stretchability . 12))
    markup-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 6)
       (padding . 0)
       (stretchability . 12))
  }
  \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 0.8))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8 ( [g'8])  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      \slurSolid
      es'4

      ( fis'4 )| % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "||" \break


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8 g'8  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      es'4

      (fis'4) | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "|."
    }

    \addlyrics {
      "1. Без" теб е мрак, без теб е скръб. Бо -- "же-" -- ствен лъч,
      о -- грей ме ти. В~сър -- це -- то ми ти вне -- си, в~сър -- це -- то ми вне -- си ра -- дост, мир.
      "2. Про-" -- буж -- дам се от сън дъл -- бок и те зо -- ва  ка -- то  де -- те.
      Аз  ви -- на -- ги  "вяр-" -- вам,  че  ти над  мен  със лю -- бов  бдиш  май -- чи -- на.
    }

    \header {
      title = \titleFunc #'ref_desc_17 "Ме-хейн" "Me-hejn"
    }

    \midi{}

  } % score

  \tocItem \markup "Ме-хейн II"
  \label #'ref175_2_2

  \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 0.8))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff


      \times 2/3  {
        g8  a8 bes8
      }
      a2 | % 2

      \times 2/3  {
        a8  bes8 c'8
      }
      bes2 | % 3

      \times 2/3  {
        bes8  c'8 d'8
      }
      es'2 \break | % 4

      \times 2/3  {
        d'8  e'8 fis'8
      }
      g'2 | % 5
      a'4
      \times 2/3  {
        bes'8  a'8 g'8
      }

      \times 2/3  {
        fis'8  g'8  a'8
      }
      | % 6
      g'4 ^\fermata a'2 \break | % 7

      \times 2/3  {
        bes'8  a'8 g'8
      }
      \slurSolid
      es'4

      fis'4 | % 8
      g'4 -- g'4 -- g'4 -- | % 9
      g'2. \bar "|." \break



    }

    \addlyrics {
      В~дни на бор -- ба, в~дни на пе -- чал да -- леч от теб,
      мой ро -- ден край, аз ви -- на -- ги мис -- ля за теб, 
      аз ви -- на -- ги мис -- ля  мис -- ля за теб.
    }

    \header {
      title = \titleFunc #'ref_desc_17 "Ме-хейн II" "Me-hejn II"
    }

    \midi{}

  } % score







} % bookpart