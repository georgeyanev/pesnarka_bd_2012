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
      %  ragged-last = ##t % do not spread last line to fill the whole space
      \context {
        \Score
        \omit BarNumber %remove bar numbers
      } % context

      \context {
        % change staff size
        \Staff
        fontSize = #+0 % affects notes size only
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #0.5
        \override BarLine #'hair-thickness = #1
        %\override StaffSymbol #'ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4.5))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
      }
    } % layout

    \new Voice \absolute {
      \clef treble
      \key ges \major
      \time 4/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
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
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Ставай Дъще}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Stavay daste }
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

        \hspace #5
        \override #'(baseline-skip . 2.4)
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
        } %column
      } % markup

      \pageBreak


      % include foreign translation(s) of the song
      \include "lyrics_de/142_stavai_daste_lyrics_de.ly"

    } % bookpart
