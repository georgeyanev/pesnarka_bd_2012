\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
  \clef treble
  \key a \minor
  \time 3/4 \tempo "Moderato" 4 = 88
  \partial 4
    e'4 |  a'2 b'4 | c''2 b'4 | a'2 e''4 | e''2 \fermata d''4 | e''2 d''4 | c''2 b'4 \break |
    a'2 gis'4 | b'2. | b'2 \fermata e'4 |  a'2 b'4 | c''2 b'4 | a'2 g'4 | f'2 \fermata f'4 \break |
    e'2 d'4 | c'2 d'4 | e'2 gis'4 | b'2. | a'2 \fermata a'4 | f'2. | a'2 g'4 \break |
    f'2. | e'2 d'4 e'2 d'4 | c'2 b4 | e'2 gis'4 | b'2. | a'2.\fermata  | \bar "||" \break
  }
  
  \addlyrics {
    Ви -- сок
    пла -- нин -- ски връх блес -- ти, об -- лян с~лъ
    -- чи от не -- бе -- са -- та. Там чис -- то из
    -- вор -- че шур -- ти и в~химн из -- ли -- ва
    си ду -- ша -- та, ду -- ша -- та, ду -- ша --
    та. И в~химн из -- ли -- ва си ду -- ша -- та.
  }

  \addlyrics {
    Vi -- sok
    pla -- nin -- ski vrah bles -- ti, ob -- lyan s~la
    -- chi ot ne -- be -- sa -- ta. Tam chis -- to iz
    -- vor -- che shur -- ti i v~himn iz -- li -- va
    si du -- sha -- ta, du -- sha -- ta, du -- sha --
    ta. I v~himn iz -- li -- va si du -- sha -- ta.
  }

  \header {
    title = "При източника / Pri iztochnika"
  }

} % score

\markup {
    \hspace #5
    \vspace #5
    \fontsize #+1 {
    \column {
     



\line { 2. Към него пътник уморен}

\line { " "усилно се стреми с надежда.}

\line { " "С дълбока скръб обременен,}

\line { " "той нов живот си там отрежда,}

\line { " "отрежда, отрежда,}

\line { " "той нов живот си там отрежда.}
\line { " " }
\line { 3. И пита той: Да пийна ли}

\line { " "от твоята водица чиста –}

\line { " "да освежа очите си,}

\line { " "душа си страдна да очистя,}

\line { " "очистя, очистя,}

\line { " "душа си страдна да очистя?}
\line { " " }
\line { 4. Да отпочина ли; ръце,}

\line { " "лице, нозе си да измия}

\line { " "от тоз световен прах; сърце,}

\line { " "покрито с рани, да разкрия,}

\line { " "разкрия, разкрия,}

\line { " "покрито с рани, да разкрия?}
 
\line { " " } 
\line { 5. Склони, о, пътниче злочест,}

\line { " "глава си морна; утолявай}

\line { " "безмерната си жажда днес}

\line { " "от мен – и в мен се ти надявай,}

\line { " "надявай, надявай,}

\line { " "от мен и в мен се ти надявай!}
\line { " " }
\line { 6. Гласа ти мъченишки чух,}

\line { " "приех и твойта жалба мила.}

\line { " "Аз съм велик Божествен дух}

\line { " "и ще ти дам живот и сила,}

\line { " "и сила, и сила,}

\line { " "и ще ти дам живот и сила.}
\line { " " }
\line { 7. Ела, ела и пий от мен,}

\line { " "о, мило Божие създание!}

\line { " "Настъпи веч последен ден}

\line { " "на всяка мъка и страданье,}

\line { " "страданье, страданье,}

\line { " "на всяка мъка и страданье.}

    }
    
    \hspace #5 {
    \column  {
      
      
    

\line { " "2. Kam nego patnik umoren}

\line { " "usilno se stremi s nadezhda.}
\line { " "S dalboka skrab obremenen,}

\line { " "toy nov zhivot si tam otrezhda,}

\line { " "otrezhda, otrezhda,}

\line { " "toy nov zhivot si tam otrezhda.}
\line { " " }
\line { " "3. I pita toy: “Da piyna li}

\line { " "ot tvoyata voditsa chista –}

\line { " "da osvezha ochite si,}

\line { " "dusha si stradna da ochistya,}

\line { " "ochistya, ochistya,}

\line { " "dusha si stradna da ochistya?}
\line { " " }
\line { " "4. Da otpochina li; ratse,}

\line { " "litse, noze si da izmiya}

\line { " "ot toz svetoven prah; sartse,}

\line { " "pokrito s rani, da razkriya,}

\line { " "razkriya, razkriya,}

\line { " "pokrito s rani, da razkriya?}
\line { " " }
\line { " "5. Skloni, o, patniche zlochest,}

\line { " "glava si morna; utolyavay}

\line { " "bezmernata si zhazhda dnes}

\line { " "ot men – i v men se ti nadyavay,}

\line { " "nadyavay, nadyavay,}

\line { " "ot men i v men se ti nadyavay!}
\line { " " }
\line { " "6. Glasa ti machenishki chuh,}

\line { " "prieh i tvoyta zhalba mila.}

\line { " "Az sam velik Bozhestven duh}

\line { " "i shte ti dam zhivot i sila,}

\line { " "i sila, i sila,}

\line { " "i shte ti dam zhivot i sila.}
\line { " " }
\line { " "7. Ela, ela i piy ot men,}

\line { " "o, milo Bozhie sazdanie!}

\line { " "Nastapi vech posleden den}

\line { " "na vsyaka maka i stradanye,}

\line { " "stradanye, stradanye,}

\line { " "na vsyaka maka i stradanye.}
      
    }
   
    }
    }

}


} % bookpart