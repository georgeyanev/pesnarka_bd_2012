\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref042
  \tocItem \markup "Време е да вървим – Vreme e da vărvim"
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


      e''4 e''8 d''8 | c''8 b'8 c''4 (| c''4) a'8. bes'?16 | \repeat volta 2 {
        c''2 (| c''8) c''8 d''8 bes'8  |\break

        g'2 (| g'4 ) g'8. a'16| bes'2 ( |  bes'8 ) bes'8 c''8 g'8|   a'2 ( | \break

        a'4 ) a'8. bes'16| c''2 ( | c''8 ) c''8 f''8 e''8 | d''2 (|d''4 ) e''4 \break

        f''8 c''8 d''8 bes'8 | a'4 g'4 |
      } \alternative { { f'2 ( | f'8 ) r8 a'8. bes'16 | } { f'2 (| f' 8 ) r8 \bar "|." \break } }

    }

    \addlyrics {
      Вре -- ме е да вър -- вим, зло -- то да по -- бе -- дим, Ми -- ра
      да въ -- дво -- рим, Хри -- ста да въз -- ца -- рим! __   Прав -- да
      ще въ -- ве -- дем, Сво -- бо -- да ще да -- дем и през всич -- ки -- те
      дни вер -- ни ще сме ний. __  Да ца -- ру -- ва Лю -- бов -- та! __
      Да ца -- ру -- ва Бла -- гост -- та! __
      Бог е ца -- рят на све -- та, __  Той в~пъ -- тя ни е Свет -- ли  -- на. __ Да ца -- на. __ 
    }
    \addlyrics {
      Vre -- me e da văr -- vim, zlo -- to da po -- be -- dim, Mi -- ra
      da vă -- dvo -- rim, Hri -- sta da văz -- ca -- rim! __   Prav -- da
      šte vă -- ve -- dem, Svo -- bo -- da šte da -- dem i prez vsič -- ki -- te
      dni ver -- ni šte sme nij. __  Da ca -- ru -- va Lju -- bov -- ta! __ 
      Da ca -- ru -- va Bla -- gost -- ta! __ 
      Bog e ca -- rjat na sve -- ta, __  Toj v~pă -- tja ni e Svet -- li  -- na. __ Da ca -- na. __ 
    }

    \header {
      title = \titleFunc "Време е да вървим" "Vreme e da vărvim"
    }

    \midi{}

  } % score

  \pageBreak

  \markup \fontsize #bgCoupletFontSize {
    \hspace #8
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Бързо да полетим, }
      \line {   "   " мощно да възтръбим, }
      \line {   "   " Радост да възвестим,  }
      \line {   "   " Вяра да съживим! }
      \line {  "   " Ще огрей пак света }
      \line {   "   " в първата красота, }
      \line {   "   " Свобода, Мир и ред  }
      \line {   "   " ще владеят вред. }
      \line { "   " }
      \line { "   " \italic {Припев ... } }
    }

    \hspace #5
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Bărzo da poletim, }
      \line {   "   " moštno da văztrăbim, }
      \line {   "   " Radost da văzvestim,  }
      \line {   "   " Vjara da săživim! }
      \line {  "   " Šte ogrej pak sveta }
      \line {   "   " v părvata krasota, }
      \line {   "   " Svoboda, Mir i red  }
      \line {   "   " šte vladejat vred. }
      \line { "   " }
      \line { "   " \italic {Pripev ... } }
    }
    %column
  } % markup

  \markup \empty-two
  % include foreign translation(s) of the song
  \include "../../lyrics/de/042_vreme_e_da_varvim_lyrics_de.ly"

} % bookpart
