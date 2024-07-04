\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref042
  \tocItem \markup "Време е да вървим"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key f \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff
      \partial 4

      f'8 a'8 | c''4 c''8. d''16 |  c''4 f'8 g'8 | a'4 a'8. a'16 | a'4 g'8 a'8  \break

      bes'4 bes'8. bes'16 | bes'4 a'8 bes'8 | d''4 c''8. b'16 | c''2 (| c''4) a'8 bes'8 | \break

      c''4 c''8. d''16 | c''4 f'8 g'8 | a'4 a'8. a'16 | g'4 c''8 c''8 | \time 3/4 b'4 c''8 d''8 e''4| \break


      \time 2/4 e''8 d''8 c''8 b'8 | c''2 (| c''8) r8 a'8. bes'?16 | \repeat volta 2 {
        c''2 (| c''8) c''8 d''8 bes'8  |\break

        g'2 (| g'4 ) g'8. a'16| bes'2 ( |  bes'8 ) bes'8 c''8 g'8|   a'2 ( | \break

        a'4 ) a'8. bes'16| c''2 ( | c''8 ) c''8 f''8 e''8 | d''2 (|d''4 ) e''4 \break

        f''8 c''8 d''8 bes'8 | a'4 g'4 |
      } \alternative { { f'2 ( | f'8 ) r8 a'8. bes'16 | } { f'2 (| f' 8 ) r8 \bar "|." \break } }

    }

    \addlyrics {
      "1. Вре-" -- ме е да вър -- вим, зло -- то да по -- бе -- дим, ми -- ра
      да въд -- во -- рим, Хри -- ста да въз -- ца -- рим! __   Прав -- да
      ще въ -- ве -- дем, "сво-" -- бо -- да ще да -- дем и през всич -- ки -- те
      дни вер -- ни ще сме ний. __  Да ца -- ру -- ва Лю -- бов -- та! __
      Да ца -- ру -- ва бла -- гост -- та! __
      Бог е Ца -- рят на све -- та, __  Той в~пъ -- тя ни е свет -- ли  -- на. __ Да ца -- на. __
    }

    \header {
      title = \titleFunc #'ref_desc_1 "Време е да вървим" "Vreme e da vărvim"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \fontsize #bgCoupletFontSize {
    \hspace #20
    \override #`(baseline-skip . ,bgCoupletBaselineSkip)
    \column {

      \line { 2. Бързо да полетим, }
      \line {   "   " мощно да възтръбим, }
      \line {   "   " радост да възвестим,  }
      \line {   "   " вяра да съживим! }
      \line {  "   " Ще огрей пак света }
      \line {   "   " в първата красота, }
      \line {   "   " свобода, мир и ред  }
      \line {   "   " ще владеят вред. }
      \line { "   " }
      \line { "   " \italic {Припев ... } }
    }

  } % markup





} % bookpart
