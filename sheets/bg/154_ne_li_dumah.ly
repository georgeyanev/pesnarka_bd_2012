\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref154
  \tocItem \markup "Не ли думах"
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
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 9)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }
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
      Не ли ду
      -- мах, ми -- ла ма -- мо, __ не ли __ каз -- вах да
      не __ се -- ди на -- ша Дон -- ка край ог -- ни --
      ще, вкъ -- щи са -- мо да се гу -- ши, а да
      и -- де, ма -- мо, ве -- че на "шко-" -- ло -- то,
      да за -- поч -- не да се у -- чи. На -- ша __ Дон
      -- ка, ми -- ла ма -- мо, е ро -- де -- на мо --
      ма ум -- на, да -- ро -- ви -- та, та е вре --
      ме от шко -- ло -- то за жи -- во -- та не --
      що до -- бро да на -- у -- чи.
    }

    \header {
      title = \titleFunc "Не ли думах" "Ne li dumah"
    }

    \midi{}

  } % score

 \markup \fontsize #+2.5 {
   \hspace #12
    \override #'(baseline-skip . 1.8)
      
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
          \line {   "   "}

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
    } % markup


} % bookpart
