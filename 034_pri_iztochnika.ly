\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
   \label #'ref034
  \tocItem \markup "При източника – Pri iztočnika"
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

     \addlyrics {
      Vi -- sok
      pla -- nin -- ski vrăh bles -- ti, __ ob -- ljan s~lă
      -- či ot ne -- be -- sa -- ta. __ Tam čis -- to iz
      -- vor -- če šur -- ti __ i v~himn iz -- li -- va
      si du -- ša -- -- ta, __ du -- ša -- ta, __ du -- ša --
      ta, __ i v~himn iz -- li -- va si du -- ša -- ta. __
    }

    \header {
      title = \titleFunc "При източника" "Pri iztočnika"
    }

    \midi{}

  } % score



  \markup \fontsize #+1.7 {
    \hspace #5
    \override #'(baseline-skip . 1.8)
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
      \line {   "   " покрито с рани, да разкрия?“}
      \line { " " }
      \line { 5.  „Склони, о, пътниче злочест,}
      \line {   "   " глава си морна; утолявай}
      \line {   "   " безмерната си жажда днес}
      \line {   "   " от мен и в мен се ти надявай,}
      \line {   "   "  "   "  "   " надявай, надявай,}
      \line {   "   " от мен и в мен се ти надявай!}




    }

    \hspace #4
    \override #'(baseline-skip . 1.8)
    \column {
      \line { 2. Kăm nego pătnik umoren}
      \line {   "   " usilno se stremi s nadežda.}
      \line {   "   " S dălboka skrăb obremenen,}
      \line {   "   " toj nov život si tam otrežda,}
      \line {   "   "  "   "  "   " otrežda, otrežda,}
      \line {   "   " toj nov život si tam otrežda.}
      \line { " " }
      \line { 3. I pita toj: „Da pijna li}
      \line {   "   " ot tvojata vodica čista, }
      \line {   "   " da osveža očite si,}
      \line {   "   " duša si stradna da očistja,}
      \line {    "   "  "   "  "   " očistja, očistja,}
      \line {   "   " duša si stradna da očistja?}
      \line { " " }
      \line { 4. Da otpočina li; răce,}
      \line {   "   " lice, noze si da izmija}
      \line {   "   " ot toz svetoven prah; sărce,}
      \line {   "   " pokrito s rani, da razkrija,}
      \line {    "   "  "   "  "   " razkrija, razkrija,}
      \line {   "   " pokrito s rani, da razkrija?“}
      \line { " " }
      \line { 5.  „Skloni, o, pătniče zločest,}
      \line {   "   " glava si morna; utoljavaj}
      \line {   "   " bezmernata si žažda dnes}
      \line {   "   " ot men i v men se ti nadjavaj,}
      \line {   "   "  "   "  "   " nadjavaj, nadjavaj,}
      \line {   "   " ot men i v men se ti nadjavaj!}




    } %column
  } % markup

  \pageBreak

  \markup \fontsize #+1.7 {
    \hspace #5
    \override #'(baseline-skip . 1.8)
    \column {

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

    \hspace #4
    \override #'(baseline-skip . 1.8)
    \column {

      \line { 6. Glasa ti măčeniški čuh,}
      \line {   "   " prieh i tvojta žalba mila.}
      \line {   "   " Az săm velik Božestven duh}
      \line {   "   " i šte ti dam život i sila,}
      \line {   "   "  "   "  "   " i sila, i sila,}
      \line {   "   " i šte ti dam život i sila.}
      \line { " " }
      \line { 7. Ela, ela i pij ot men,}
      \line {   "   " o, milo Božie săzdanie!}
      \line {   "   " Nastăpi več posleden den}
      \line {   "   " na vsjaka măka i stradanje,}
      \line {  "   "  "   "  "   " stradanje, stradanje,}
      \line {   "   " na vsjaka măka i stradanje.“}

    } %column
  } % markup


  \markup \empty-two


  % include foreign translation(s) of the song
  \include "lyrics_de/034_pri_iztochnika_lyrics_de.ly"

} % bookpart
