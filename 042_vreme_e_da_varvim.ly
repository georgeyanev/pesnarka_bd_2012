\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
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
      title = \titleFunc "Време е да вървим" "Vreme e da varvim"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #1
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
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

      \line { "   " \italic {Припев ... } }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
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

      \line { "   " \italic {Refrain ...} }
    } %column
  } % markup

  \markup \empty-two
  % include foreign translation(s) of the song
  \include "lyrics_de/042_vreme_e_da_varvim_lyrics_de.ly"

} % bookpart
