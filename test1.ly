\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

"rightBraces018" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -12.6 )
    \right-brace #18

    \translate #'(0 . -17.4 )
    \right-brace #18

  
  }
  \column {
    % repeat numbers
    \translate #'(0 . -13.2 )
    2

    \translate #'(0 . -19.2 )
    2


  }
}

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
    
        \key ges \major
  
      \time 4/4
      \tempoFunc "Andante" "4" "56/58"
        \autoBeamOff
      \partial 4
      d'8. es'16 | % 2
      f'2 as'4 ges'8. ( f'16 ) | % 3
      ges'2 f'8. es'16 f'4 \break | % 4
      \time 3/4  es'8. ( d'16 ) es'4 d'8. ces'16 | % 5
      ces'2 d'8. es'16 | % 6
      f'2 es'8. ( d'16 ) \break | % 7
      es'2 d'8. ces'16 | % 8
      ces'4 bes2 | % 9
      \time 2/4  as2 \break |
      \time 8/16  |
      g8 ( as16 ) bes8 ( ces'8. ) | % 11
      d'8. es'8 ~ es'8. | % 12
      f'8 ( es'16 ) d'8 ces'8. | % 13
      d'8 ces'16 d'8 ces'8. \break | % 14
      bes8 ( as16 ) bes8 ~ bes8. | % 15
      ces'8. ( ~ ces'8 bes8. ) | % 16
      as8. ~ as8 ~ as8. | % 17
      g8 as16 bes8 ces'8. \break | % 18
      d'8. es'8 ~ es'8. | % 19
      f'8 es'16 d'8 ces'8. |
      d'8 ces'16 d'8 ces'8. | % 21
      bes8 ( as16 ) bes8 ~ bes8. \break | % 22
      ces'8. ( ~ ces'8 bes8. ) | % 23
      as8. ~ as8 ~ as8. | % 24
      g8 as16 bes8 ces'8. | % 25
      d'8. es'8 ~ es'8. \break | % 26
      f'8 es'16 d'8 ces'8. | % 27
      d'8 ces'16 d'8 ces'8. | % 28
      bes8 ( as16 ) bes8 ~ bes8. \bar "|."
    }
  \addlyrics {
      В_ле -- тен
      ден, в_ран -- ни ри май -- ка ми ти -- се при --
      бли -- жи. Сла -- дък глас бла -- га ду -- ма ми
      ка -- за: „Ста -- вай, дъ -- ще, на ни -- ва
      тряб -- ва да се хо -- ди. Ста -- вай, че ба --
      ща ти вън -- ка мен и те -- бе със ко -- ла --
      та ча -- ка. Ста -- вай, че ба -- ща ти вън --
      ка мен и те -- бе със ко -- ла -- та ча --
      ка.“}
      \addlyrics {
        V_le -- ten
        den, v_ran -- ni ri may -- ka mi ti -- se pri --
        bli -- zhi. Sla -- dak glas bla -- ga du -- ma mi
        ka -- za: „Sta -- vay, da -- shte, na ni -- va
        tryab -- va da se ho -- di. Sta -- vay, che ba --
        shta ti van -- ka men i te -- be sas ko -- la --
        ta cha -- ka. Sta -- vay, che ba -- shta ti van --
        ka men i te -- be sas ko -- la -- ta cha --
        ka.“}
    \header {
      title = \titleFunc "Благословен Господ" "Blagosloven Gospod"
    }

    \midi{}
    


  } % score
  
  
    \pageBreak

 \markup \fontsize #bgCoupletFontSize {
    \hspace #-3
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {
     \line {
             1.  В летен ден, в ранни зори
          }
          \line {
            "   "  майка ми тихо се приближи.
          }
          \line {
            "   "   Сладък глас блага дума
          }
          \line {
            "   "    ми каза:“Ставай дъще,
          }
          \line {
            "   "    на нива трябва да се ходи!
          }
          \line {
            "   "    Ставай, че баща ти вънка
          }
          \line {
            "   "  мен и тебе със колата чака.
          }
          \line {   "   " }
          \line {   2. Слънцето щом изгрей,}
          \line {   "   " ти на нивата трябва да си.}
          \line {   "   " С сърп в ръка, с песен ти}
          \line {   "   " деня срещни. Ставай, дъще,}
          \line {   "   " Слънце дома да не те завари.}
          \line {   "   " Ставай, че моми и момци –}
          \line {   "   " вси към нивата са веч тръгнали.}
          \line {   "   " }
          \line {   3.  Нива е, дъще, животът,}
          \line {   "   " де доброто семе се сей.}
          \line {   "   " Кат израсне, живот внася}
          \line {   "   " то във нас. Ставай, дъще,}
          \line {   "   " Любовта днес мен и тебе чака.}
          \line {   "   " Ставай, тя ни носи}
          \line {   "   " своята нова, жива премяна.}
          \line {   "   "  Ставай, че животът вънка мен}
          \line {   "   "  и тебе с благост вече чака.“}
        }
    
    \"rightBraces018"

    \hspace #7
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {
      \line {
            1.  V leten den, v ranni zori
          }
          \line {
            "   "  mayka mi tiho se priblizhi.
          }
          \line {
            "   "   Sladak glas blaga duma
          }
          \line {
            "   "    mi kaza:“Stavay dashte,
          }
          \line {
            "   "    na niva tryabva da se hodi!
          }
          \line {
            "   "    Stavay, che bashta ti vanka
          }
          \line {
            "   "  men i tebe sas kolata chaka.
          }
          \line {   "   " }
          \line {   2. Slantseto shtom izgrey,}
          \line {   "   " ti na nivata tryabva da si.}
          \line {   "   " S sarp v raka, s pesen ti}
          \line {   "   " denya sreshtni. Stavay, dashte,}
          \line {   "   " Slantse doma da ne te zavari.}
          \line {   "   " Stavay, che momi i momtsi –}
          \line {   "   " vsi kam nivata sa vech tragnali.}
          \line {   "   " }
          \line {   3.  Niva e, dashte, zhivotat,}
          \line {   "   " de dobroto seme se sey.}
          \line {   "   " Kat izrasne, zhivot vnasya}
          \line {   "   " to vav nas. Stavay, dashte,}
          \line {   "   " Lyubovta dnes men i tebe chaka.}
          \line {   "   " Stavay, tya ni nosi}
          \line {   "   " svoyata nova, zhiva premyana.}
          \line {   "   "  Stavay, che zhivotat vanka men}
          \line {   "   "  i tebe s blagost veche chaka.“}
    }
   \"rightBraces018"

  }

   \pageBreak


  % include foreign translation(s) of the song
  \include "lyrics_de/142_stavai_daste_lyrics_de.ly"

} % bookpart
