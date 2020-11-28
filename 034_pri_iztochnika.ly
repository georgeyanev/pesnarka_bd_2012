\version "2.20.0"

\paper {
  #(set-paper-size "a5")
}

\bookpart {
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
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  evenFooterMarkup = \markup
    \fill-line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      ""
    }

  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.6\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

  % change lyrics and titles font (affects notes also)
  fonts =
    #(make-pango-font-tree
     "Times New Roman"
     "DejaVu Sans"
     "DejaVu Sans Mono"
     (/ (* staff-height pt) 3.6))

  % change distance between staves
  system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
}

\header {
  tagline = ##f
}

\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    %ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context

    \context { % change staff size
      \Staff
      fontSize = #+0 % affects notes size only
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #0.5
      \override BarLine #'hair-thickness = #1
      %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
    }

    \context { % adjust space between staff and lyrics and between the two lyric lines
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
    }
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
    title = \markup \column \normal-text \fontsize #2.5 {
              \center-align
              \line { При източника }
              \vspace #-0.6
              \center-align
              \line \fontsize #-3 { Pri iztochnika}
              \vspace #-0.8
              \center-align
              \line \fontsize #-3 { " " }
            }
  }
  
  \midi{}

} % score

\pageBreak

\markup \fontsize #+2.5 {
    \hspace #1
    \override #'(baseline-skip . 2.4) % affects space between column lines
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

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
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
    } %column
} % markup

\pageBreak

% include foreign translation(s) of the song
\include "lyrics_de/034_pri_iztochnika_lyrics_de.ly"

} % bookpart


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
