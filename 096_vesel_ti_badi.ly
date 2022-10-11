\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


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

      \bar ".|:"


      \tempoFunc   "            Più mosso" 4 "88"
      c''8 g' e' g' | c' c' c' c' | c'' g' e' g' | c' c' c' c' | \break

      \pageBreak

      e' f' g' g'  | a' g'16([f']) e'([f']) g'8 | a' g' \tempo "rit." a' b' | c''2 | \bar ":|." \time 6/4 \break

      \tempo "      Tempo I" g'4(  \acciaccatura { a'16[g' fis' g']} a'4) g'4 g'8. g'16 g'2 | c''4( \acciaccatura { d''16[ c'' b' c'' ]} d''4) c''4 \tempo "rit." b'8. b'16 c''2 | \bar "|."
    }

    \addlyrics {
      Ве -- сел ти бъ -- "-ди," бо -- дър ти ста -- "-ни;"
      гри  -- жи -- те на жи -- во -- та
      са то -- вар без -- по -- ле -- зен.
      Теб Жи -- во -- тът ми -- ло те зо -- ве:
      Ве  -- сел ти бъ -- "-ди," бо -- дър ти ста -- "-ни"
      и всич -- ко жи -- во ти с~Лю -- бов пов  -- диг -- ни.
      Ве -- сел ти бъ -- "-ди," бо -- дър ти ста -- "-ни!"
      Ве -- сел бъ -- ди, бо -- дър ста -- ни,
      във Жи -- во -- та Ра -- дост но -- си,
      във Жи -- во -- та Ра -- дост но -- си
      във Жи -- во -- та ти.
      Ве -- сел ти бъ -- ди, бо -- дър ти ста -- "-ни!"
    }

    \addlyrics {
      Ve -- sel ti ba -- di, bo -- dar ti sta -- ni;
      gri  -- zhi -- te na zhi -- vo -- ta
      sa to -- var bez -- po -- le -- zen.
      Teb Zhi -- vo -- tat mi -- lo te zo -- ve:
      Ve  -- sel ti ba -- di, bo -- dar ti sta -- ni
      i vsich -- ko zhi -- vo ti s~Lyu -- bov pov  -- dig -- ni.
      Ve -- sel ti ba -- di, bo -- dar ti sta -- ni!
      Ve -- sel ba -- di, bo -- dar sta -- ni,
      vav Zhi -- vo -- ta Ra -- dost no -- si,
      vav Zhi -- vo -- ta Ra -- dost no -- si
      vav Zhi -- vo -- ta ti.
      Ve -- sel ti ba -- di, bo -- dar ti sta -- ni!
    }


    \header {
      title = \titleFunc " Весел ти бъди" "Vesel ti badi"
    }

    \midi{}

  } % score

  %\markup \dc-one "D.C."
  \markup \empty-two


  % include foreign translation(s) of the song
  \include "lyrics_de/096_vesel_ti_badi_lyrics_de.ly"

} % bookpart
