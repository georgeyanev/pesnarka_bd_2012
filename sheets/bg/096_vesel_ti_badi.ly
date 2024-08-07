\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref096
  \tocItem \markup "Весел ти бъди"
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
    #'((basic-distance . 11)
       (minimum-distance . 6)
       (padding . 1)
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
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout


    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 6/4
      \tempoFunc "Andante" 4 "63"

      %\override Score.NoteSpacing.stem-spacing-correction = #-2
      c''4 ( \acciaccatura { d''16 c'' b' c'' } d''4 ) c'' \autoBeamOff a'8. a'16 g'2 |\time 5/4 g'16[( a'8. )] g'4 f'8. e'16 f'2 | \time 4/4 \break

      \tuplet 3/2 {g'8 a' b'} d''8. c''16 b'4 a'4 | g'8. g'16 \tuplet 3/2 {f'8 e'8 d'8 } d'4 c'4\fermata | \time 3/4 \break

      f'8. f'16 e'4 d'8[(a'8)] | \time 5/4 g'4 f' e'8. f'16 g'2 | \time 6/4 \break


      c''4 ( \acciaccatura { d''16[ c'' b' c'' ]} d''4 ) c'' a'8. a'16 g'2 |\time 5/4 g'16[( a'8.)] \autoBeamOff  g'4 f'8.e'16 f'2 | \time 3/4 \break


      \tuplet 3/2 {g'8 a' b'} d''8. c''16 b'8. a'16 | \time 4/4 g'8[(a'8)] \tuplet 3/2 {g'8[(a'8)] b'8} c''2 \breathe | \time 6/4 \break

      \slurUp g'4(  \acciaccatura { a'16[g' fis' g']} a'4)  \slurNeutral g'4 g'8. g'16 g'2 | c''4( \acciaccatura { d''16[ c'' b' c'' ]} d''4) c''4 \tempo "rit." b'8. b'16 c''2 | \time 2/4 \break

      \bar ".|:-||"


      \tempoFunc   "            Più mosso" 4 "88"
      c''8 g' e' g' | c' c' c' c' | c'' g' e' g' | c' c' c' c' | \break

      e' f' g' g'  | a' g'16([f']) e'([f']) g'8 | a' g' \tempo "rit." a' b' | c''2 | \bar ":|." \time 6/4 \break

      \tempo "      Tempo I"
      \once \override Slur.positions = #'(0 . -1.5)
      g'4(  \acciaccatura { a'16[g' fis' g']} a'4) g'4 g'8. g'16 g'2 | c''4( \acciaccatura { d''16[ c'' b' c'' ]} d''4) c''4 \tempo "rit." b'8. b'16 c''2 | \bar "|."
    }

    \addlyrics {
      Ве -- сел ти бъ -- "-ди," бо -- дър ти ста -- "-ни;"
      гри  -- жи -- те на жи -- во -- та
      са то -- вар без -- по -- ле -- зен.
      Теб жи -- во -- тът ми -- ло те зо -- ве:
      Ве  -- сел ти бъ -- "-ди," бо -- дър ти ста -- "-ни"
      и всич -- ко жи -- во ти с~лю -- бов пов  -- диг -- ни.
      Ве -- сел ти бъ -- "-ди," бо -- дър ти ста -- "-ни!"
      Ве -- сел бъ -- ди, бо -- дър ста -- ни,
      във жи -- во -- та ра -- дост но -- си,
      във жи -- во -- та ра -- дост но -- си
      във жи -- во -- та ти.
      Ве -- сел ти "бъ-" -- ди, бо -- дър ти ста -- "-ни!"
    }

    \header {
      title = \titleFunc #'ref_desc_7 "Весел ти бъди" "Vesel ti bădi"
    }

    \midi{}

  } % score

} % bookpart
