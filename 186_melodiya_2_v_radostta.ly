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
      \key des \major
      \time 3/8
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 69)" }
        }
      }
      \autoBeamOff
      des''8. des''16 c''16 des''16
      | % 2
      es''4 des''8 | % 3
      des''8. c''16 c''16 des''16
      | % 4
      c''4 bes'8 \break | % 5
      bes'4  as'8 | % 6
      as'4. | % 7
      es'8.  es'16  f'16  ges'16  | % 8
      bes'8.  as'16  as'16 bes'16 \break | % 9
      as'8.  ges'16  f'16  ges'16 |

      f'8.  es'16  des'16  es'16 | % 11
      des'4. \break | % 12
      as'4  as'8   | % 13
      as'8 [(  g'8 )]  as'8 | % 14
      bes'4  as'8  | % 15
      as'4  as'8 | % 16
      des''4.  | % 17
      des''8 c''8 des''8 \break| % 18
      es''4 des''8 | % 19
      c''8. bes'16  as'16 bes'16 |

      as'4  ges'8  | % 21
      f'8.  es'16  des'16  es'16 | % 22
      des'4. \bar "||"
      es'8  f'8  ges'8 \break | % 24
      as'4 bes'16 c''16 | % 25
      des''4  f'8 | % 26
      as'4  ges'8 | % 27
      ges'4. \break | % 28
      bes4  c'16  des'16   | % 29
      f'4  es'8  |
      des'4  c'8 | % 31
      es'4  des'8 | % 32
      des'4.  \break  | % 33
      as'16  as'16 f''8 f''8 | % 34
      ges''16 f''16 es''16 f''16
      es''16 des''16 \break  | % 35
      as'8 es''8 es''8 | % 36
      es''4.  | % 37
      as'8 es''8 es''8   | % 38
      f''16 es''16 des''16 es''16
      des''16 c''16 \break| % 39
      des''16 c''16 bes'16 c''16
      bes'16  as'16 |
      as'8 des''8 des''8 | % 41
      des''4. \break | % 42
      as'16 des''16 des''16 des''16
      des''16 des''16  | % 43
      as'16 es''16 es''16 es''16
      es''16 es''16 \break | % 44
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 45
      des''4. \break  | % 46
      as'16 des''16 des''16 des''16
      des''16 des''16 | % 47
      as'16 es''16 es''16 es''16
      es''16 es''16 \break | % 48
      f''16 es''16 des''16 c''16
      des''16 es''16 | % 49
      des''4. \bar "|."
    }

    \addlyrics {
      Рад -- ва се Зе -- мя -- та, рад --
      ва се Не -- бе -- то в~Свет -- ли
      -- на. Се -- ме -- то, по -- ся -- то
      в~плод -- на ни -- ва, рас -- не
      свя -- то в~Лю -- бов -- та. Бог
      въз -- раст -- ва Но -- ви -- я
      жи -- вот в~Ра -- дост и Мир и
      ця -- ло -- то Не -- бе пре -- ли --
      ва от Лю -- бов. Е -- то го, гре --
      е де -- нят кра -- сив и свят, и
      Лю -- бов -- та е жи -- ва бла --
      го -- дат. Грей, раз -- пръск -- вай
      Ра -- дост, Мир и О -- бич, свят
      Бо -- жи ден. Все -- благ, все --
      мъ -- дър Бог О -- тец в~ду -- ши
      -- те ми -- лост -- та Си да въз --
      рас -- ти. Да пре -- бъ -- де Ра --
      дост, да пре -- бъ -- де бла --
      гост в~Но -- ви -- я жи -- вот бла
      -- жен. Бо -- жи -- я -- та во -- ля
      да пре -- бъ -- де свя -- та в~то
      -- зи ден бла -- го -- сло -- вен.}
      \addlyrics {
        Rad -- va se Ze -- mya -- ta, rad --
        va se Ne -- be -- to v~Svet -- li
        -- na. Se -- me -- to, po -- sya -- to
        v~plod -- na ni -- va, ras -- ne
        svya -- to v~Lyu -- bov -- ta. Bog
        vaz -- rast -- va No -- vi -- ya
        zhi -- vot v~Ra -- dost i Mir i
        tsya -- lo -- to Ne -- be pre -- li --
        va ot Lyu -- bov. E -- to go, gre --
        e de -- nyat kra -- siv i svyat, i
        Lyu -- bov -- ta e zhi -- va bla --
        go -- dat. Grey, raz -- prask -- vay
        Ra -- dost, Mir i O -- bich, svyat
        Bo -- zhi den. Vse -- blag, vse --
        ma -- dar Bog O -- tets v~du -- shi
        -- te mi -- lost -- ta Si da vaz --
        ras -- ti. Da pre -- ba -- de Ra --
        dost, da pre -- ba -- de bla --
        gost v~No -- vi -- ya zhi -- vot bla
        -- zhen. Bo -- zhi -- ya -- ta vo -- lya
        da pre -- ba -- de svya -- ta v~to
        -- zi den bla -- go -- slo -- ven.}

        \header {
          title = \markup \column \normal-text \fontsize #2.5 {
            \center-align
            \line { Мелодия 2 - Радостта на деня}
            \vspace #-0.6
            \center-align
            \line \fontsize #-3 { Melodiya 2 - Radostta na denya }
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

          \line {   "   " Слънчевото ято}

          \line {   "   " Бога благославя}

          \line {   "   " и зари,}

          \line {   "   " Божията Слава}

          \line {   "   " новия Свещен Живот}

          \line {   "   " да озари.}

          \line {   "   " Целият всемир е светлина}

          \line {   "   " и светлината}

          \line {   "   " извор е на радост,}

          \line {   "   " сила и живот.}
        }

        \hspace #5
        \override #'(baseline-skip . 2.4)
        \column {
     \line {   "   " Slanchevoto yato}

          \line {   "   " Boga blagoslavya}

          \line {   "   " i zari,}

          \line {   "   " Bozhiyata Slava}

          \line {   "   " novia Sveshten Zhivot}

          \line {   "   " da ozari.}

          \line {   "   " Tseliyat vsemir e svetlina}

          \line {   "   " i svetlinata}

          \line {   "   " izvor e na radost,}

          \line {   "   " sila i zhivot.}
        } %column
      } % markup

    \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/186_melodiya_2_radostta_na_denya_lyrics_de.ly"

    } % bookpart
