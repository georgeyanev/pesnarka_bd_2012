\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref096
  \tocItem \markup "Весел ти бъди"

  \include "include/bookpart-paper.ily"

  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 6/4
      \tempoFunc "Andante" 4 "63"

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
      Ве -- сел ти бъ -- ди, бо -- дър ти ста -- ни;
      гри  -- жи -- те на жи -- во -- та
      са то -- вар без -- по -- ле -- зен.
      Теб жи -- во -- тът ми -- ло те зо -- ве:
      Ве  -- сел ти бъ -- ди, бо -- дър ти ста -- ни
      и всич -- ко жи -- во ти с~лю -- бов пов  -- диг -- ни.
      Ве -- сел ти бъ -- ди, бо -- дър ти ста -- ни!
      Ве -- сел бъ -- ди, бо -- дър ста -- ни,
      във жи -- во -- та ра -- дост но -- си,
      във жи -- во -- та ра -- дост но -- си
      във жи -- во -- та ти.
      Ве -- сел ти бъ -- ди, бо -- дър ти ста -- ни!
    }

    \header {
      title = \titleFunc #'ref_desc_6 "Весел ти бъди" "Vesel ti bădi"
    }

    \midi{}

  } % score

} % bookpart
