\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref021
  \tocItem \markup "Ще се развеселя"
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t


    % put page numbers on the bottom
    oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
    }
    %% evenHeaderMarkup would inherit the value of
    %% oddHeaderMarkup if it were not defined here
    evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \abs-fontsize #7 { \number \fromproperty #'page:page-number-string }
      \unless \on-first-page-of-part \fromproperty #'header:instrument
      ""
    }

    oddFooterMarkup = \markup ""

    evenFooterMarkup = ""
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    top-margin = 1\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
    top-markup-spacing.basic-distance = 0\mm % margin between page number and system for the first page
    top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 13)
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
      \tempoFunc "Largo" 4 "54"
      \autoBeamOff

      a'4 d''4 | a'4 d''8. e''16 | \time 3/4 d''2 a'4 | \time 2/4 bes'4. ( d''8 ) | a'2 | g'4. ( a'8 ) | \break

      f'4 e'4 | d'4 cis'4 | d'2 | \repeat volta 2 {
        a'4 d''8. e''16 | f''2 | e''4 d''4  \break

        cis''4 d''8. bes'16 | a'2 | g'4. ( a'8 ) | f'2 | e'4 cis'4 |
      } \alternative { {d'2 } {\time 3/4 d'2 a'4} } \break

      d''4 c''4 bes'8 a'8 | g'8([a'8]) f'4^- e'4 | \time 2/4 d'8([e'8]) f'4 | e'8 d'8 cis'8 e'8 | \break

      \time 3/4 d'2 d''8 ([e''8]) | f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8([bes'8]) | \time 3/4 a'2 d''8 ([e''8]) | \break

      f''4 e''4 d''4 | \time 4/4 c''4 bes'4 a'8 g'8 a'8 ([bes'8]) | \time 2/4 a'2 | c''4 b'8 c'' | \break

      d''4 f'4 | bes'4 a'4 | a'4 gis'4 | a'2 | d''4 cis''8 d''8 | e''4 a'4 | bes'4 a'4 |

      a'4. ( d''8 ) | d''2 | \tempo "rit." d''4 e''4 | f''4 e''4 | d''2 | d''2 | \tempo "a tempo" d''4 c''8 bes'8 | a'4 g'4 | \break

      f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | d''4 c''8\noBeam bes'8 | \break

      a'4 g'4 | f'4 e'4 | d'4 a4 | d'4 e'4 | f'4 e'4 | d'2 | d'2 | \bar "|."
    }

    \addlyrics {
      Ще се раз -- ве -- се -- ля пре -- мно -- го за --
      ра -- ди Гос -- по -- да, ду -- ша -- та ми ще се
      за -- ра -- ду -- ва в~Бо -- га мо -- е -- го, го: За --
      що -- то ме о -- бле -- че в~o -- деж -- ди на спа -- се -- ни --
      е, за -- гър -- на ме в~ман -- ти -- я на прав -- да, за --
      гър -- на ме в~ман -- ти -- я на прав -- да ка -- то же --
      них, у -- кра -- сен със ве -- нец, ка -- то не -- вес -- та, на -- ки --
      те -- на със ут -- ва -- ри -- те си, ка -- то не -- вес -- та,
      на -- ки -- те -- на със ут -- ва -- ри -- те си, ка -- то де --
      ви -- ца, пре -- из -- бра -- на от дру -- гар -- ки -- те си.
    }

    \header {
      title = \titleFunc #'ref_desc_23 "Ще се развеселя" "Šte se razveselja"
    }

    \midi{}

  } % score


} % bookpart
