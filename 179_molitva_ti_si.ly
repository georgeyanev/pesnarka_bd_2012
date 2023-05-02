\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref179
  \tocItem \markup "Молитва (Господи, Ти Си) – Molitva (Господи, Ти, Си) "
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
      f'2 \break | % 7
      c''8  bes'8  as'8  ges'8 | % 8
      \time 3/4  | % 8
      f'4  es'2 | % 9
      \time 2/4  | % 9

      \slurDashed  des'16^\markup { \italic {sostenuto} }  [(  
      c'16 )] \slurSolid 
      des'16  es'16
      f'8  as'8 |
      f'4 ^\markup{ \italic {a tempo} }  es'4 \break | % 11
      \time 3/4  | % 11
      \times 2/3  {
        f'8 ^\markup{ \italic {sostenuto} }  ges'8
        as'8
      }
      bes'4  as'4 | % 12
      f'4  ges'8 ( [  f'8 ) ]  f'4 | % 13
      \times 2/3  {
        f'8 ^\markup{ \italic {sostenuto} }  ges'8
        as'8
      }
      bes'8.  as'16  ges'8  f'8 \break | % 14
      \slurDashed  f'8 ( [ \slurSolid  es'8 ) ]  es'2
      | % 15

      \times 2/3  {
        c'8  des'8  es'8
      }
      f'4.  es'8 | % 16
      \time 2/4  | % 16
      \slurDashed  des'8 (  \slurSolid  c'8 )
      des'8  c'8 \break | % 17
      es'4  des'4 | % 18
      \slurDashed  c'4. ( \slurSolid  a8 ) | % 19
      es'2 |
      des'2 | % 21
      c'2 | % 22
      bes2 ^\fermata \bar "|."
    }

    \addlyrics {
      "1. Гос" -- по -- ди, Ти си всич -- ко
      за ме -- не на Зе -- мя -- та. Тук
      до -- лу– тол -- коз скър --
      би, тъй "всич-" -- ко пус -- то е
      без  Теб и са -- мо Ти му да
      -- ваш сми -- съл. Ед -- ни -- чък
      Ти ме лю_биш, зна -- я, са -- мо
      "Ти.        И" аз Теб лю -- бя.}
      \addlyrics {
        "1. Gos" -- po -- di, Ti si vsich -- ko
        za me -- ne na Ze -- mya -- ta. Tuk
        do -- lu– tol -- koz skar --
        bi, tay "vsich-" -- ko pus -- to e
        bez  Teb i sa -- mo Ti mu da
        -- vash smi -- sal. Ed -- ni -- chak
        Ti me lyu_bish, zna -- ya, sa -- mo
        "Ti.          I" az Teb lyu -- bya.}

        \header {
          title = \titleFunc "Молитва" "Molitva"
        }

        \midi{}

      } % score
      \markup \empty-two
      \markup \fontsize #bgCoupletFontSize {
        \hspace #1
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Господи, научи ме}
          \line {   "   " да любя всичко живо,}
          \line {   "   " туй, което Ти създал си,}
          \line {   "   "  и да разнасям аз навред}
          \line {   "   "   Твоята нежност,}
          \line {   "   " Радост и Любов. }
         \line {   "   "  Да се науча}
          \line {   "   "  Теб  аз да служа, да  благодаря.}
          
        }

        \hspace #5
        \override #`(baseline-skip . ,bgCoupletBaselineSkip)
        \column {
          \line {   2. Gospodi, nauchi me}
          \line {   "   "da lyubya vsichko zhivo,}
          \line {   "   "tuy, koeto Ti sazdal si, }
          \line {   "   "i da raznasyam az na}
          \line {   "   " vred Tvoyata nezhnost,}
          \line {   "   "Radost i Lyubov. Da se naucha}
          \line {   "   " Teb  az da sluzha,}
          \line {   "   "da  blagodarya.}
        } %column
      } % markup

      \pageBreak
      % include foreign translation(s) of the song
      \include "lyrics_de/179_molitva_lyrics_de.ly"
    } % bookpart

    % Più mosso
    %
