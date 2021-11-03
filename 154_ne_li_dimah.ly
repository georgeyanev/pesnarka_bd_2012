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
      % ragged-last = ##t % do not spread last line to fill the whole space
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
      \key f \major
      \time 2/4
      \tempo \markup {
        % make tempo note smaller
        \concat {
          "Moderato " \normal-text { "(" }
          \teeny \general-align #Y #DOWN \note #"4" #0.8
          \normal-text { " = 88)" }
        }
      }
      \autoBeamOff

      a''8 a''8 a''8 a''8 | % 2
      g''8 f''8 f''8 f''16 [ ( g''16 ) ] | % 3
      a''4 a''8. [( g''16 )] | % 4
      g''2 | % 5
      c''2 \break | % 6
      g''4 g''8. ( f''16 ) | % 7
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
      c'4 d'8 ( e'8 ) | % 17
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
      ще, в_къ -- щи са -- мо да се гу -- ши, а да
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
      shte, v_ka -- shti sa -- mo da se gu -- shi, a da
      i -- de, ma -- mo, ve -- che na shko -- lo -- to,
      da za -- poch -- ne da se u -- chi. Na -- sha Don
      -- ka, mi -- la ma -- mo, e ro -- de -- na mo --
      ma um -- na, da -- ro -- vi -- ta, ta e vre --
      me ot shko -- lo -- to za Zhi -- vo -- ta ne --
      shto do -- bro da na -- u -- chi.}

      \header {
        title = \markup \column \normal-text \fontsize #2.5 {
          \center-align
          \line {Не ли думах}
          \vspace #-0.6
          \center-align
          \line \fontsize #-3 { Ne li dumah}
          \vspace #-0.8
          \center-align
          \line \fontsize #-3 { " " }
        }
      }

      \midi{}

    } % score

    \pageBreak

    \markup \fontsize #+2.5 {
      \hspace #-7
      \override #'(baseline-skip . 2.4) % affects space between column lines
      \column {


        \line {   "   " Не ли думах, мила мамо, не ли казвах,}

        \line {   "   " да не седи наша Донка край огнище,}

        \line {   "   " вкъщи само да се гуши,}

        \line {   "   " а да иде, мамо, вече на школото,}

        \line {   "   " да започне да се учи.}

        \line {   "   " Наша Донка, мила мамо, е родена}

        \line {   "   " мома умна, даровита,}

        \line {   "   " та е време от школото за живота}

        \line {   "   " нещо добро да научи.}

        \line {   "   " Да не ходи вечер, мамо, на чешмата,}

        \line {   "   " на момците пълни стомни да поднася,}

        \line {   "   " росни китки да им обещава,}

        \line {   "   " а на болни вечер из селото}

        \line {   "   " нека тя вода разнася.}

        \line {   "   " Наша Донка, мила мамо, по душа е}

        \line {   "   " блага, кротка, милостива,}

        \line {   "   " но сърце си трябва да научи, мамо,}

        \line {   "   " момците да не посмива.}

        \line {   "   " Сутрин рано на чешмата да отива,}

        \line {   "   " в бели менци, мамо, вода да налива}

        \line {   "   " бодра, весела, засмяна,}

        \line {   "   " с чиста, бяла риза, с хубава премяна.}

        \line {   "   " Та за пример тя да стане.}

        \line {   "   " Кой я види как работи из селото,}

        \line {   "   " как на всекиму помага,}

        \line {   "   " да обикне и да прояви доброто}

        \line {   "   " като тая душа блага.}
      }

      \hspace #5
      \override #'(baseline-skip . 2.4)
      \column {
        \line {   "   " Ne li dumah, mila mamo, ne li kazvah,}

        \line {   "   " da ne sedi nasha Donka kray ognishte,}

        \line {   "   " vkashti samo da se gushi,}

        \line {   "   " a da ide, mamo, veche na shkoloto,}

        \line {   "   " da zapochne da se uchi.}

        \line {   "   " Nasha Donka, mila mamo, e rodena}

        \line {   "   " moma umna, darovita,}

        \line {   "   " ta e vreme ot shkoloto za zhivota}

        \line {   "   " neshto dobro da nauchi.}

        \line {   "   " Da ne hodi vecher, mamo, na cheshmata,}

        \line {   "   " na momtsite palni stomni da podnasya,}

        \line {   "   " rosni kitki da im obeshtava,}

        \line {   "   " a na bolni vecher iz seloto}

        \line {   "   " neka tya voda raznasya.}

        \line {   "   " Nasha Donka, mila mamo, po dusha e}

        \line {   "   " blaga, krotka, milostiva,}

        \line {   "   " no sartse si tryabva da nauchi, mamo,}

        \line {   "   " momtsite da ne posmiva.}

        \line {   "   " Sutrin rano na cheshmata da otiva,}

        \line {   "   " v beli mentsi, mamo, voda da naliva}

        \line {   "   " bodra, vesela, zasmyana,}

        \line {   "   " s chista, byala riza, s hubava premyana.}

        \line {   "   " Ta za primer tya da stane.}

        \line {   "   " Koy ya vidi kak raboti iz seloto,}

        \line {   "   " kak na vsekimu pomaga,}

        \line {   "   " da obikne i da proyavi dobroto}

        \line {   "   " kato taya dusha blaga.}
      } %column
    } % markup

    \pageBreak

    % include foreign translation(s) of the song
    \include "lyrics_de/154_ne_li_dumah.ly"

  } % bookpart
