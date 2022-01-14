\version "2.22.0"

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

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Tempo di marcia " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note {4} #0.8
          \normal-text { " = 100)" }
        }
      }
      \autoBeamOff
      \partial 4

      f'8 a'8 | c''4 c''8. d''16 |  c''4 f'8 g'8 | a'4 a'8. a'16 | a'4 g'8 a'8  \break

      bes'4 bes'8. bes'16 | bes'4 a'8 bes'8 | d''4 c''8. b'16 | c''2 (| c''4) a'8 bes'8 | \break

      c''4 c''8. d''16 | c''4 f'8 g'8 | a'4 a'8. a'16 | g'4 c''8 c''8 | b'4 c''8 d''8| \break


      e''4 e''8 d''8 | c''8 b'8 c''4 (| c''4) a'8. bes'16 | \repeat volta 2 {
        c''2 (| c''8) c''8 d''8 bes'8  |\break

        g'2 (| g'4 ) g'8. a'16| bes'2 ( |  bes'8 ) bes'8 c''8 g'8|   a'2 ( | \break

        a'4 ) a'8. bes'16| c''2 ( | c''8 ) c''8 f''8 e''8 | d''2 (|d''4 ) e''4 \break

        f''8 c''8 d''8 bes'8 | a'4 g'4 |
      } \alternative { { f'2 ( | f'8 ) r8 a'8. bes'16 | } { f'2 (| f' 8 ) r8 \bar "|." \break } }

    }

    \addlyrics {
      Вре -- ме е да вър -- вим, зло -- то да по -- бе -- дим, Мир -- ра
      да въ -- дво -- рим, Хри -- ста да въз -- ца -- рим!  Прав -- да
      ще въ -- ве -- дем, Сво -- бо -- да ще да -- дем и през всич -- ки -- те
      дни вер -- ни ще сме ний. Да ца -- ру -- ва Лю -- бов -- та!
      Да ца -- ру -- ва Бла -- гост -- та!
      Бог е ца -- рят на све -- та, Той в~пъ -- тя ни е Све -- ли -- на. Да ца -- на.
    }
    \addlyrics {
      Vre -- me e da var -- vim, zlo -- to da po -- be -- dim, Mir -- ra
      da va -- dvo -- rim, Hri -- sta da vaz -- tsa -- rim!  Prav -- da
      shte va -- ve -- dem, Svo -- bo -- da shte da -- dem i prez vsich -- ki -- te
      dni ver -- ni shte sme niy. Da tsa -- ru -- va Lyu -- bov -- ta!
      Da tsa -- ru -- va Bla -- gost -- ta!
      Bog e tsa -- ryat na sve -- ta, Toy v~pa -- tya ni e Sve -- li -- na. Da tsa -- na.
    }

    \header {
      title = \markup \column \normal-text \fontsize #2.5 {
        \center-align
        \line { Време е да вървим }
        \vspace #-0.6
        \center-align
        \line \fontsize #-3 { Vreme e da varvim }
        \vspace #-0.8
        \center-align
        \line \fontsize #-3 { " " }
      }
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #+2.5 {
    \hspace #6
    \override #'(baseline-skip . 2.4) % affects space between column lines
    \column {


      \line { 1. Време е да вървим, }
      \line {   "   " злото да победим, }
      \line {   "   " Мира да въдворим, }
      \line {   "   " Христа да възцарим! }
      \line {   "   " Правда ще въведем, }
      \line {   "   " Свобода ще дадем, }
      \line {   "   " и през всичките дни }
      \line {   "   " верни ще сме ний. }

      \line { " " }
      \line { "   " \italic {Припев:} }
      \line {  "   " Да царува Любовта! }
      \line {   "   " Да царува Благостта! }
      \line {   "   " Бог е царят на света, }
      \line {   "   " Той в пътя ни е Светлина. }

      \line { " " }
      \line { 2. Бързо да полетим, }
      \line {   "   " мощно да възтръбим, }
      \line {   "   " Радост да възвестим,  }
      \line {   "   " Вяра да съживим! }
      \line {  "   " Ще огрей пак света }
      \line {   "   " в първата красота, }
      \line {   "   " Свобода, Мир и ред  }
      \line {   "   " ще владеят вред. }
      \line { " " }
      \line { "   " \italic {Припев ... } }
    }

    \hspace #5
    \override #'(baseline-skip . 2.4)
    \column {
      \line { 1. Vreme e da varvim, }
      \line {   "   " zloto da pobedim, }
      \line {   "   " Mira da vadvorim, }
      \line {   "   " Hrista da vaztsarim! }
      \line {   "   " Pravda shte vavedem, }
      \line {   "   " Svoboda shte dadem, }
      \line {   "   " i prez vsichkite dni }
      \line {   "   " verni shte sme niy. }

      \line { " " }
      \line { "   " \italic {Refrain:} }
      \line {  "   " Da tsaruva Lyubovta! }
      \line {   "   " Da tsaruva Blagostta! }
      \line {   "   " Bog e tsaryat na sveta, }
      \line {   "   " Toy v patya ni e Svetlina. }

      \line { " " }
      \line { 2. Barzo da poletim, }
      \line {   "   " moshtno da vaztrabim, }
      \line {   "   " Radost da vazvestim,  }
      \line {   "   " vyara da sazhivim! }
      \line {  "   " Shte ogrey pak sveta }
      \line {   "   " v parvata krasota, }
      \line {   "   " Svoboda, Mir i red  }
      \line {   "   " shte vladeyat vred. }
      \line { " " }
      \line { "   " \italic {Refrain ...} }


    }

  } % markup

  \pageBreak

  % include foreign translation(s) of the song
  \include "lyrics_de/042_vreme_e_da_varvim_lyrics_de.ly"

} % bookpart
