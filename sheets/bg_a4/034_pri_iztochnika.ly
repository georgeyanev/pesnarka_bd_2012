\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref034
  \tocItem \markup "При източника"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute{
      \clef treble
      \key a \minor
      \time 3/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff
      \partial 4

      e'4 | a'2 b'4 | c''2 b'4 | a'2 e''4 | e''2. (| e''2) d''4 | e''2 d''4 | c''2 b'4 \break |
      a'2 gis'4 | b'2. | b'2. (| b'2 ) e'4 | a'2 b'4 | c''2 b'4 | a'2 g'4 | f'2. (| f'2 ) f'4 \break |
      e'2 d'4 | c'2 d'4 | e'2 gis'4 | b'2. | a'2. (| a'2 )a'4 | f'2. | a'2. ( | a'2 ) g'4 \break |
      f'2. | e'2. (|e'2) d'4 e'2 d'4 | c'2 b4 | e'2 gis'4 | b'2. | a'2. ( | a'2 ) \bar "|." \break
    }
    \addlyrics {
      Ви -- сок
      пла -- нин -- ски връх блес -- ти, __ об -- лян с~лъ
      -- чи от не -- бе -- са -- та. __ Там чис -- то из
      -- вор -- че шур -- ти __ и в~химн из -- ли -- ва
      си ду -- ша -- -- та, __ ду -- ша -- та, __ ду -- ша --
      та, __ и в~химн из -- ли -- ва си ду -- ша -- та. __
    }

    \header {
      title = \titleFunc #'ref_desc "При източника" "Pri iztočnika"
    }

    \midi{}

  } % score


  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line { 2. Към него пътник уморен}
      \line {   "   " усилно се стреми с надежда.}
      \line {   "   " С дълбока скръб обременен,}
      \line {   "   " той нов живот си там отрежда,}
      \line {   "   "  "   "  "   " отрежда, отрежда,}
      \line {   "   " той нов живот си там отрежда.}
      \line { " " }
      \line { 3. И пита той: „Да пийна ли}
      \line {   "   " от твоята водица чиста, }
      \line {   "   " да освежа очите си,}
      \line {   "   " душа си страдна да очистя,}
      \line {    "   "  "   "  "   " очистя, очистя,}
      \line {   "   " душа си страдна да очистя?}
      \line { " " }
      \line { 4. Да отпочина ли; ръце,}
      \line {   "   " лице, нозе си да измия}
      \line {   "   " от тоз световен прах; сърце,}
      \line {   "   " покрито с рани, да разкрия,}
      \line {    "   "  "   "  "   " разкрия, разкрия,}
      \line {   "   " покрито с рани, да разкрия“?}



    }

    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 5.  „Склони, о, пътниче злочест,}
      \line {   "   " глава си морна; утолявай}
      \line {   "   " безмерната си жажда днес}
      \line {   "   " от мен и в мен се ти надявай,}
      \line {   "   "  "   "  "   " надявай, надявай,}
      \line {   "   " от мен и в мен се ти надявай!}
      \line { " " }

      \line { 6. Гласа ти мъченишки чух,}
      \line {   "   " приех и твойта жалба мила.}
      \line {   "   " Аз съм велик Божествен дух}
      \line {   "   " и ще ти дам живот и сила,}
      \line {   "   "  "   "  "   " и сила, и сила,}
      \line {   "   " и ще ти дам живот и сила.}
      \line { " " }
      \line { 7. Ела, ела и пий от мен,}
      \line {   "   " о, мило Божие създание!}
      \line {   "   " Настъпи веч последен ден}
      \line {   "   " на всяка мъка и страданье,}
      \line {  "   "  "   "  "   " страданье, страданье,}
      \line {   "   " на всяка мъка и страданье.“}

    }


  } % markup


} % bookpart
