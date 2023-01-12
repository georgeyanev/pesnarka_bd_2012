\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key f \major
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
      Не ли ду
      -- мах, ми -- ла ма -- мо, не ли каз -- вах да
      не се -- ди на -- ша Дон -- ка край ог -- ни --
      ще, в~къ -- щи са -- мо да се гу -- ши, а да
      и -- де, ма -- мо, ве -- че на шко -- ло -- то,
      да за -- поч -- не да се у -- чи. На -- ша Дон
      -- ка, ми -- ла ма -- мо, е ро -- де -- на мо --
      ма ум -- на, да -- ро -- ви -- та, та е вре --
      ме от шко -- ло -- то за Жи -- во -- та не --
      що до -- бро да на -- у -- чи.
    }
    \addlyrics {
      Ne li du
      -- mah, mi -- la ma -- mo, ne li kaz -- vah da
      ne se -- di na -- sha Don -- ka kray og -- ni --
      shte, v~ka -- shti sa -- mo da se gu -- shi, a da
      i -- de, ma -- mo, ve -- che na shko -- lo -- to,
      da za -- poch -- ne da se u -- chi. Na -- sha Don
      -- ka, mi -- la ma -- mo, e ro -- de -- na mo --
      ma um -- na, da -- ro -- vi -- ta, ta e vre --
      me ot shko -- lo -- to za Zhi -- vo -- ta ne --
      shto do -- bro da na -- u -- chi.}

      \header {
        title = \titleFunc "Не ли думах" "Ne li dumah"
      }

      \midi{}

    } % score

    \pageBreak

    \markup \fontsize #bgCoupletFontSize {
      \hspace #-6
      \override #`(baseline-skip . ,bgCoupletBaselineSkip)
      \column {

        \line {   "   " 2. Да не ходи вечер, мамо, на чешмата,}

        \line {   "        " на момците пълни стомни да поднася,}

        \line {   "        " росни китки да им обещава,}

        \line {   "        " а на болни вечер из селото} 

        \line {   "        " нека тя вода разнася.}

        \line {   "        " Наша Донка, мила мамо, по душа е}

        \line {   "        " блага, кротка, милостива,}

        \line {   "        " но сърце си трябва да научи, мамо,}

        \line {   "        " момците да не посмива.}

        \line {   "        " }

        \line {   "   " 3. Сутрин рано на чешмата да отива,}

        \line {   "        " в бели менци, мамо, вода да налива}

        \line {   "        " бодра, весела, засмяна,}

        \line {   "        " с чиста, бяла риза, с хубава премяна.}

        \line {   "        " Та за пример тя да стане.}

        \line {   "        " Кой я види как работи из селото,}

        \line {   "        " как на всекиму помага,}

        \line {   "        " да обикне и да прояви доброто}

        \line {   "        " като тая душа блага.}
      }

      \hspace #-1
      \override #`(baseline-skip . ,bgCoupletBaselineSkip)
      \column {
        \line {   "   " 2. Da ne hodi vecher, mamo, na cheshmata,}

        \line {   "        " na momtsite palni stomni da podnasya,}

        \line {   "        " rosni kitki da im obeshtava,}

        \line {   "        " a na bolni vecher iz seloto}

        \line {   "        " neka tya voda raznasya.}

        \line {   "        " Nasha Donka, mila mamo, po dusha e}

        \line {   "        " blaga, krotka, milostiva,}

        \line {   "        " no sartse si tryabva da nauchi, mamo,}

        \line {   "        " momtsite da ne posmiva.}

        \line {   "        " }

        \line {   "   " 3. Sutrin rano na cheshmata da otiva,}

        \line {   "        " v beli mentsi, mamo, voda da naliva}

        \line {   "        " bodra, vesela, zasmyana,}

        \line {   "        " s chista, byala riza, s hubava premyana.}

        \line {   "        " Ta za primer tya da stane.}

        \line {   "        " Koy ya vidi kak raboti iz seloto,}

        \line {   "        " kak na vsekimu pomaga,}

        \line {   "        " da obikne i da proyavi dobroto}

        \line {   "        " kato taya dusha blaga.}
      } %column
    } % markup

   \markup \empty-two
   
   
   

    % include foreign translation(s) of the song
    \include "lyrics_de/154_ne_li_dumah_lyrics_de.ly"

  } % bookpart
