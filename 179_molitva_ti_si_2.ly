\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref179
  \tocItem \markup "Молитва (Господи, Ти Си) – Molitva (Gospodi, Ti Si) "
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
      bes2 ( | bes4 ) \bar "|."
    }

    \addlyrics {
      "1. Гос" -- по -- ди, Ти си всич -- ко
      за ме -- не на Зе -- мя -- та. Тук
      "до-" -- лу– тол -- коз скър --
      би, тъй "всич-" -- ко пус -- то е
      без  Теб и са -- мо Ти му да
      -- ваш сми -- съл. Ед -- ни -- чък
      Ти ме лю_-биш, зна -- я, са -- мо
      "Ти.        И" аз Теб лю -- бя. __}
      \addlyrics {
        "1. Gos" -- po -- di, Ti si vsič -- ko
        za me -- ne na Ze -- mja -- ta. Tuk
        do -- lu– tol -- koz skăr --
        bi, tăj vsič -- ko pus -- to e
        bez  Teb i sa -- mo Ti mu da
        -- vaš smi -- săl. Ed -- ni -- čăk
        Ti me lju_-biš, zna -- ja, sa -- mo
        "Ti.        I" az Teb lju -- bja. __}

        \addlyrics {

          "2. Го" -- спо -- ди, на -- у -- чи ме
          да лю -- бя "всич-" -- ко жи -- во,
          туй,_ко -- "-е" -- то Ти съз -- дал си,
          и да раз -- на -- сям аз на -- вред
          Тво -- я -- та "неж-" -- ност,
          "Ра-" -- дост и_Лю -- бов.
          Да се на -- у -- ча
          Теб  аз да слу -- жа, да __ бла -- го --  да -- ря. __

        }

        \addlyrics {

          "2. Go" -- spo -- di, na -- u -- či me
          da lju -- bja vsič -- ko ži -- vo,
          tuj,_ko -- e -- to Ti săz -- dal si,
          i da raz -- na -- sjam az na -- vred
          Tvo -- ja -- ta než -- nost,
          "Ra-" -- dost i_Lju -- bov.
          Da se na -- u -- ča
          Teb  az da slu -- ža, da __ bla -- go --  da -- rja. __

        }



        \header {
          title = \titleFunc "Молитва" "Molitva"
        }

        \midi{}

      } % score

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
          \line {   2. Gospodi, nauči me}
          \line {   "   " da ljubja vsičko živo,}
          \line {   "   " tuj, koeto Ti săzdal si,}
          \line {   "   "  i da raznasjam az navred}
          \line {   "   "   Tvojata nežnost,}
          \line {   "   " Radost i Ljubov. }
          \line {   "   "  Da se nauča}
          \line {   "   "  Teb  az da služa, da  blagodarja.}

        } %column
      } % markup
    \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/179_molitva_lyrics_de.ly"
    } % bookpart

    % Più mosso
    %
