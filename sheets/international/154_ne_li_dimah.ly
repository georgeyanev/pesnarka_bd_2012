\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref154
  \tocItem \markup "Не ли думах – Ne li dumah"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

      a''8 a''8 a''8 a''8 | % 2
      g''8 f''8 f''8 f''16 [ ( g''16 ) ] | % 3
      a''4 a''8. [( g''16 )] | % 4
      g''2 | % 5
      c''2 \break | % 6
      g''4 g''8. [( f''16 )] | % 7
      a''8 f''8 f''8 e''8 | % 8
      e''8 c''8 c''16 d''16 e''16 e''16 \break | % 9
      \time 3/4  g''8 f''8 f''8 e''8 e''8 c''8 |
      \time 2/4  d''4. e''8 | % 11
      f''4 g''4 | % 12
      a''8 f''8 f''8 e''8 \break | % 13
      e''8 c''8 c''16 d''16 e''16 e''16 | % 14
      \time 3/4  g''8 f''8 f''8 e''8 e''8 c''8 | % 15
      \time 2/4  d''4 d''4 \bar "||"
      \break | % 16
      c'4 d'8 [( e'8 )] | % 17
      g'8 f'8 f'8\prall e'8 | % 18
      e'8 c'8 c'16 d'16 e'16 e'16 \break | % 19
      \time 3/4  g'8 f'8 f'8 e'8 e'8 c'8 |
      \time 2/4  d'4. e'8 | % 21
      f'4 g'4 | % 22
      a'8 f'8 f'8\prall e'8 \break | % 23
      e'8 c'8 c'16 d'16 e'16 e'16 | % 24
      \time 3/4  g'8 f'8 f'8 e'8 e'8 c'8 | % 25
      \time 2/4  d'4 d'4 \bar "|."
    }

    \addlyrics {
      \set stanza = "1." Не ли ду
      -- мах, ми -- ла ма -- мо, __ не ли __ каз -- вах да
      не __ се -- ди на -- ша Дон -- ка край ог -- ни --
      ще, в~къ -- щи са -- мо да се гу -- ши, а да
      и -- де, ма -- мо, ве -- че на шко -- ло -- то,
      да за -- поч -- не да се у -- чи. На -- ша __ Дон
      -- ка, ми -- ла ма -- мо, е ро -- де -- на мо --
      ма ум -- на, да -- ро -- ви -- та, та е вре --
      ме от шко -- ло -- то за жи -- во -- та не --
      що до -- бро да на -- у -- чи.
    }

    \addlyrics {
      \set stanza = "1." Ne li du
      -- mah, mi -- la ma -- mo, __ ne li __ kaz -- vah da
      ne __ se -- di na -- ša Don -- ka kraj og -- ni --
      šte, v~kă -- šti sa -- mo da se gu -- ši, a da
      i -- de, ma -- mo, ve -- če na ško -- lo -- to,
      da za -- poč -- ne da se u -- či. Na -- ša __ Don
      -- ka, mi -- la ma -- mo, e ro -- de -- na mo --
      ma um -- na, da -- ro -- vi -- ta, ta e vre --
      me ot ško -- lo -- to za ži -- vo -- ta ne --
      što do -- bro da na -- u -- či.
    }

    \header {
      title = \titleFunc "Не ли думах" "Ne li dumah"
    }

    \midi{}

  } % score

  \markup \empty-two


  \markup \abs-fontsize #10 {

    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {


      \line {   "   " 2. Да не ходи вечер, мамо, }

      \line {   "        " на чешмата, на момците пълни }

      \line {   "        " стомни да поднася, росни китки да }

      \line {   "        "  им обещава, а на болни вечер }

      \line {   "        " из селото нека тя вода разнася.}

      \line {   "        " Наша Донка, мила мамо, по душа }

      \line {   "        " е блага, кротка, милостива,}

      \line {   "        " но сърце си трябва да научи, }

      \line {   "        " мамо, момците да не посмива.}
    }

    \hspace #-2
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines

    \column {

      \line {   "   " 2. Da ne hodi večer, mamo,}

      \line {   "        "  na češmata, na momcite pălni  }

      \line {   "        "stomni da podnasja, rosni kitki da }

      \line {   "        " im obeštava, a na bolni večer }

      \line {   "        " iz seloto neka tja voda raznasja.}

      \line {   "        " Naša Donka, mila mamo, po duša }

      \line {   "        " e blaga, krotka, milostiva,}

      \line {   "        " no sărce si trjabva da nauči,}

      \line {   "        "  mamo, momcite da ne posmiva.}

    } %column
  } % markup



  \markup \abs-fontsize #10 {

    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines
    \column {


      \line {   "   " 3. Сутрин рано на чешмата да отива,}

      \line {   "        " в бели менци, мамо, вода да налива}

      \line {   "        " бодра, весела, засмяна,}

      \line {   "        " с чиста, бяла риза, с хубава }

      \line {   "        " премяна. Та за пример тя да стане.}

      \line {   "        " Кой я види как работи из селото,}

      \line {   "        " как на всекиму помага,}

      \line {   "        " да обикне и да прояви доброто}

      \line {   "        " като тая душа блага.}
    }

    \hspace #-4
    \override #`(baseline-skip . ,bgCoupletBaselineSkip) % affects space between column lines

    \column {

      \line {   "   " 3. Sutrin rano na češmata da otiva,}

      \line {   "        " v beli menci, mamo, voda da naliva}

      \line {   "        " bodra, vesela, zasmjana,}

      \line {   "        " s čista, bjala riza, s hubava }

      \line {   "        " premjana. Ta za primer tja da stane.}

      \line {   "        " Koj ja vidi kak raboti iz seloto,}

      \line {   "        " kak na vsekimu pomaga,}

      \line {   "        " da obikne i da projavi dobroto}

      \line {   "        " kato taja duša blaga.}
    } %column
  } % markup

  \markup \empty-two




  % include foreign translation(s) of the song
  \include "../../lyrics/de/154_ne_li_dumah_lyrics_de.ly"

} % bookpart
