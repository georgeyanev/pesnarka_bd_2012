\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref100
  \tocItem \markup "Всичко в живота е постижимо"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Moderato" 4 "76"
      \autoBeamOff

      \autoBeamOff

      c'4 e'8. f'16 g'4 e' | a'4 g'8. e'16 g'4 g' \break |

      g'4 f'8. e'16 f'4 a' | \time 5/4  g'4 g'8. fis'16 g'2 c''4 | \time 2/4  b'4 a'8 b' \break |

      \time 4/4  c''4 c''2 c''4 \repeat volta 2 {
        g'4 e'8. f'16 g'4 g' | a'4 g'8 ( [e'] ) f'4 d' | \break

        d'4 d'8 e' f'4 a' g'2 e'8 d' e' f' | \time 2/4  g'2 | \break

        \time 5/4  a'4 g' a'8 b' c''2 | \time 4/4  d''8 [( c'' )] b' [( a' )] g'2 \break

        d'8  [( e' )] f' [( e' )] g' [( f' )] e' d'
      } \alternative { { | c'2 r4 c''4 | } {c'2. r4 } } \bar "|."
    }

    \addlyrics {
      Всич -- ко
      "в~жи-" -- во -- та е пос -- ти -- жи -- мо, ко --
      га -- то вре -- ме -- то е "доб-" -- ро и ний сме
      ра -- зум -- ни. За -- що -- то "доб-" -- ро -- то
      е ос -- но -- ва, а ра -- "зум-" -- ност -- "та   –"
      цел, с~ко -- и -- то Ду -- хът гра -- ди бъд --
      ни -- ни, бъд -- ни -- ни, ве -- ли -- ки бъд --
      ни -- ни. За -- ни.
    }

    \header {
      title = \titleFunc #'ref_desc_8 "Всичко в живота е постижимо" "Vsičko v života e postižimo"
    }

    \midi{}

  } % score

  \label #'ref101_1
  \tocItem \markup "Тъги, скърби са богатство"
  \include "include/bookpart-paper.ily"
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
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout


    \new Voice \absolute  {
      \clef treble
      \key g \minor
      \time 2/4
      \tempoFunc "Andantino" 4 "69"
      \autoBeamOff

      d''8 c'' bes' a' | c''8 bes' a' g' | a'8 g' fis' es' \break

      d' c' d'4 | g'2|  \time 5/4 a'4 c''8 bes'8 a' g' a'2 | \break

      g'4  a'8 g' fis'8 es' d'2 | \time 2/4 c'4 d'8 es'8| g'2 | \break

      a'4 g'8 fis' | es'2 |  c'4 d'8 es'8 | g'2 |fis'4 \fermata  es'4 \fermata  | d'2 \fermata  \bar "|."
    }

    \addlyrics {
      Тъ -- ги, скър -- би са бо  --  гат -- ство
      за жи -- во -- та, в~ду -- ша скри -- ти
      за бъд -- ни доб -- ри -- ни,
      за бла -- ги пло -- до -- ве,
      за свет -- ли дни,
      за свет -- ли дни,
      за "свет-" -- ли дни,
      дни, дни, дни.
    }

    \header {
      title = \titleFunc #'ref_desc_13 "Тъги, скърби са богатство" "Tăgi, skărbi sa bogatstvo"
    }

    \midi{}

  } % score

  \markup \dc-one "D.C."

  \label #'ref101_2
  \tocItem \markup "Духът ми шепне това"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute{
      \clef treble
      \key c \minor
      \time 2/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff

      c'8 ( [ d'8 es'8 c'8 ] | es'2 ) | c'8 ( [ d'8 es'8] ) c'8 | \time 3/4  | as'4 ^\fermata g'2 | \time 5/4 \break

      c''4. b'8 c''8 ( [ as'8 ) ] g'2 | \bar ".|:"
      \time 3/4 g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 \break

      es'4 ( d'8. ) es'16 \tempo "      Fine" c'2
      \bar ":|." \time 3/4 | es'8. f'16 g'4 c'4 | \time 4/4 | as'4 g'8. fis'16 g'2 | \time 5/4 \break

      c''4. ( b'8 ) c''8 as'8 g'2 | \time 4/4 | f'8. ( [ g'16 ) ] es'8. d'16 es'2 | es'8. ( [ f'16 ) ] d'8. es'16 c'2 | \time 3/4 \break

      g'8 c''8 es''4. d''8 | c''8 g'8 bes'8 ( [ as'8 ) ] g'8 ( [ f'8 ) ] | \time 4/4 | es'4 ( d'8. ) es'16 c'2  \bar "|."

    }

    \addlyrics {
      Аз __     във __   жи --
      во -- та ще бла -- гу -- вам. Ду
      -- хът и ду -- ша -- та ми __  шеп
      -- нат __  то -- ва. И "Ду-" -- хът
      ми шеп -- не то -- ва, шеп -- не
      то -- ва, шеп -- не то -- ва,
      шеп -- не то -- ва. Ду -- хът и
      ду -- ша -- та ми __  шеп -- нат __
      то -- ва.}

      \header {
        title = \titleFunc #'ref_desc_8 "Духът ми шепне това" "Duhăt mi šepne tova"
      }

      \midi{}

    } % score

    \markup \dc-two "D.C. al Fine" "con ripetizione"
  } % bookpart
